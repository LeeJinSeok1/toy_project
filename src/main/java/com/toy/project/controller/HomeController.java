package com.toy.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

//    기본주소 요청처리
    @GetMapping("/")
    public String home(){
        return "/index";
    }

}
/*
* product_name
* product_category_01
* product_category_02
* product_category_03
* product_price
* product_point_01
* product_point_02
* product_point_03
* product_basic_content
* product_thumbnail_01
* product_thumbnail_02
* product_thumbnail_03
* product_thumbnail_04
* product_thumbnail_05
* product_content
* product_field_01
* product_field_02
* product_field_03
* product_field_04
* product_field_05
* */