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

            //For Asset Type
            string AssetTypeQuery = "Select * from AssetType";
            SqlDataAdapter AssetSDA = new SqlDataAdapter(AssetTypeQuery, con);
            DataTable AssetDT = new DataTable();
            AssetSDA.Fill(AssetDT);
            drpdwnAssetType.DataSource = AssetDT;
            drpdwnAssetType.DataBind();
            drpdwnAssetType.DataTextField = "AssetTypeDescription";
            drpdwnAssetType.DataValueField = "AssetTypeID";
            drpdwnAssetType.DataBind();

            //For GroupCode
            string GroupCodeQuery = "Select * from GroupCode";
            SqlDataAdapter GroupCodeSDA = new SqlDataAdapter(GroupCodeQuery, con);
            DataTable GroupCodeDT = new DataTable();
            GroupCodeSDA.Fill(GroupCodeDT);
            drpdwnGroupCode.DataSource = GroupCodeDT;
            drpdwnGroupCode.DataBind();
            drpdwnGroupCode.DataTextField = "GroupCodeDescription";
            drpdwnGroupCode.DataValueField = "GroupCodeID";
            drpdwnGroupCode.DataBind();

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
           




        }
    }
}