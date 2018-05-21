<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="NewAsset.aspx.cs" Inherits="AssuPrototype2.NewAsset" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <form id="form1" runat="server">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Add New Asset</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Add Asset Details
                       
                        </div>
                        <div class="panel-body">
                            <!--Row 1--->
                            <div class="row">
                                <div class="col-lg-5">
                                    <form role="form">
                                        <label>CE Number</label>
                                       <div class="form-group input-group">
                                            <span class="input-group-addon">CE</span>
                                            <asp:TextBox ID="txtCeNum" runat="server" class="form-control" placeholder="Number"></asp:TextBox>
                                        </div>
                                    </form>
                                </div>

                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Asset Name</label>
                                            <asp:TextBox ID="txtAssetName" runat="server" class="form-control" placeholder="Asset Name"></asp:TextBox>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.row (nested) -->
                            </div>

                            <!--Row 2--->
                            <div class="row">
                                <div class="col-lg-5">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Asset Description</label>
                                            <textarea id="txtAssetDesc" name="txtAssetDesc" class="form-control" rows="10"></textarea>
                                        </div>
                                    </form>
                                </div>

                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Serial Number</label>
                                            <asp:TextBox ID="txtSerial" runat="server" class="form-control" placeholder="Serial Number"></asp:TextBox>
                                        </div>
                                    </form>

                                    <div class="form-group">
                                        <label>Asset Type</label>
                                        <asp:DropDownList ID="drpdwnAssetType"  class="form-control" runat="server"></asp:DropDownList>
                                        
                                    </div>

                                    <div class="form-group">
                                        <div class="form-group">
                                            <label>Group Code</label>
                                            <asp:DropDownList ID="drpdwnGroupCode"  class="form-control" runat="server"></asp:DropDownList>
                                        </div>

                                    </div>

                                </div>
                                <!-- /.row (nested) -->
                            </div>

                            <!--Row 3--->
                            <div class="row">
                                <div class="col-lg-5">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Purchase Date</label>
                                            <asp:TextBox ID="txtPurchDate" runat="server" class="form-control" placeholder="Purchase Date"></asp:TextBox>
                                        </div>
                                    </form>
                                </div>


                                <div class="col-lg-6">
                                    <form role="form">
                                        <label>Purchase Value</label>
                                       <div class="form-group input-group">
                                            <span class="input-group-addon">R</span>
                                            <asp:TextBox ID="txtPurchValue" runat="server" class="form-control" placeholder="Purchase Value" ></asp:TextBox>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <hr />
                        
                        <asp:Button ID="BtnAddAsset" class="btn btn-primary btn-lg" runat="server" Text="Add Asset" OnClick="BtnAddAsset_Click" />

                            </div>

                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        
        <!-- /#page-wrapper -->
    </form>
    


</asp:Content>
