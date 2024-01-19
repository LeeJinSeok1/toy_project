package com.toy.project.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class ProductDTO {
    private Long id;
    private String product_category_01;
    private String product_category_02;
    private String product_category_03;
    private Integer product_price;
    private Integer product_sale_price;
    private String product_point_01;
    private String product_point_02;
    private String product_point_03;
    private String product_basic_content;
    private MultipartFile product_thumbnail_01;
    private MultipartFile product_thumbnail_02;
    private MultipartFile product_thumbnail_03;
    private MultipartFile product_thumbnail_04;
    private MultipartFile product_thumbnail_05;
    private String product_thumbnail_original_01;
    private String product_thumbnail_original_02;
    private String product_thumbnail_original_03;
    private String product_thumbnail_original_04;
    private String product_thumbnail_original_05;
    private String product_thumbnail_server_01;
    private String product_thumbnail_server_02;
    private String product_thumbnail_server_03;
    private String product_thumbnail_server_04;
    private String product_thumbnail_server_05;
    private String product_field_01;
    private String product_field_02;
    private String product_field_03;
    private String product_field_04;
    private String product_field_05;
    private String product_content;
}
