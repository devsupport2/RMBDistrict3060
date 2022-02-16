package com.ui.dao;

import java.util.List;

import com.ui.model.Advertisement;
import com.ui.model.Slider;

public interface AdvertisementDAO {

		public List<Advertisement> getAllAdvertisement();
		public List<Advertisement> getAllAdvertisementByPage(int pagesize, int startindex);
		public List<Advertisement> getActiveAdvertisement();
		public void addAdvertisement(Advertisement slider);
		public void editAdvertisement(Advertisement slider);
		public void deleteAdvertisement(int sliderid);
		public void setActiveOrInActiveSlider(Advertisement slider);

}
