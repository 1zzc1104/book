package com.example.springboot.controller;


import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import com.example.springboot.common.Result;
import com.example.springboot.entity.Book;
import com.example.springboot.entity.Borrow;
import com.example.springboot.entity.Type;
import com.example.springboot.service.IBookService;
import com.example.springboot.service.IBorrowService;
import com.example.springboot.service.ITypeService;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Objects;

@RestController
@RequestMapping("/echarts")
public class EchartsController {


    @Resource
    private IBookService bookService;
    @Resource
    private ITypeService typeService;
    @Resource
    private IBorrowService borrowService;


    @GetMapping("/count1")
    public Result count1(){

        List<Type> typeList = typeService.list();
        List<Book> bookList = bookService.list();

        JSONArray array = new JSONArray();
        for (Type type : typeList) {
            int num = 0;
            for (Book book : bookList) {
                if (Objects.equals(book.getTypeId(), type.getId())){
                    num++;
                }
            }
            JSONObject object = new JSONObject();
            object.set("name",type.getName());
            object.set("value",num);
            array.add(object);
        }
        return Result.success(array);
    }

    @GetMapping("/count2")
    public Result count2(){

        List<Borrow> borrowList = borrowService.list();
        List<Book> bookList = bookService.list();
        JSONArray array = new JSONArray();

        for (Book book : bookList) {
            int num = 0;
            for (Borrow borrow : borrowList) {
                if (Objects.equals(book.getId(), borrow.getBookId())){
                    num++;
                }
            }
            JSONObject object = new JSONObject();
            object.set("name",book.getName());
            object.set("value",num);
            array.add(object);
        }

        return Result.success(array);
    }


}
