package controller;

import model.HocSinh;
import service.HocSinhService;
import service.IHocSinhService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "HocSinhController", value = "/hocsinhs")
public class HocSinhController extends HttpServlet {
    private static final IHocSinhService hocSinhService = new HocSinhService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "list":
                hienThiHocSinh(request, response);
                break;
            case "edit":
                suaHocSinh(request,response);
                break;
        }
    }

    private void suaHocSinh(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("code"));
        request.setAttribute("hocSinh",hocSinhService.suaHocSinh(id));
        request.getRequestDispatcher("edit.jsp").forward(request,response);
    }

    private void hienThiHocSinh(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<HocSinh> hocSinhList = hocSinhService.getHocSinh();
        if (hocSinhList.size() == 0) {
            request.setAttribute("hocSinh", null);
        } else {
            request.setAttribute("hocSinh", hocSinhList);
        }
        request.getRequestDispatcher("list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action="";
        }switch (action){
            case "delete":
                delete(request,response);
                break;
            case "edit":
                edit(request,response);
                break;
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {

    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String maHocSinh = request.getParameter("code");
        hocSinhService.xoaHocSinh(maHocSinh);
        List<HocSinh> hocSinhList = new ArrayList<>();
        hocSinhList = hocSinhService.getHocSinh();
        if (hocSinhList.size()==0){
            request.setAttribute("hocSinh",null);
        }else {
            request.setAttribute("hocSinh",hocSinhList);
        }
        response.sendRedirect("/hocsinhs?action=list");
    }
}