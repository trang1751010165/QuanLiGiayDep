using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DOAN_MUABANGIAYDEP.Models;
namespace DOAN_MUABANGIAYDEP.Controllers
{
    public class AdminHomeController : Controller
    {
        //
        // GET: /AdminHome/
        AdminAPIController df = new AdminAPIController();
       
        public ActionResult Index1()
        {
            List<SanPham> lst = df.GetSPLists();
            return View(lst);
        }
        public ActionResult Nhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Nhap(FormCollection c)
        {
            var masp = c["txtMa"];
            var tensp = c["txtTen"];
            var gia = int.Parse(c["txtGia"]);
            var mota = c["txtMoTa"];
            string hinh = c["FileHinh"].ToString();
            var ng = String.Format("{0:MM/dd/yyyy}", c["txtNCN"]);
             DateTime ngaycn = DateTime.Parse(ng);
             var slt = int.Parse(c["txtSLT"]);
             var manhom = c["txtMaNhom"];
             var kichthuoc = c["txtKichThuoc"];
            df.InsertNewSP(masp,tensp,gia,mota,hinh,ngaycn,slt,manhom,kichthuoc);
            return RedirectToAction("Index1","AdminHome");
        }
        public ActionResult Sua(string ma, string ten, int gia, string mota, string hinh, DateTime ngaycn, int slt, string manhom, string size)
        {
            ViewData["txtMa"] = ma;
            ViewData["txtTen"] = ten;
            ViewData["txtGia"] = gia;
            ViewData["txtMoTa"] = mota;
            ViewData["FileHinh"] = hinh;
            ViewData["txtNCN"] = ngaycn;
            ViewData["txtSLT"] = slt;
            ViewData["txtMaNhom"] = manhom;
            ViewData["txtKichThuoc"] = size;
            return View();
        }
        [HttpPost]
        public ActionResult XLSua(FormCollection c)
        {
            var masp = c["txtMa"];
            var tensp = c["txtTen"];
            var gia = int.Parse(c["txtGia"]);
            var mota = c["txtMoTa"];
            string hinh = c["FileHinh"].ToString();
            var ng = String.Format("{0:MM/dd/yyyy}", c["txtNCN"]);
            DateTime ngaycn = DateTime.Parse(ng);
            var slt = int.Parse(c["txtSLT"]);
            var manhom = c["txtMaNhom"];
            var kichthuoc = c["txtKichThuoc"];
            df.UpdateSP(masp, tensp, gia, mota, hinh, ngaycn, slt, manhom, kichthuoc);
            return RedirectToAction("Index1", "AdminHome");
        }
        public ActionResult XLXoa(string ma)
        {
            df.DeleteSP(ma);
            return RedirectToAction("Index1", "AdminHome");
        }
      
    }

    
}
