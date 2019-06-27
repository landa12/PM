<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PM.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no">
    <style type="text/css">
       
        .image{
            box-shadow:0px 1px 4px rgba(0,0,0,0.3),0 0 40px rgba(0,0,0,0.1) inset;
            width:100%;
        }
        #text_center{
            text-align:center;
            margin-top:50px;
            color:#42537b;
            font-family:'Microsoft YaHei';
            letter-spacing:20px;
            font-weight:500;
            font-size:30px;
        }
        
        .auto-style1{
            line-height:50px;
        }
        .auto-style2 {
            text-align: center;
            width:400px;
            font-family:'Microsoft YaHei';
            color:darkgray;
            font-weight:500;
            letter-spacing:3px;
            font-size:x-large;
        }
        .center{
            width:1200px;
            margin:50px auto;
        }
        .auto-style3{
            padding:0 20px 20px 20px;
            line-height:50px;
            color:darkgray;
            font-size:x-large;
            font-weight:400;
            font-family:'Microsoft YaHei';
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <img class="image" src="images/1.jpg" />
  
        <div id="text_center">
            系统核心功能
        </div>
   
        <div class="center">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><img src="images/用户权限管理.png" width="150px" height="150px"/></td>
                <td class="auto-style2"><img src="images/信息查询.png" width="150px" height="150px" /></td>
                <td class="auto-style2"><img src="images/新增用户.png" width="150px" height="150px" /></td>
            </tr>
            <tr>
                <td>
                    <div class="auto-style2">权限管理</div>
                </td>
                <td>
                    <div class="auto-style2">信息查询</div>
                </td>
                <td>
                    <div class="auto-style2">添加用户</div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="auto-style3">不同角色拥有的管理权限不同。而管理员拥有最高的权限，可以对角色的权限进行分配和管理。</div>
                </td>
                <td>
                    <div class="auto-style3">隶属人事部门可查询所有部门的相关信息，反之，只能查询个人以及所属部门的信息。</div>
                </td>
                <td>
                    <div class="auto-style3">

                    </div>
                </td>
            </tr>
        </table>
            </div>
</asp:Content>