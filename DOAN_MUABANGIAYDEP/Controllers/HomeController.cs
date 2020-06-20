using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DOAN_MUABANGIAYDEP.Models;
namespace DOAN_MUABANGIAYDEP.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        QLBanGiayDepDataContext db = new QLBanGiayDepDataContext();
        public ActionResult Index()
        {
            List<SanPham> lst = db.SanPhams.ToList();
            return View(lst);
        }
        public ActionResult HienThiSP()
        {
            List<SanPham> lst = db.SanPhams.ToList();
            return View(lst);
        }
        public ActionResult ChiTiet1SP(string msp)
        {
            List<SanPham> lst = db.SanPhams.ToList();
            SanPham a = lst.FirstOrDefault(t => t.MaSP == msp);
            return View(a);
        }
        [HttpPost]
        public ActionResult TimKiem(FormCollection c)
        {
            var tukhoa = c["txtTimKiem"];
            List<SanPham> lst = db.SanPhams.ToList();
            List<SanPham> lst1 = lst.Where(t => t.TenSP.Contains(tukhoa) == true).ToList();
            return View(lst1);
        }
        public ActionResult HienThiNhom()
        {
            List<Nhom> lst = db.Nhoms.ToList();
            return PartialView(lst);
        }
        public ActionResult HienThiTheoNhom(string mn)
        {
            List<SanPham> lst = db.SanPhams.ToList();
            List<SanPham> a = lst.Where(t => t.MaNhom == mn).ToList();
            return View(a);
        }
       


        public ActionResult HuongDanMuaHang()
        {
            return View();
        }
        public ActionResult QuyDinhDoiTra()
        {
            return View();
        }
        public ActionResult PhuongThucVanChuyen()
        {
            return View();
        }

    }
}
