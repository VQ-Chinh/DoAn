package DBManager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Connection.AbstractDB;
import Connection.IDB;
import Model.GiaoVien;

public class GiaoVienDB extends AbstractDB implements IDB<GiaoVien, Boolean, String> {

	@Override
	public Boolean add(GiaoVien e) {
		String sql = "INSERT INTO GIAOVIEN  VALUES ('?','a','12/11/1999','a','1','BinhThuong');";
		return null;
	}

	@Override
	public Boolean delete(String k) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Boolean update(GiaoVien e) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public GiaoVien find(String k) {
		String sql = "select MAGIAOVIEN, TENGIAOVIEN,NGAYSINH, HOCVI, LOAIGIAOVIEN ,PASSWORD from GIAOVIEN where MAGIAOVIEN = ?";
		
		try {
			openConnection();
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			pstm.setString(1, k);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()){
				String maGiaoVien = rs.getString(1);
				String tenGiaoVien = rs.getString(2);
				Date ngaySinh	 = rs.getDate(3);
				String hocVi = rs.getString(4);
				String loaiGiaoVien = rs.getString(5);
				String password = rs.getString(6);
				GiaoVien gv=  new GiaoVien(maGiaoVien, password, tenGiaoVien, "", ngaySinh, hocVi, loaiGiaoVien);
				con.close();
				return gv;
			}
			
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return null;
	}

	@Override
	public List<GiaoVien> getAll() {
		String sql = "select MAGIAOVIEN, TENGIAOVIEN,NGAYSINH, HOCVI, LOAIGIAOVIEN from GIAOVIEN";
		try {
			openConnection();
			PreparedStatement pstm =  (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			List<GiaoVien> list = new ArrayList<GiaoVien>();
			while(rs.next()){
				String maGiaoVien = rs.getString(1);
				String tenGiaoVien = rs.getString(2);
				Date ngaySinh	 = rs.getDate(3);
				String hocVi = rs.getString(4);
				String loaiGiaoVien = rs.getString(5);
				GiaoVien gv=  new GiaoVien(maGiaoVien, "", tenGiaoVien, "", ngaySinh, hocVi, loaiGiaoVien);
				list.add(gv);
			}
			con.close();
			return list;
 		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public Boolean check(GiaoVien e) {
		String sql = "select MAGIAOVIEN, PASSWORD from GIAOVIEN where MAGIAOVIEN=? and PASSWORD=?";
		try {
			openConnection();
			PreparedStatement pstm = (PreparedStatement) con.prepareStatement(sql);
			pstm.setString(1, e.getMaGiaoVien());
			pstm.setString(2, e.getPassword());
			ResultSet rs = pstm.executeQuery();
			if(rs.next()){
				con.close();
				return true;
			}
			con.close();
			return false;
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return false;
	}
	
	public static void main(String[] args) {
		GiaoVienDB test = new GiaoVienDB();
		GiaoVien a = new GiaoVien("admin", "111111");
		System.out.println(test.con);
		System.out.println(test.check(a));
	}
}
