using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DOAN_MUABANGIAYDEP.Models;
namespace DOAN_MUABANGIAYDEP.Controllers
{
    public class KhachHangController : Controller
    {
        //
        // GET: /KhachHang/
        QLBanGiayDepDataContext db = new QLBanGiayDepDataContext();
        public ActionResult DangKy()
        {
            return View();
        }

        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult XLDangKy(FormCollection c, KhachHang kh)
        {
            kh.HoTen = c["txtHoTen"];
            kh.GioiTinh = c["txtGioiTinh"];
            kh.TaiKhoan = c["txtTenTK"];
            kh.MatKhau = c["txtMatKhau"];
            kh.DienThoai = c["txtDienThoai"];
            kh.Email = c["txtEmail"];
            kh.DiaChi = c["txtDiaChi"];
            kh.NgaySinh = Convert.ToDateTime(c["txtNgaySinh"]);
            db.KhachHangs.InsertOnSubmit(kh);
            db.SubmitChanges();
            return RedirectToAction("DangNhap");
        }

        [HttpPost]
        public ActionResult DangNhap(FormCollection c)
        {
            var tendn = c["txtTenTK"];
            var mk = c["txtMatKhau"];
            KhachHang kh = db.KhachHangs.SingleOrDefault(t => t.TaiKhoan == tendn && t.MatKhau == mk);
            Admin ad = db.Admins.SingleOrDefault(t => t.TaiKhoan == tendn && t.MatKhau == mk);
            if (kh != null)
            {
                Session["luu"] = kh;
                Session["dn"] = kh.HoTen ;
                return RedirectToAction("Index", "Home");
            }
            if (ad != null)
            {
                Session["luuad"] = ad;
                Session["dnad"] = ad.HoTen;
                return RedirectToAction("Index1", "AdminHome");
            }
            ViewBag.tb = "Tên đăng nhập và mật khẩu không đúng, xin quý khách vui lòng kiểm tra lại!";
            return View();
        }
    }
}
