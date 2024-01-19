package com.toy.project.service;

import com.toy.project.dto.ProductDTO;
import com.toy.project.respository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ReflectionUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.UUID;

@Service
public class ProductService {
    @Autowired
    ProductRepository productRepository;
//    상품 등록 ajax
    public String product_save(ProductDTO productDTO) throws IOException {

// 파일 필드와 해당 속성 이름을 담을 배열들
        MultipartFile[] productFiles = {
                productDTO.getProduct_thumbnail_01(),
                productDTO.getProduct_thumbnail_02(),
                productDTO.getProduct_thumbnail_03(),
                productDTO.getProduct_thumbnail_04(),
                productDTO.getProduct_thumbnail_05()
        };

        String[] originalProperties = {
                "product_thumbnail_original_01",
                "product_thumbnail_original_02",
                "product_thumbnail_original_03",
                "product_thumbnail_original_04",
                "product_thumbnail_original_05"
        };

        String[] serverProperties = {
                "product_thumbnail_server_01",
                "product_thumbnail_server_02",
                "product_thumbnail_server_03",
                "product_thumbnail_server_04",
                "product_thumbnail_server_05"
        };

// 파일을 반복하면서 처리
        for (int i = 0; i < productFiles.length; i++) {
            MultipartFile productFile = productFiles[i];

            if (!productFile.isEmpty()) { // 파일이 선택되지 않았을 때는 처리하지 않음

                // 원본 파일명과 서버 파일명 생성
                String originalFilename = productFile.getOriginalFilename();
                String serverFilename = UUID.randomUUID().toString() + "-" + originalFilename;

                // 속성 이름 가져오기
                String originalPropertyName = originalProperties[i];
                String serverPropertyName = serverProperties[i];

                // DTO 객체의 속성값 설정
                Field originalField = ReflectionUtils.findField(ProductDTO.class, originalPropertyName);
                Field serverField = ReflectionUtils.findField(ProductDTO.class, serverPropertyName);

                if (originalField != null) {
                    originalField.setAccessible(true); // private 필드에 접근 가능하도록 설정
                    ReflectionUtils.setField(originalField, productDTO, originalFilename);
                } else {
                    throw new IllegalArgumentException("Original field '" + originalPropertyName + "' not found in ProductDTO");
                }

                if (serverField != null) {
                    serverField.setAccessible(true); // private 필드에 접근 가능하도록 설정
                    ReflectionUtils.setField(serverField, productDTO, serverFilename);
                } else {
                    throw new IllegalArgumentException("Server field '" + serverPropertyName + "' not found in ProductDTO");
                }

                // 저장 경로
                String savePath = "/Users/ijinseog/toy_project/src/main/webapp/upload/img/product/"+serverFilename;

                // 파일을 저장 경로로 복사
                try {
                    productFile.transferTo(new File(savePath));
                } catch (IOException e) {
                    e.printStackTrace();
                    return "img_save_fail";
                }
            }
        }

       String response =  productRepository.product_save(productDTO);

       if(response.equals("save_fail")){
           return "db_save_fail";
       }else{
           return "save_success";
       }

    }
}
