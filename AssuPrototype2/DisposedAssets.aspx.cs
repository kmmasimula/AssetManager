using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;

namespace AssuPrototype2
{
    public partial class DisposedAssets : System.Web.UI.Page
    {
        SqlDataAdapter sda;
        DataSet ds = new DataSet();
        StringBuilder htmlTable = new StringBuilder();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                BindData();
        }

        private void BindData()
        {

            string query = "SELECT * FROM Assets WHERE AssetStatusID = 3";
            SqlCommand cmd = new SqlCommand(query, con);
            sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            con.Open();

            cmd.ExecuteNonQuery();
            con.Close();

            if (!object.Equals(ds.Tables[0], null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    htmlTable.Append("<table width = '100%' class='table table-striped table-bordered table-hover' id='dataTables-DisposedAssets'>");
                    htmlTable.Append("<thead>");
                    htmlTable.Append("<tr>");
                    htmlTable.Append("<th>CE Number </th>");
                    htmlTable.Append("<th>Asset Name </th>");
                    htmlTable.Append("<th> Asset Description </th>");
                    htmlTable.Append("<th> Serial Number </th>");
                    htmlTable.Append("<th> Purchased Date </th>");
                    htmlTable.Append("</tr>");
                    htmlTable.Append("</thead>");
                    htmlTable.Append("<tbody>");
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["CENumber"] + " </td>");
                        htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["AssetName"] + "</td>");
                        htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["AssetDescription"] + "</td>");
                        htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["SerialNumber"] + "</td>");
                        htmlTable.Append("<td>" + ds.Tables[0].Rows[i]["PurchaseDate"] + "</td>");
                        htmlTable.Append("</tr>");
                    }
                    htmlTable.Append("</tbody>");
                    htmlTable.Append("</table>");
                    DisposedAssetsPlaceHolder.Controls.Add(new Literal { Text = htmlTable.ToString() });
                }
            }
        }
    }
}