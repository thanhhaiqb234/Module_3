package repository;

import model.HocSinh;

import java.util.List;

public interface IHocSinhRepository {
    List<HocSinh> getHocSinh();

    void xoaHocSinh(String maHocSinh);

    Object suaHocSinh(int id);
}
