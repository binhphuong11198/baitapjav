package Bo;

import java.util.ArrayList;

import Bean.SachBean;
import Dao.SachDao;

public class SachBo {
	ArrayList<SachBean> listsach = new ArrayList<SachBean>();
	SachDao sachdao = new SachDao();
	public ArrayList<SachBean> getSach() {
		listsach = sachdao.getSach();
		return listsach;
	}
}
