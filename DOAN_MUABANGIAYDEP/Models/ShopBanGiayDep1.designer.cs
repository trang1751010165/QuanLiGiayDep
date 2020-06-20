﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DOAN_MUABANGIAYDEP.Models
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="QLGIAYDEP")]
	public partial class ShopBanGiayDepDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void InsertLoai(Loai instance);
    partial void UpdateLoai(Loai instance);
    partial void DeleteLoai(Loai instance);
    partial void InsertNhom(Nhom instance);
    partial void UpdateNhom(Nhom instance);
    partial void DeleteNhom(Nhom instance);
    partial void InsertSanPham(SanPham instance);
    partial void UpdateSanPham(SanPham instance);
    partial void DeleteSanPham(SanPham instance);
    #endregion
		
		public ShopBanGiayDepDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["QLGIAYDEPConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public ShopBanGiayDepDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public ShopBanGiayDepDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public ShopBanGiayDepDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public ShopBanGiayDepDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<Loai> Loais
		{
			get
			{
				return this.GetTable<Loai>();
			}
		}
		
		public System.Data.Linq.Table<Nhom> Nhoms
		{
			get
			{
				return this.GetTable<Nhom>();
			}
		}
		
		public System.Data.Linq.Table<SanPham> SanPhams
		{
			get
			{
				return this.GetTable<SanPham>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Loai")]
	public partial class Loai : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _MaLoai;
		
		private string _TenLoai;
		
		private string _MaNhom;
		
		private EntitySet<SanPham> _SanPhams;
		
		private EntityRef<Nhom> _Nhom;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMaLoaiChanging(string value);
    partial void OnMaLoaiChanged();
    partial void OnTenLoaiChanging(string value);
    partial void OnTenLoaiChanged();
    partial void OnMaNhomChanging(string value);
    partial void OnMaNhomChanged();
    #endregion
		
		public Loai()
		{
			this._SanPhams = new EntitySet<SanPham>(new Action<SanPham>(this.attach_SanPhams), new Action<SanPham>(this.detach_SanPhams));
			this._Nhom = default(EntityRef<Nhom>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaLoai", DbType="NVarChar(10) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string MaLoai
		{
			get
			{
				return this._MaLoai;
			}
			set
			{
				if ((this._MaLoai != value))
				{
					this.OnMaLoaiChanging(value);
					this.SendPropertyChanging();
					this._MaLoai = value;
					this.SendPropertyChanged("MaLoai");
					this.OnMaLoaiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenLoai", DbType="NVarChar(50)")]
		public string TenLoai
		{
			get
			{
				return this._TenLoai;
			}
			set
			{
				if ((this._TenLoai != value))
				{
					this.OnTenLoaiChanging(value);
					this.SendPropertyChanging();
					this._TenLoai = value;
					this.SendPropertyChanged("TenLoai");
					this.OnTenLoaiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaNhom", DbType="NVarChar(10)")]
		public string MaNhom
		{
			get
			{
				return this._MaNhom;
			}
			set
			{
				if ((this._MaNhom != value))
				{
					if (this._Nhom.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnMaNhomChanging(value);
					this.SendPropertyChanging();
					this._MaNhom = value;
					this.SendPropertyChanged("MaNhom");
					this.OnMaNhomChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Loai_SanPham", Storage="_SanPhams", ThisKey="MaLoai", OtherKey="MaLoai")]
		public EntitySet<SanPham> SanPhams
		{
			get
			{
				return this._SanPhams;
			}
			set
			{
				this._SanPhams.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Nhom_Loai", Storage="_Nhom", ThisKey="MaNhom", OtherKey="MaNhom", IsForeignKey=true)]
		public Nhom Nhom
		{
			get
			{
				return this._Nhom.Entity;
			}
			set
			{
				Nhom previousValue = this._Nhom.Entity;
				if (((previousValue != value) 
							|| (this._Nhom.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Nhom.Entity = null;
						previousValue.Loais.Remove(this);
					}
					this._Nhom.Entity = value;
					if ((value != null))
					{
						value.Loais.Add(this);
						this._MaNhom = value.MaNhom;
					}
					else
					{
						this._MaNhom = default(string);
					}
					this.SendPropertyChanged("Nhom");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_SanPhams(SanPham entity)
		{
			this.SendPropertyChanging();
			entity.Loai = this;
		}
		
		private void detach_SanPhams(SanPham entity)
		{
			this.SendPropertyChanging();
			entity.Loai = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Nhom")]
	public partial class Nhom : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _MaNhom;
		
		private string _TenNhom;
		
		private EntitySet<Loai> _Loais;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMaNhomChanging(string value);
    partial void OnMaNhomChanged();
    partial void OnTenNhomChanging(string value);
    partial void OnTenNhomChanged();
    #endregion
		
		public Nhom()
		{
			this._Loais = new EntitySet<Loai>(new Action<Loai>(this.attach_Loais), new Action<Loai>(this.detach_Loais));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaNhom", DbType="NVarChar(10) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string MaNhom
		{
			get
			{
				return this._MaNhom;
			}
			set
			{
				if ((this._MaNhom != value))
				{
					this.OnMaNhomChanging(value);
					this.SendPropertyChanging();
					this._MaNhom = value;
					this.SendPropertyChanged("MaNhom");
					this.OnMaNhomChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenNhom", DbType="NVarChar(50)")]
		public string TenNhom
		{
			get
			{
				return this._TenNhom;
			}
			set
			{
				if ((this._TenNhom != value))
				{
					this.OnTenNhomChanging(value);
					this.SendPropertyChanging();
					this._TenNhom = value;
					this.SendPropertyChanged("TenNhom");
					this.OnTenNhomChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Nhom_Loai", Storage="_Loais", ThisKey="MaNhom", OtherKey="MaNhom")]
		public EntitySet<Loai> Loais
		{
			get
			{
				return this._Loais;
			}
			set
			{
				this._Loais.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_Loais(Loai entity)
		{
			this.SendPropertyChanging();
			entity.Nhom = this;
		}
		
		private void detach_Loais(Loai entity)
		{
			this.SendPropertyChanging();
			entity.Nhom = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.SanPham")]
	public partial class SanPham : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _MaSP;
		
		private string _TenSP;
		
		private System.Nullable<int> _Gia;
		
		private string _MoTa;
		
		private string _HinhAnh;
		
		private System.Nullable<System.DateTime> _NgayCapNhat;
		
		private System.Nullable<int> _SoLuongTon;
		
		private string _MaLoai;
		
		private string _Size;
		
		private EntityRef<Loai> _Loai;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnMaSPChanging(string value);
    partial void OnMaSPChanged();
    partial void OnTenSPChanging(string value);
    partial void OnTenSPChanged();
    partial void OnGiaChanging(System.Nullable<int> value);
    partial void OnGiaChanged();
    partial void OnMoTaChanging(string value);
    partial void OnMoTaChanged();
    partial void OnHinhAnhChanging(string value);
    partial void OnHinhAnhChanged();
    partial void OnNgayCapNhatChanging(System.Nullable<System.DateTime> value);
    partial void OnNgayCapNhatChanged();
    partial void OnSoLuongTonChanging(System.Nullable<int> value);
    partial void OnSoLuongTonChanged();
    partial void OnMaLoaiChanging(string value);
    partial void OnMaLoaiChanged();
    partial void OnSizeChanging(string value);
    partial void OnSizeChanged();
    #endregion
		
		public SanPham()
		{
			this._Loai = default(EntityRef<Loai>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaSP", DbType="NVarChar(10) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string MaSP
		{
			get
			{
				return this._MaSP;
			}
			set
			{
				if ((this._MaSP != value))
				{
					this.OnMaSPChanging(value);
					this.SendPropertyChanging();
					this._MaSP = value;
					this.SendPropertyChanged("MaSP");
					this.OnMaSPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_TenSP", DbType="NVarChar(50)")]
		public string TenSP
		{
			get
			{
				return this._TenSP;
			}
			set
			{
				if ((this._TenSP != value))
				{
					this.OnTenSPChanging(value);
					this.SendPropertyChanging();
					this._TenSP = value;
					this.SendPropertyChanged("TenSP");
					this.OnTenSPChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Gia", DbType="Int")]
		public System.Nullable<int> Gia
		{
			get
			{
				return this._Gia;
			}
			set
			{
				if ((this._Gia != value))
				{
					this.OnGiaChanging(value);
					this.SendPropertyChanging();
					this._Gia = value;
					this.SendPropertyChanged("Gia");
					this.OnGiaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MoTa", DbType="NVarChar(MAX)")]
		public string MoTa
		{
			get
			{
				return this._MoTa;
			}
			set
			{
				if ((this._MoTa != value))
				{
					this.OnMoTaChanging(value);
					this.SendPropertyChanging();
					this._MoTa = value;
					this.SendPropertyChanged("MoTa");
					this.OnMoTaChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_HinhAnh", DbType="NVarChar(MAX)")]
		public string HinhAnh
		{
			get
			{
				return this._HinhAnh;
			}
			set
			{
				if ((this._HinhAnh != value))
				{
					this.OnHinhAnhChanging(value);
					this.SendPropertyChanging();
					this._HinhAnh = value;
					this.SendPropertyChanged("HinhAnh");
					this.OnHinhAnhChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_NgayCapNhat", DbType="DateTime")]
		public System.Nullable<System.DateTime> NgayCapNhat
		{
			get
			{
				return this._NgayCapNhat;
			}
			set
			{
				if ((this._NgayCapNhat != value))
				{
					this.OnNgayCapNhatChanging(value);
					this.SendPropertyChanging();
					this._NgayCapNhat = value;
					this.SendPropertyChanged("NgayCapNhat");
					this.OnNgayCapNhatChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_SoLuongTon", DbType="Int")]
		public System.Nullable<int> SoLuongTon
		{
			get
			{
				return this._SoLuongTon;
			}
			set
			{
				if ((this._SoLuongTon != value))
				{
					this.OnSoLuongTonChanging(value);
					this.SendPropertyChanging();
					this._SoLuongTon = value;
					this.SendPropertyChanged("SoLuongTon");
					this.OnSoLuongTonChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MaLoai", DbType="NVarChar(10)")]
		public string MaLoai
		{
			get
			{
				return this._MaLoai;
			}
			set
			{
				if ((this._MaLoai != value))
				{
					if (this._Loai.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnMaLoaiChanging(value);
					this.SendPropertyChanging();
					this._MaLoai = value;
					this.SendPropertyChanged("MaLoai");
					this.OnMaLoaiChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Size", DbType="NVarChar(MAX)")]
		public string Size
		{
			get
			{
				return this._Size;
			}
			set
			{
				if ((this._Size != value))
				{
					this.OnSizeChanging(value);
					this.SendPropertyChanging();
					this._Size = value;
					this.SendPropertyChanged("Size");
					this.OnSizeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Loai_SanPham", Storage="_Loai", ThisKey="MaLoai", OtherKey="MaLoai", IsForeignKey=true)]
		public Loai Loai
		{
			get
			{
				return this._Loai.Entity;
			}
			set
			{
				Loai previousValue = this._Loai.Entity;
				if (((previousValue != value) 
							|| (this._Loai.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._Loai.Entity = null;
						previousValue.SanPhams.Remove(this);
					}
					this._Loai.Entity = value;
					if ((value != null))
					{
						value.SanPhams.Add(this);
						this._MaLoai = value.MaLoai;
					}
					else
					{
						this._MaLoai = default(string);
					}
					this.SendPropertyChanged("Loai");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591