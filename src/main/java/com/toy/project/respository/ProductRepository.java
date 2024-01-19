package com.toy.project.respository;


import com.toy.project.dto.ProductDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductRepository {
    @Autowired
    private SqlSessionTemplate sql;

    public String product_save(ProductDTO productDTO) {
        int savedProduct = sql.insert("productSpace.productSave",productDTO);
        if(savedProduct == 0){
            return "save_fail";
        }else{
            return "save_success";
        }
    }
}
