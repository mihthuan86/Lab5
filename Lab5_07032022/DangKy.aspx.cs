using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab5_07032022
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_dangky_Click(object sender, EventArgs e)
        {
            if (txt_pass.Text == txt_pass2.Text)
            {
                string path = Server.MapPath("App_Data/QLKH.mdf");
                SqlConnection ketnot = new SqlConnection();
                ketnot.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True";
                ketnot.Open();
                SqlCommand ktra = new SqlCommand();
                ktra.Connection = ketnot;
                ktra.CommandType = System.Data.CommandType.Text;
                string sql_ktra = "select * from Account where username = N'" + txt_username.Text + "'";
                ktra.CommandText = sql_ktra;
                var dong = ktra.ExecuteReader();
                if (!dong.HasRows)
                {
                    ketnot.Close();
                    ketnot.Open();
                    SqlCommand insert = new SqlCommand();
                    insert.Connection = ketnot;
                    insert.CommandType = System.Data.CommandType.Text;
                    insert.CommandText = "insert into Account values(N'" + txt_username.Text + "',N'" + txt_pass.Text + "',N'" + txt_email.Text + "',N'" + txt_diachi.Text + "',N'" + txt_sdt.Text + "')";
                    insert.ExecuteNonQuery();
                    lb_thongbao.Text = " Da Dang Ky Thanh Cong";
                    btn_muahang.Visible = true;
                }
                else lb_thongbao.Text = "Da co username nay";
            }
            else lb_thongbao.Text = "hai mat khau khong trung nhau";
        }
        protected void btn_muahang_Click(object sender, EventArgs e)
        {
            Session["user"] = txt_username.Text;
            Response.Redirect("MuaHang.aspx");
        }
    }
}