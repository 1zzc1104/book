package com.example.springboot.controller;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.springboot.common.Result;
import com.example.springboot.entity.Account;
import com.example.springboot.entity.Activity;
import com.example.springboot.entity.Entry;
import com.example.springboot.service.IActivityService;
import com.example.springboot.service.IEntryService;
import com.example.springboot.utils.TokenUtils;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 */
@RestController
@RequestMapping("/entry")
public class EntryController {

    @Resource
    private IEntryService entryService;

    @GetMapping("/count")
    public Result count(){
        LambdaQueryWrapper<Entry> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(Entry::getUserId, TokenUtils.getCurrentUser().getId());
        return Result.success(entryService.list(wrapper));
    }

    @PostMapping
    public Result save(@RequestBody Entry entry) {
        if (entry.getId() == null) {
            entry.setUserId(TokenUtils.getCurrentUser().getId());
            entry.setStatus("待打卡");
        }
        return Result.success(entryService.saveOrUpdate(entry));
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        return Result.success(entryService.removeById(id));
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        return Result.success(entryService.removeByIds(ids));
    }

    @GetMapping
    public Result findAll() {
        return Result.success(entryService.list());
    }

    @GetMapping("/join/{id}")
    public Result join(@PathVariable Integer id) {
        Entry entry = entryService.getById(id);
        entry.setStatus("已参加");
        entry.setTime(DateUtil.now());
        entryService.updateById(entry);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
        return Result.success(entryService.getById(id));
    }

    @GetMapping("/page")
    public Result findPage(@RequestParam Integer pageNum,
                           @RequestParam Integer pageSize,
                           @RequestParam(defaultValue = "") String keyword) {

        LambdaQueryWrapper<Entry> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByDesc(Entry::getId);

        if (StrUtil.isNotBlank(keyword)) {
            queryWrapper.like(Entry::getItemId, keyword);
        }

        Account account = TokenUtils.getCurrentUser();
        if (!StrUtil.equals(account.getRole(),"ROLE_ADMIN")){
            queryWrapper.eq(Entry::getUserId,account.getId());
        }

        return Result.success(entryService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

}

