<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PM.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=no" />
    <style type="text/css">
        #about_us{
            width:100%;            
        }
        .center{
            width:50%;
            margin:50px auto;
        }
        .auto-style1 {
            margin:10px auto;
            background-color:dodgerblue;
            width:600px;
            height:50px;
            text-align: center;
            font-family:'Microsoft YaHei';
            letter-spacing:20px;
            font-weight:500;
            font-size:30px;
            color:white;
            line-height:50px;
            border-radius:5px;
        }
        .auto-style2 {
            line-height:50px;
            font-family:'Microsoft YaHei';
            letter-spacing:2px;
            font-weight:400;
            font-size:large;
            color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="images/about us.jpg" id="about_us"/>
    <div class="center">
        <div class="auto-style1">
           系统介绍
        </div>
        <div class="auto-style2">
            <p style="text-indent:30px;">在企业中，人事管理工作是非常重要的一项工作，它负责整个企业的日常人事安排，人员的人事管理等。高效的人事管理可以提高企业的市场竞争力，使企业具有更强的凝聚力和活力。</p>      
            <p style="text-indent:30px;">该管理系统主要功能是管理员工资料，浏览员工信息，管理员工权限。普通员工可以通过Web浏览自己的基本资料、修改自己的个人信息。</p>

            <p style="text-indent:30px;">人事部员工默认拥有对所有员工资料的管理权限，部门主管默认拥有对自己部门员工资料的管理权限，总经理拥有所有管理权限。</p>
        </div>
    </div>
</asp:Content>