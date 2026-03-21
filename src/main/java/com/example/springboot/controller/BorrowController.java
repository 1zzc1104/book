package com.example.springboot.controller;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.springboot.common.Result;
import com.example.springboot.entity.Account;
import com.example.springboot.entity.Book;
import com.example.springboot.entity.Borrow;
import com.example.springboot.service.IBookService;
import com.example.springboot.service.IBorrowService;
import com.example.springboot.utils.TokenUtils;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

/**
 * <p>
 * 前端控制器
 * </p>
 */
@RestController
@RequestMapping("/borrow")
public class BorrowController {

    @Resource
    private IBorrowService borrowService;
    @Resource
    private IBookService bookService;

    @GetMapping("/count")
    public Result count(){
        LambdaQueryWrapper<Borrow> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Borrow::getUserId,TokenUtils.getCurrentUser().getId());
        return Result.success(borrowService.list(wrapper));
    }

    @PostMapping
    public Result save(@RequestBody Borrow borrow) {
        LocalDate endDate = LocalDate.parse(borrow.getEndDate());
        LocalDate today = LocalDate.now();

        if (endDate.isBefore(today)) {
            // 预计归还时间早于当前,借阅失败
            return Result.error("605","预计归还时间早于当前,借阅失败");
        }

        Book book = bookService.getById(borrow.getBookId());
        if (book.getNum()<=0){
            return Result.error("605","图书库存不足，请联系管理员");
        }
        book.setNum(book.getNum()-1);
        bookService.updateById(book);

        borrow.setDate(DateUtil.today());
        borrow.setStatus("借阅中");
        borrow.setUserId(TokenUtils.getCurrentUser().getId());

        return Result.success(borrowService.saveOrUpdate(borrow));
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        return Result.success(borrowService.removeById(id));
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        return Result.success(borrowService.removeByIds(ids));
    }

    @GetMapping
    public Result findAll() {
        return Result.success(borrowService.list());
    }

    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
        return Result.success(borrowService.getById(id));
    }

    @GetMapping("/back/{id}")
    public Result back(@PathVariable Integer id) {

        Borrow borrow = borrowService.getById(id);
        borrow.setStatus("已归还");
        borrow.setBackTime(DateUtil.now());
        borrowService.updateById(borrow);

        Book book = bookService.getById(borrow.getBookId());
        book.setNum(book.getNum()+1);
        bookService.updateById(book);

        return Result.success();
    }

    @GetMapping("/page")
    public Result findPage(@RequestParam Integer pageNum,
                           @RequestParam Integer pageSize,
                           @RequestParam(defaultValue = "") String keyword) {

        LambdaQueryWrapper<Book> wrapper = new LambdaQueryWrapper<>();
        wrapper.like(Book::getName,keyword);
        List<Integer> ids = bookService.list(wrapper).stream().map(Book::getId).collect(Collectors.toList());
        if (CollectionUtil.isEmpty(ids)) return Result.success(bookService.page(new Page<>(),wrapper));

        LambdaQueryWrapper<Borrow> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByDesc(Borrow::getId);
        queryWrapper.in(Borrow::getBookId,ids);

        Account account = TokenUtils.getCurrentUser();
        if (!StrUtil.equals(account.getRole(),"ROLE_ADMIN")){
            queryWrapper.eq(Borrow::getUserId,account.getId());
        }
        return Result.success(borrowService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

}

