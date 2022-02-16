package com.ui.dao;

import java.util.List;

import com.ui.model.Chapter;

public interface ChapterDAO {
	
	public String addChapter(Chapter m);
	 List<Chapter> getAllChapter();
	 Chapter getChapterById(int chapte_id);
	 String editChapter(Chapter m);
	  void deleteChapter(int chapte_id);
	  List<Chapter> getFellowshipByPage(int pagesize, int startindex);

}
