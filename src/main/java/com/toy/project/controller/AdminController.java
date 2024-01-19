package com.toy.project.controller;

import com.toy.project.dto.ProductDTO;
import com.toy.project.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;

@Controller
public class AdminController {
    @Autowired
    ProductService productService;

//    관리자 페이지 요청처리
    @GetMapping("/admin_page")
    public String admin_page(){
        return "/admin/main";
    }
//    주문관리
    @GetMapping("/admin_order_page")
    public String admin_order_page(){
        return "/admin/order";
    }
//    상품관리
    @GetMapping("/admin_product_page")
    public String admin_product_page(){
        return "/admin/product/product";
    }
//    문의관리
    @GetMapping("/admin_inquiry_page")
    public String admin_inquiry_page(){
        return "/admin/inquiry";
    }
//    공지관리
    @GetMapping("/admin_notice_page")
    public String admin_notice_page(){
        return "/admin/notice";
    }
//    배너관리
    @GetMapping("/admin_banner_page")
    public String admin_banner_page(){
        return "/admin/banner";
    }

//    상품관리
//    상품등록 페이지 이동
    @GetMapping("/admin_product_save_page")
    public String admin_product_save_page(){
        return "/admin/product/product_save";
    }
//    상품 등록처리 ajax
    @PostMapping("/product_save")
    public @ResponseBody String product_save(@ModelAttribute ProductDTO productDTO) throws IOException {
        return productService.product_save(productDTO);
    }


}
