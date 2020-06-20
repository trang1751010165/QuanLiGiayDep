using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DOAN_MUABANGIAYDEP.Models;
namespace DOAN_MUABANGIAYDEP.Models
{
    public class item
    {
        QLBanGiayDepDataContext db = new QLBanGiayDepDataContext();
        public string masp { set; get; }
        public string tensp { set; get; }
        public string hinhanh { set; get; }
        public int gia { set; get; }
        public int soluong { set; get; }
        public int thanhtien
        {
            get { return soluong * gia; }
        }
        public item(string Masp)
        {
            masp = Masp;
            SanPham sanpham = db.SanPhams.FirstOrDefault(t=> t.MaSP == Masp);
            tensp = sanpham.TenSP;
            hinhanh = sanpham.HinhAnh;
            gia = (int)sanpham.Gia;
            soluong = 1;
        }
    }
}