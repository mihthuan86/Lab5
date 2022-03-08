using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5_07032022
{
    public partial class MuaHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lb_username.Text += Session["user"].ToString();
                for(int i=1; i <= 20; i++)
                {
                    ddl_sl.Items.Add(i.ToString());
                }
            }
        }

        protected void btn_order_Click(object sender, EventArgs e)
        {
            string path = Server.MapPath("App_Data/QLKH.mdf");
            SqlConnection ketnoi = new SqlConnection();
            ketnoi.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True";
            ketnoi.Open();
            SqlCommand ktra = new SqlCommand();
            ktra.Connection = ketnoi;
            ktra.CommandType = System.Data.CommandType.Text;
            ktra.CommandText = "select * from KhachHang where username=N'"+Session["user"].ToString()+"' and tensanpham=N'"+txt_name+"'";
            var dong = ktra.ExecuteReader();
            if (dong.HasRows)
            {
                lb_luutru.Text = "Ban da dat sp nay";
                ketnoi.Close();
            }
            else
            {
                ketnoi.Close();
                ketnoi.Open();
                SqlCommand luu = new SqlCommand();
                luu.Connection = ketnoi;
                luu.CommandType = System.Data.CommandType.Text;
                string sql_luu = "insert into KhachHang values(N'" + Session["user"].ToString() + "',N'"+txt_hoten.Text+"',N'"+ txt_ngaysinh.Text + "'," +
                    "N'"+txt_stk.Text+"',N'"+txt_diachi.Text+"',N'"+txt_name.Text+"',"+ddl_sl.Text+",N'"+ddl_name.Text+"')";
                luu.CommandText = sql_luu;
                luu.ExecuteNonQuery();
                lb_luutru.Text = "da dat hang thang cong";
                ketnoi.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = Server.MapPath("App_Data/QLKH.mdf");
            SqlConnection ketnoi = new SqlConnection();
            ketnoi.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True";
            ketnoi.Open();
            SqlCommand sql_ds = new SqlCommand();
            sql_ds.Connection = ketnoi;
            sql_ds.CommandType = System.Data.CommandType.Text;
            string sql = "select hoten,ngaysinh,sotaikhoan,diachi,tensanpham,soluong,loaisp from KhachHang where username=N'"+Session["user"].ToString()+"'";
            sql_ds.CommandText = sql;
            var dong = sql_ds.ExecuteReader();
            if (dong.HasRows)
            {
                ketnoi.Close();
                ketnoi.Open();
                SqlDataAdapter sqladap = new SqlDataAdapter(sql_ds.CommandText, ketnoi);
                DataSet dataSet = new DataSet();
                sqladap.Fill(dataSet, "KhachHang");
                DataTable dt = new DataTable();
                dt = dataSet.Tables["KhachHang"];
                gr_sp.DataSource = dt;
                gr_sp.DataBind();
                gr_sp.Visible = true;
                ketnoi.Close();
                lb_thongtin.Text = "Thông tin đặt hàng của khách hàng";
                lb_thongtin.Visible = true;
            }
            else
            {
                gr_sp.Visible = false;
                lb_thongtin.Text = "Ban Chua Dat Hang";
                lb_thongtin.Visible = true;
            }
        }
    }
}