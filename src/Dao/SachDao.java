package Dao;

import java.util.ArrayList;

import Bean.SachBean;

public class SachDao {
	public ArrayList<SachBean> getSach() {
		ArrayList<SachBean> ds = new ArrayList<SachBean>();
		ds.add(new SachBean("S001","Toi di code dao","Ai do","book-cover-resized.png",10000));
		ds.add(new SachBean("S002","De tu ma-ca-rong","Darren Shan","de-tu-ma-ca-rong.png",10000));
		ds.add(new SachBean("S003","Ganh xiec quai di","Darren Shan","ganh-xiec-quai-di-de-tu-ma-ca-rong.poster.png",10000));
		ds.add(new SachBean("S004","Toi di code dao","ABCXYZ","harry-potter.png",10000));
		ds.add(new SachBean("S005","Toi di code dao","Ai do","book-cover-resized.png",10000));
		return ds;
	}
}
