﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="Lab5_07032022.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 261px;
        }
        .auto-style2 {
            width: 40%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <table style="margin:0 auto" class="auto-style2">
                <tr style="text-align:center;font-size:25px">
                    <td colspan="2">Đăng ký thông tin khách hàng</td>
                </tr>
                <tr>
                    <td class="auto-style1">Tên đăng nhập</td>
                    <td>
                        <asp:TextBox ID="txt_username" runat="server" Width="298px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Mật khẩu</td>
                    <td>
                        <asp:TextBox ID="txt_pass" runat="server" TextMode="Password" Width="298px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Nhập lại mật khẩu</td>
                    <td>
                        <asp:TextBox ID="txt_pass2" runat="server" TextMode="Password" Width="298px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Email</td>
                    <td>
                        <asp:TextBox ID="txt_email" runat="server" Width="298px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Địa Chỉ</td>
                    <td>
                        <asp:TextBox ID="txt_diachi" runat="server" Width="298px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Số Điện Thoại</td>
                    <td>
                        <asp:TextBox ID="txt_sdt" runat="server" Width="298px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_dangky" runat="server" Text="Đăng Ký" Width="152px" OnClick="btn_dangky_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Label ID="lb_thongbao" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                        <asp:Button ID="btn_muahang" runat="server" Text="Ấn vào đây để đến trang mua hàng" Width="300px" OnClick="btn_muahang_Click" Visible="False" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
