package Bo;

import java.util.ArrayList;

import Bean.GioHangBean;

public class GioHangBo {
	public ArrayList<GioHangBean> ds = new ArrayList<GioHangBean>();

	public void Them(String masach, String tensach, String tacgia, long gia, long soluong) {
		for (GioHangBean g : ds) {
			if (g.getMasach().equals(masach)) {
				if ((g.getSoluong() + soluong) >= 0) {
					g.setSoluong(g.getSoluong() + soluong);
					g.setThanhtien();
					return;
				} else {
					g.setSoluong(g.getSoluong());
					g.setThanhtien();
					return;
				}
			}
		}
		GioHangBean gh = new GioHangBean(masach, tensach, tacgia, gia, soluong);
		ds.add(gh);
	}

	public long Tong() {
		long tong = 0;
		for (GioHangBean gh : ds) {
			tong = tong + gh.getThanhtien();
		}
		return tong;
	}

	public void Xoa(String idxoa) {
		ds.removeIf(ds -> ds.getMasach().equals(idxoa));
	}

}
