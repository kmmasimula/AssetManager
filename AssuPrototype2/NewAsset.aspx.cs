using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssuPrototype2
{
    public partial class NewAsset : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        private void LoadAssetTypes()
        {
            DataTable AssetTypes = new DataTable();
            using (con)
            {

                try
                {
                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT * FROM AssetType", con);
                    adapter.Fill(AssetTypes);

                    drpdwnAssetType.DataSource = AssetTypes;
                    drpdwnAssetType.DataTextField = "AssetTypeDescription";
                    drpdwnAssetType.DataValueField = "AssetTypeID";
                    drpdwnAssetType.DataBind();
                }
                catch (Exception ex)
                {
                    // Handle the error
                }

            }

            drpdwnAssetType.Items.Insert(0, new ListItem("<Select Asset Type>", "0"));
        }

        protected void BtnAddAsset_Click(object sender, EventArgs e)
        {
            string query = "INSERT INTO Assets(CENumber,AssetName,AssetDescription, SerialNumber,PurchaseValue) VALUES (@CENum,@AssetName,@AseetDesc,@SerialNum)";
            SqlCommand cmd = new SqlCommand(query, con);

            //CENumber***********
            int CENum = Convert.ToInt32(txtCeNum.Text);
            cmd.Parameters.AddWithValue("CENumber", CENum);

            //Asset Name************
            string AssetName = txtAssetName.Text;
            cmd.Parameters.AddWithValue("AssetName", AssetName);

            //Asset Description*************
            //Request.Form["txtAssetDesc"];
            TextBox AssetDesc = (TextBox)Page.FindControl("txtAssetDesc");
            cmd.Parameters.AddWithValue("AssetDescription", AssetDesc);

            //Serial Number*************
            string SerialNum = txtSerial.Text;
            cmd.Parameters.AddWithValue("SerialNumber", SerialNum);

            //Asset Type*************
           
        //Group Code*************

        //Purchase Date*************

        //Purchase Value*************


    }
}
