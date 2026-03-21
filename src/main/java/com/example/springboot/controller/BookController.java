package com.example.springboot.controller;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.springboot.common.Result;
import com.example.springboot.config.interceptor.AuthAccess;
import com.example.springboot.entity.Book;
import com.example.springboot.entity.Collect;
import com.example.springboot.service.IBookService;
import com.example.springboot.service.ICollectService;
import com.example.springboot.utils.TokenUtils;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.*;
import java.util.stream.Collectors;

/**
 * <p>
 * 前端控制器
 * </p>
 */
@RestController
@RequestMapping("/book")
public class BookController {

    @Resource
    private IBookService bookService;

    @Resource
    private ICollectService collectService;

    @PostMapping
    public Result save(@RequestBody Book book) {
        return Result.success(bookService.saveOrUpdate(book));
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        return Result.success(bookService.removeById(id));
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        return Result.success(bookService.removeByIds(ids));
    }

    @GetMapping
    public Result findAll() {
        return Result.success(bookService.list());
    }

    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
        return Result.success(bookService.getById(id));
    }

    @GetMapping("/front/page")
    public Result FrontPage(@RequestParam(defaultValue = "") String keyword,
                            @RequestParam Integer typeId,
                            @RequestParam Integer pageNum,
                            @RequestParam Integer pageSize) {
        LambdaQueryWrapper<Book> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.like(StrUtil.isNotEmpty(keyword),Book::getName,keyword);
        queryWrapper.eq(typeId!=0,Book::getTypeId,typeId);
        queryWrapper.eq(Book::getStatus,true);
        return Result.success(bookService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

    @GetMapping("/collect/page")
    public Result findCollectPage(@RequestParam(defaultValue = "") String keyword,
                                  @RequestParam Integer pageNum,
                                  @RequestParam Integer pageSize) {

        LambdaQueryWrapper<Collect> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Collect::getUserId, TokenUtils.getCurrentUser().getId());
        List<Integer> ids = collectService.list(wrapper).stream().map(Collect::getItemId).collect(Collectors.toList());
        if (CollectionUtil.isEmpty(ids)) return Result.success(collectService.page(new Page<>(),wrapper));

        LambdaQueryWrapper<Book> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByDesc(Book::getId);

        if (StrUtil.isNotBlank(keyword)) {
            queryWrapper.like(Book::getName, keyword);
        }

        queryWrapper.in(Book::getId,ids);

        return Result.success(bookService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }


    @GetMapping("/page")
    public Result findPage(@RequestParam Integer pageNum,
                           @RequestParam Integer pageSize,
                           @RequestParam(defaultValue = "") String keyword) {

        LambdaQueryWrapper<Book> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByDesc(Book::getId);


        if (StrUtil.isNotBlank(keyword)) {
            queryWrapper.like(Book::getName, keyword);
        }

        return Result.success(bookService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

}

