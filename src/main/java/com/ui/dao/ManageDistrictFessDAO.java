package com.ui.dao;

import java.util.List;

import com.ui.model.ManageDistrictFess;

public interface ManageDistrictFessDAO {
	
	
	public String addManageDistrictFess( ManageDistrictFess m);
	 List<ManageDistrictFess> getAllManageDistrictFess();
	 ManageDistrictFess getManageAdminById(int fellowship_id);
	 String editManageDistrictFess( ManageDistrictFess m);
	  void deleteManageDistrictFess(int rmb_district_fees_id);

}
