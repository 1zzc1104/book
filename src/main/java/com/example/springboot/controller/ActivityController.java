package com.example.springboot.controller;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.springboot.common.Result;
import com.example.springboot.entity.Activity;
import com.example.springboot.entity.Borrow;
import com.example.springboot.service.IActivityService;
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
@RequestMapping("/activity")
public class ActivityController {

    @Resource
    private IActivityService activityService;

    @PostMapping
    public Result save(@RequestBody Activity activity) {
        return Result.success(activityService.saveOrUpdate(activity));
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Integer id) {
        return Result.success(activityService.removeById(id));
    }

    @PostMapping("/del/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        return Result.success(activityService.removeByIds(ids));
    }

    @GetMapping
    public Result findAll() {
        return Result.success(activityService.list());
    }

    @GetMapping("/{id}")
    public Result findOne(@PathVariable Integer id) {
        return Result.success(activityService.getById(id));
    }

    @GetMapping("/page")
    public Result findPage(@RequestParam Integer pageNum,
                           @RequestParam Integer pageSize,
                           @RequestParam(defaultValue = "") String keyword) {

        LambdaQueryWrapper<Activity> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByDesc(Activity::getId);

        if (StrUtil.isNotBlank(keyword)) {
            queryWrapper.like(Activity::getName, keyword);
        }

        return Result.success(activityService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

    @GetMapping("/front/page")
    public Result findFrontPage(@RequestParam(defaultValue = "") String keyword,
                               @RequestParam Integer pageNum,
                               @RequestParam Integer pageSize) {
        LambdaQueryWrapper<Activity> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByDesc(Activity::getId);

        if (StrUtil.isNotBlank(keyword)) {
            queryWrapper.like(Activity::getName, keyword);
        }
        queryWrapper.eq(Activity::getStatus,true);

        return Result.success(activityService.page(new Page<>(pageNum, pageSize), queryWrapper));
    }

}

