package repository;

import model.HocSinh;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HocSinhRepository implements IHocSinhRepository {
    private static final String XOA = "update hoc_sinh set trang_thai = 1 where ma_hoc_sinh = ?";
    private static final String HIENTHIDANHSACH = "select * from hoc_sinh join diem on hoc_sinh.ma_hoc_sinh = diem.ma_hoc_sinh where hoc_sinh.trang_thai = 0";
    private static final String SUA = "select * from hoc_sinh join diem on hoc_sinh.ma_hoc_sinh = diem.ma_hoc_sinh where hoc_sinh.ma_hoc_sinh = ?";

    @Override
    public List<HocSinh> getHocSinh() {
        List<HocSinh> hocSinhList = new ArrayList<>();
        try {
            PreparedStatement statement = BaseRepository.getConnectionJavaToDB().prepareStatement(
                    HIENTHIDANHSACH);
            ResultSet resultSet = statement.executeQuery();
            HocSinh hocSinh;
            while (resultSet.next()) {
                hocSinh = new HocSinh();
                hocSinh.setMaHocSinh(resultSet.getInt("ma_hoc_sinh"));
                hocSinh.setTenHocSinh(resultSet.getString("ten_hoc_sinh"));
                hocSinh.setGioiTinh(resultSet.getString("gioi_tinh"));
                hocSinh.setTuoi(resultSet.getInt("tuoi"));
                hocSinh.setTenLop(resultSet.getString("ten_lop"));
                hocSinh.setDiemVan(resultSet.getInt("diem_van"));
                hocSinh.setDiemToan(resultSet.getInt("diem_toan"));
                hocSinh.setDiemAnh(resultSet.getInt("diem_anh"));
                hocSinh.setDiemSu(resultSet.getInt("diem_su"));
                hocSinh.setDiemDiaLy(resultSet.getInt("diem_dia_ly"));
                hocSinhList.add(hocSinh);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return hocSinhList;
    }

    @Override
    public void xoaHocSinh(String maHocSinh) {
        try {
            PreparedStatement statement = BaseRepository.getConnectionJavaToDB().prepareStatement(XOA);
            statement.setString(1, maHocSinh);
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Object suaHocSinh(int id) {
        HocSinh hocSinh = null;
        try {
            PreparedStatement statement = BaseRepository.getConnectionJavaToDB().prepareStatement(SUA);
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                hocSinh = new HocSinh();
                hocSinh.setMaHocSinh(resultSet.getInt("ma_hoc_sinh"));
                hocSinh.setTenHocSinh(resultSet.getString("ten_hoc_sinh"));
                hocSinh.setGioiTinh(resultSet.getString("gioi_tinh"));
                hocSinh.setTuoi(resultSet.getInt("tuoi"));
                hocSinh.setTenLop(resultSet.getString("ten_lop"));
                hocSinh.setDiemVan(resultSet.getInt("diem_van"));
                hocSinh.setDiemToan(resultSet.getInt("diem_toan"));
                hocSinh.setDiemAnh(resultSet.getInt("diem_anh"));
                hocSinh.setDiemSu(resultSet.getInt("diem_su"));
                hocSinh.setDiemDiaLy(resultSet.getInt("diem_dia_ly"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return hocSinh;
    }
}
