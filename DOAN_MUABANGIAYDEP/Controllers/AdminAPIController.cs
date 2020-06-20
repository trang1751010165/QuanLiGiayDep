using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DOAN_MUABANGIAYDEP.Models;
namespace DOAN_MUABANGIAYDEP.Controllers
{
    public class AdminAPIController : ApiController
    {
        QLBanGiayDepDataContext db = new QLBanGiayDepDataContext();
        [HttpGet]
        public List<SanPham> GetSPLists()
        {
            return db.SanPhams.ToList();
        }
        [HttpGet]
        public SanPham GetSanPham(string id)
        {
            return db.SanPhams.FirstOrDefault(x => x.MaSP == id);
        }
        [HttpPost]
        public bool InsertNewSP(string ma, string ten, int gia, string mota, string hinh, DateTime ngaycn, int slt, string manhom, string size)
        {
            try
            {
                SanPham sanpham = new SanPham();
                sanpham.MaSP = ma;
                sanpham.TenSP = ten;
                sanpham.Gia = gia;
                sanpham.MoTa = mota;
                sanpham.HinhAnh = hinh;
                sanpham.NgayCapNhat = ngaycn;
                sanpham.SoLuongTon = slt;
                sanpham.MaNhom = manhom;
                sanpham.Size = size;
                db.SanPhams.InsertOnSubmit(sanpham);
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        [HttpPut]
        public bool UpdateSP(string ma, string ten, int gia, string mota, string hinh, DateTime ngaycn, int slt, string manhom, string size)
        {
            try
            {
                //lay sp da ton tai ra
                SanPham sanpham = db.SanPhams.FirstOrDefault(a => a.MaSP == ma);
                if (sanpham == null)
                    return false;// khong ton tai
                sanpham.TenSP = ten;
                sanpham.Gia = gia;
                sanpham.MoTa = mota;
                sanpham.HinhAnh = hinh;
                sanpham.NgayCapNhat = ngaycn;
                sanpham.SoLuongTon = slt;
                sanpham.MaNhom = manhom;
                sanpham.Size = size;
                db.SubmitChanges();//xac nhan chinh sua
                return true;
            }
            catch
            {
                return false;
            }
        }
        [HttpDelete]
        public bool DeleteSP(string ma)
        {
            //lay food ton tai ra
            SanPham sanpham = db.SanPhams.FirstOrDefault(a => a.MaSP == ma);
            if (sanpham == null)
                return false;
            db.SanPhams.DeleteOnSubmit(sanpham);
            db.SubmitChanges();
            return true;
        }
    }
    
}
