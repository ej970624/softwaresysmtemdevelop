package com.dongduk.myfancy.dao.mybatis.mapper;

import java.util.List;


import com.dongduk.myfancy.domain.Product;

public interface StockMapper {

	List<Product> getProductStock(int store_id); 
	// 지점 내 모든 상품 재고 리스트
}