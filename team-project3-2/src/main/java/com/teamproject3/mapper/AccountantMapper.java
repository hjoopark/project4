package com.teamproject3.mapper;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import com.teamproject3.vo.PurchaseVo;

public interface AccountantMapper {

	List<PurchaseVo> selectPurchaseByCenterNo(int centerNo);

	Integer selectPurmethodByCenterNo(int centerNo);
	
	List<HashMap<String,Object>> selectSalesStat(int centerNo);

	List<HashMap<String, Object>> selectSalesTotal(int centerNo);

	List<PurchaseVo> selectDateSearch(int centerNo, Date from, Date to);
}
