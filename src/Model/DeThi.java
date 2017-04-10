package Model;

import java.util.Date;

public class DeThi {
	private String MaDeThi;
	private String MaHocPhan;
	private Date ThoiGianThi;
	private int DoKhoTrungBinh;
	public String getMaDeThi() {
		return MaDeThi;
	}
	public void setMaDeThi(String maDeThi) {
		MaDeThi = maDeThi;
	}
	public String getMaHocPhan() {
		return MaHocPhan;
	}
	public void setMaHocPhan(String maHocPhan) {
		MaHocPhan = maHocPhan;
	}
	public Date getThoiGianThi() {
		return ThoiGianThi;
	}
	public void setThoiGianThi(Date thoiGianThi) {
		ThoiGianThi = thoiGianThi;
	}
	public int getDoKhoTrungBinh() {
		return DoKhoTrungBinh;
	}
	public void setDoKhoTrungBinh(int doKhoTrungBinh) {
		DoKhoTrungBinh = doKhoTrungBinh;
	}
	
}
