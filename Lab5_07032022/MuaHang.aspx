<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MuaHang.aspx.cs" Inherits="Lab5_07032022.MuaHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .row1{
            height:50px;
        }
        .auto-style1 {
            width: 306px;
        }
        .auto-style2 {
            width: 101%;
        }
        .auto-style3 {
            width: 306px;
            height: 19px;
        }
        .auto-style4 {
            width: 314px;
        }
        .auto-style6 {
            width: 100%;
            height: 391px
        }
        .auto-style7 {
            height: 344px;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%;margin-left:30px;" >
            
            
                
           
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4">
                        <table  class="auto-style2">
                    <tr class="row1">
                        <td class="auto-style1">
                            Vui lòng chọn sản phẩm<br />
                            <asp:Label ID="lb_username" runat="server" Text="UserName:"></asp:Label>
                        </td>
                    </tr>
                    <tr class="row1">
                        <td class="auto-style3">
                            <div>
                                    Loại sản phẩm<br />
&nbsp;<asp:DropDownList ID="ddl_name" runat="server" Width="214px" >
                                        <asp:ListItem>Sữa Đặc</asp:ListItem>
                                        <asp:ListItem>Sữa Tươi</asp:ListItem>
                                        <asp:ListItem>Bánh Quy </asp:ListItem>
                                        <asp:ListItem>Kẹo</asp:ListItem>
                                        <asp:ListItem>Thạch</asp:ListItem>
                                        <asp:ListItem>Khác</asp:ListItem>
                                    </asp:DropDownList>
                                
                            </div>
                            </td>
                    </tr>
                    <tr class="row1">
                        <td class="auto-style1">Tên sản phẩm<br />
                            <asp:TextBox ID="txt_name" runat="server" Width="151px"></asp:TextBox>
                            số lượng
                            <asp:DropDownList ID="ddl_sl" runat="server" Width="53px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr class="row1">
                        <td class="auto-style1">Họ Tên<br />
                            <asp:TextBox ID="txt_hoten" runat="server" Width="256px"></asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr class="row1">
                        <td class="auto-style1">Ngày Sinh<br />
                            <asp:TextBox ID="txt_ngaysinh" runat="server" Width="256px"></asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr class="row1">
                        <td class="auto-style1">Số tài khoản<br />
                            <asp:TextBox ID="txt_stk" runat="server" Width="255px"></asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr class="row1">
                        <td class="auto-style1">Địa chỉ người đặt hàng<br />
                            <asp:TextBox ID="txt_diachi" runat="server" Width="265px" TextMode="MultiLine"></asp:TextBox>
                            
                        </td>
                    </tr>
                    <tr class="row1">
                        <td class="auto-style1" style="text-align:center">
                            <asp:Button ID="btn_order" runat="server" Text="Đặt Hàng" Width="159px" OnClick="btn_order_Click"  />
                        </td>
                    </tr>
                    <tr class="row1">
                        <td class="auto-style1">
                            <asp:Label ID="lb_luutru" runat="server" BackColor="#0066FF" ForeColor="White"></asp:Label>
                        </td>
                    </tr>
                </table>
                    </td>
                    <td>
                        <table class="auto-style6">
                                <tr>
                                    <td class="auto-style7" aria-orientation="vertical">
                                        <div style="text-align:center">
                                            <asp:Label ID="lb_thongtin" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" Visible="False"></asp:Label>
                                        </div>
                                        <div style="height:80%;text-align:center">
                                            <asp:GridView ID="gr_sp" runat="server" Visible="False" ></asp:GridView>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:center">
                                        <asp:Button ID="Button1" runat="server" Text="Thông tin đặt hàng" OnClick="Button1_Click" />
                                    </td>
                                </tr>
                                </table>
                    </td>
                </tr>
            </table>
            
            
                
           
        </div>
    </form>
</body>
</html>
