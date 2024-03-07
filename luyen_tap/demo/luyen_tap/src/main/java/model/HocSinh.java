package model;

public class HocSinh {
    private int maHocSinh;
    private String tenHocSinh;
    private String gioiTinh;
    private int tuoi;
    private String tenLop;
    private int diemVan;
    private int diemToan;
    private int diemAnh;
    private int diemSu;
    private int diemDiaLy;

    public HocSinh() {
    }

    public HocSinh(int maHocSinh, String tenHocSinh, String gioiTinh, int tuoi, String tenLop, int diemVan, int diemToan
            , int diemAnh, int diemSu, int diemDiaLy) {
        this.maHocSinh = maHocSinh;
        this.tenHocSinh = tenHocSinh;
        this.gioiTinh = gioiTinh;
        this.tuoi = tuoi;
        this.tenLop = tenLop;
        this.diemVan = diemVan;
        this.diemToan = diemToan;
        this.diemAnh = diemAnh;
        this.diemSu = diemSu;
        this.diemDiaLy = diemDiaLy;
    }

    public int getMaHocSinh() {
        return maHocSinh;
    }

    public void setMaHocSinh(int maHocSinh) {
        this.maHocSinh = maHocSinh;
    }

    public String getTenHocSinh() {
        return tenHocSinh;
    }

    public void setTenHocSinh(String tenHocSinh) {
        this.tenHocSinh = tenHocSinh;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public int getTuoi() {
        return tuoi;
    }

    public void setTuoi(int tuoi) {
        this.tuoi = tuoi;
    }

    public String getTenLop() {
        return tenLop;
    }

    public void setTenLop(String tenLop) {
        this.tenLop = tenLop;
    }

    public int getDiemVan() {
        return diemVan;
    }

    public void setDiemVan(int diemVan) {
        this.diemVan = diemVan;
    }

    public int getDiemToan() {
        return diemToan;
    }

    public void setDiemToan(int diemToan) {
        this.diemToan = diemToan;
    }

    public int getDiemAnh() {
        return diemAnh;
    }

    public void setDiemAnh(int diemAnh) {
        this.diemAnh = diemAnh;
    }

    public int getDiemSu() {
        return diemSu;
    }

    public void setDiemSu(int diemSu) {
        this.diemSu = diemSu;
    }

    public int getDiemDiaLy() {
        return diemDiaLy;
    }

    public void setDiemDiaLy(int diemDiaLy) {
        this.diemDiaLy = diemDiaLy;
    }
}
