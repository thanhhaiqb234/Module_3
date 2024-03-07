package service;

import model.HocSinh;
import repository.HocSinhRepository;
import repository.IHocSinhRepository;

import java.util.List;

public class HocSinhService implements IHocSinhService{
    private static final IHocSinhRepository hocSinhRepository = new HocSinhRepository();

    @Override
    public List<HocSinh> getHocSinh() {
        return hocSinhRepository.getHocSinh();
    }

    @Override
    public void xoaHocSinh(String maHocSinh) {
        hocSinhRepository.xoaHocSinh(maHocSinh);
    }

    @Override
    public Object suaHocSinh(int id) {
        return hocSinhRepository.suaHocSinh(id);
    }

}
