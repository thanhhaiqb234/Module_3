package service;

import model.HocSinh;

import java.util.List;

public interface IHocSinhService {
    List<HocSinh> getHocSinh();

    void xoaHocSinh(String maHocSinh);

    Object suaHocSinh(int id);
}
