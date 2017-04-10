package Model;

import java.util.Date;

public class GiaoVien {

	private String MaGiaoVien;
	private String Password;
	private String TenGiaoVien;
	private String ThongTinThem;
	private Date NgaySinh;
	private String HocVi;
	private String LoaiGiaoVien;

	public GiaoVien(String maGiaoVien, String password, String tenGiaoVien, String thongTinThem, Date ngaySinh,
			String hocVi, String loaiGiaoVien) {
		super();
		MaGiaoVien = maGiaoVien;
		Password = password;
		TenGiaoVien = tenGiaoVien;
		ThongTinThem = thongTinThem;
		NgaySinh = ngaySinh;
		HocVi = hocVi;
		LoaiGiaoVien = loaiGiaoVien;
	}
	
	public GiaoVien(String maGiaoVien, String password){
		MaGiaoVien = maGiaoVien;
		Password = password;
	}

	public String getMaGiaoVien() {
		return MaGiaoVien;
	}

	public void setMaGiaoVien(String maGiaoVien) {
		MaGiaoVien = maGiaoVien;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getTenGiaoVien() {
		return TenGiaoVien;
	}

	public void setTenGiaoVien(String tenGiaoVien) {
		TenGiaoVien = tenGiaoVien;
	}

	public String getThongTinThem() {
		return ThongTinThem;
	}

	public void setThongTinThem(String thongTinThem) {
		ThongTinThem = thongTinThem;
	}

	public Date getNgaySinh() {
		return NgaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		NgaySinh = ngaySinh;
	}

	public String getHocVi() {
		return HocVi;
	}

	public void setHocVi(String hocVi) {
		HocVi = hocVi;
	}

	public String getLoaiGiaoVien() {
		return LoaiGiaoVien;
	}

	public void setLoaiGiaoVien(String loaiGiaoVien) {
		LoaiGiaoVien = loaiGiaoVien;
	}

}
