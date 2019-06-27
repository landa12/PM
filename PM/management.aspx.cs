using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PM
{
    public partial class management : System.Web.UI.Page
    {
        private string name;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenTreeNode();
            }
        }
        public void AddNode(TreeNode ParentNode, TreeNode ChileNode, string NodeText, string NodeValue)
        {
            ChileNode.Text = NodeText;
            ChileNode.Value = NodeValue;
            ParentNode.ChildNodes.Add(ChileNode);
        }

        public void GenTreeNode()
        {
            string str;
            string str1;
            string role;


            //建立树节点的实例
            TreeNode treeNode = new TreeNode();
            //增加根节点
            treeNode.Text = "人事管理系统";
            treeNode.NavigateUrl = "";
            treeNode.Value = "0";
            this.TreeView1.Nodes.Add(treeNode);

            //增加父节点,子节点
            //获取登录用户的身份，并用dataset取出它的功能


            name = Session["userid"].ToString();
            SqlConnection conn = new SqlConnection();
            SqlDataAdapter sqlData = new SqlDataAdapter();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;" + "AttachDbFilename='|DataDirectory|\\Database1.mdf';";
            conn.Open();
            str = string.Format("select RoleName from employee where eid={0}", name);
            DataSet dataSet = new DataSet();
            SqlCommand sqlCommand = new SqlCommand(str, conn);
            role = (string)sqlCommand.ExecuteScalar();
            // Response.Write(role);
            str1 = string.Format("select Menu.ID,Menu.ParentID,Menu.Text from Role, Menu where Role.FounctionID = Menu.ID and Role.RoleName = N'{0}'", role);
            SqlCommand sql = new SqlCommand(str1, conn);
            sqlData.SelectCommand = sql;
            sqlData.Fill(dataSet);
            foreach (DataRow row in dataSet.Tables[0].Rows)
            {
                if (Convert.ToInt32(row["ParentID"]) == 0)
                {
                    TreeNode node = new TreeNode();
                    AddNode(treeNode, node, row["Text"].ToString(), row["ID"].ToString());
                    id = Convert.ToInt32(row["ID"]);
                    AddChildNode(node, id, dataSet);
                }


            }
            //将TreeView1加入  
            this.TreeView1.ShowLines = true;

        }
        //通过找到父节点的id，匹配找到子节点并加入父节点
        public void AddChildNode(TreeNode treeNode, int id, DataSet dataSet)
        {
            foreach (DataRow row in dataSet.Tables[0].Rows)
            {
                if (id == Convert.ToInt32(row["ParentID"]))
                {
                    TreeNode NODE = new TreeNode();
                    AddNode(treeNode, NODE, row["Text"].ToString(), row["ID"].ToString());

                }
            }
        }
    }
}