using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DOAN_MUABANGIAYDEP.Models;
namespace DOAN_MUABANGIAYDEP.Controllers
{
    public class GioHangController : Controller
    {
        //
        // GET: /GioHang/
        QLBanGiayDepDataContext db = new QLBanGiayDepDataContext();

        public ActionResult Giohang()
        {
            ViewBag.sl = TongSL();
            ViewBag.tt = TongTien();
            return PartialView();
        }


        public ActionResult XemGioHang()
        {
            //lay gio hang cua minh
            List<item> lst = Session["gh"] as List<item>;
            //if (lst.Count == 0)
            //{
            //    return RedirectToAction("Index", "Home");
            //}
            ViewBag.tongsl = TongSL();
            ViewBag.tongtien = TongTien();
            return View(lst);
        }
        public List<item> LayGioHang()
        {
            List<item> lstGH = Session["gh"] as List<item>;
            if (lstGH == null)
            {
                lstGH = new List<item>();
                Session["gh"] = lstGH;
            }
            return lstGH;
        }
        public ActionResult ThemGioHang(string msp, string strUrl)
        {
            //lay gio hang
            List<item> GH = LayGioHang();
            //them 1 item vao gio
           
            item s = GH.FirstOrDefault(t => t.masp == msp);
            if (s == null)
            {
                item a = new item(msp);
                GH.Add(a);
                return Redirect(strUrl);
            }
            else
            {
                s.soluong++;
                return Redirect(strUrl);
            }
           // return RedirectToAction("XemGioHang","GioHang");
        }
        public ActionResult ThemGioHang1(string msp)
        {
            //lay gio hang
            List<item> GH = LayGioHang();
            //them 1 item vao gio

            item s = GH.FirstOrDefault(t => t.masp == msp);
            if (s == null)
            {
                item a = new item(msp);
                GH.Add(a);
            }
            else
            {
                s.soluong++;
            }
            return RedirectToAction("XemGioHang", "GioHang");
        }
        //Tong so luong
        private int TongSL()
        {
            int tongsoluong = 0;
            List<item> lstGH = Session["gh"] as List<item>;
            if (lstGH != null)
            {
                tongsoluong = lstGH.Sum(t => t.soluong);
            }
            return tongsoluong;
        }
        private int TongTien()
        {
            int thanhtien = 0;
            List<item> lstGH = Session["gh"] as List<item>;
            if (lstGH != null)
            {
                thanhtien = lstGH.Sum(t => t.thanhtien);
            }
            return thanhtien;
        }
        public ActionResult Xoa1SP(string ms)
        {
            //lay gio hang
            List<item> GH = LayGioHang();
            //them 1 item vao gio
            
            item s = GH.FirstOrDefault(t => t.masp == ms);
            //xoa
            if (s != null)
            {
                GH.RemoveAll(t => t.masp == ms);
            }
            if (GH.Count == 0)
                return RedirectToAction("Index", "Home");
            return RedirectToAction("XemGioHang","GioHang");
        }

        public ActionResult DatHang()
        {
            if (Session["luu"] == null)
                return RedirectToAction("DangNhap", "Home");

            KhachHang kh = Session["luu"] as KhachHang;
            return View(kh);
        }
        [HttpPost]
        //btn THANHTOANNGAY
        public ActionResult XLDatHang(FormCollection c)
        {
            //lấy dữ liệu từ form và lưu vào CSDL
            var ngaygiao = c["txtNgayGiao"];
            List<item> listGH = Session["gh"] as List<item>;
            if (listGH == null)
                RedirectToAction("Index", "Home");
            //tạo đơn đặt hàng, lưu đơn đặt hàng
            KhachHang kh = Session["luu"] as KhachHang;
            DonHang dh = new DonHang();
            dh.MaKH = kh.MaKH;
            dh.NgayDat = DateTime.Now;
            var ng = String.Format("{0:MM/dd/yyyy}", c["txtNgayGiao"]);
            dh.NgayGiao = DateTime.Parse(ng);
            dh.DaThanhToan = "Rồi";
            dh.TinhTrangGH= "Đã Đặt Hàng";
            db.DonHangs.InsertOnSubmit(dh);
            db.SubmitChanges();
            //lần lượt lấy 1 item trong giỏ và lưu vào chi tiết đơn đặt hàng
            foreach (var item in listGH)
            {
                ChiTietDH ctdh = new ChiTietDH();
                ctdh.MaDonHang = dh.MaDonHang;
                ctdh.MaSP = item.masp;
                ctdh.SoLuong = item.soluong;
                ctdh.DonGia = (int)item.gia;
                db.ChiTietDHs.InsertOnSubmit(ctdh);
            }
            db.SubmitChanges();
            Session["gh"] = null;
            return RedirectToAction("ThanhToan","GioHang");
        }
        public ActionResult XacNhanDonHang()
        {
            return View();
        }

        public ActionResult ThanhToan()
        {
            return View();
        }

        [HttpPost]
        //đối với btn DESAU
        public ActionResult XLThanhToan(FormCollection c)

        {
            //lấy dữ liệu từ form và lưu vào CSDL
            var ngaygiao = c["txtNgayGiao"];
            List<item> listGH = Session["gh"] as List<item>;
            if (listGH == null)
                RedirectToAction("Index", "Home");
            //tạo đơn đặt hàng, lưu đơn đặt hàng
            KhachHang kh = Session["luu"] as KhachHang;
            DonHang dh = new DonHang();
            dh.MaKH = kh.MaKH;
            dh.NgayDat = DateTime.Now;
            var ng = String.Format("{0:MM/dd/yyyy}", c["txtNgayGiao"]);
            dh.NgayGiao = DateTime.Parse(ng);
            dh.DaThanhToan = "Chưa";
            dh.TinhTrangGH = "Đã Đặt Hàng";
            db.DonHangs.InsertOnSubmit(dh);
            db.SubmitChanges();
            //lần lượt lấy 1 item trong giỏ và lưu vào chi tiết đơn đặt hàng
            foreach (var item in listGH)
            {
                ChiTietDH ctdh = new ChiTietDH();
                ctdh.MaDonHang = dh.MaDonHang;
                ctdh.MaSP = item.masp;
                ctdh.SoLuong = item.soluong;
                ctdh.DonGia = (int)item.gia;
                db.ChiTietDHs.InsertOnSubmit(ctdh);
            }
            db.SubmitChanges();
            Session["gh"] = null;
            return RedirectToAction("XacNhanThanhToan", "GioHang");
        }
    }
}
