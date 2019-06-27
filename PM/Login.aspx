<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PM.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
    <style type="text/css">
        
        /* 预设背景图 */
        .background{
            opacity:0.9;
            width:100%;
            overflow:hidden;
        }
        /* 登录表格框位置*/
        .table_container{
          position:absolute;
          left:750px;        
          top:400px;
        }
        /* 登录表格框 */
        .table {
            width: 400px;
            height:280px;
            line-height:50px;
            background-color:#fff;
            padding:50px;
        } 
        /* 登录按钮居中 */
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            background-color: #99CCFF;            
        }
        /* 标题样式 */
        .caption{
            font-size:xx-large;
            font-weight:800;
            font-family:Microsoft YaHei;
            position:absolute;
            top:300px;
            left:800px;
            color:white;
            letter-spacing:15px;
            z-index:1;
            
        }
        /* icon样式 */
        .icon{
            padding-top:20px;
            margin-left:20px;
        }
        .border-bottom{
            text-align:center;
            border-bottom:1px solid gray;
        }
       
    </style>
</head>
<body>
        <form id="form1" runat="server">
            <div class="background">
            <img src="images/4.jpg" />
            </div>
        <div class="caption">
            人事管理系统
        </div>
         <div class="table_container" >           
        <table class="table">
        <tr>
            <td class="border-bottom" colspan="2">用 户 登 录</td>
        </tr>
        <tr>
            <td class="icon"><span><img src="images/登录用户名.png" width="28px" height="26px"/></span></td>
            <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server" Height="28px" placeholder="请输入用户名" CssClass="auto-style3" Width="215px" border-radius="5px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="icon"><span><img src="images/密码.png" width="28px" height="26px"/></td>
            <td class="auto-style1"><asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="28px" placeholder="请输入密码" Width="215px" border-radius="5px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登 录" Width="260px" CssClass="auto-style2" Height="34px" border-radius="5px"/></td>
        </tr>

        <tr>
            <td class="auto-style1" colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label></td>
        </tr>

        
    </table>
                
        </div>
    </form>
    </body>
</html>

