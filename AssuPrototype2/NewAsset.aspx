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
                            <div class="row">
                                <div class="col-lg-5">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>CE Number</label>
                                            <asp:TextBox ID="txtCeNum" runat="server" class="form-control" placeholder="CE Number"></asp:TextBox>
                                        </div>
                                    </form>
                                </div>

                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Asset Name</label>
                                            <asp:TextBox ID="txtAssetname" runat="server" class="form-control" placeholder="Asset Name"></asp:TextBox>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.row (nested) -->
                            </div>


                            <div class="row">
                                <div class="col-lg-5">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Asset Description</label>
                                            <textarea id="txtImagename1" name="txtImagename1" class="form-control" runat="server" rows="6"></textarea>
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
                                        <asp:DropDownList ID="drpdwnAssetType" AppendDataBoundItems="true" class="form-control" runat="server"></asp:DropDownList>
                                        <asp:ListItem Text="<Select Subject>" Value="0" />
                                    </div>

                                </div>
                                <!-- /.row (nested) -->
                            </div>


                            <div class="row">
                                <div class="col-lg-5">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Purchase Date</label>
                                            <input class="form-control" placeholder="Enter text">
                                        </div>
                                    </form>
                                </div>

                                <div class="form-group">
                                    <div class="col-lg-6">
                                         <div class="form-group">
                                        <label>Asset Type</label>
                                        <asp:DropDownList ID="drpdwnGroupCode" AppendDataBoundItems="true" class="form-control" runat="server"></asp:DropDownList>
                                        <asp:ListItem Text="<Select Group Code>" Value="0" />
                                    </div>
                                    </div>
                                </div>
                                <!-- /.row (nested) -->
                            </div>
                            <asp:Button ID="BtnAddAsset" class="btn btn-primary btn-lg" runat="server" Text="Add Asset" OnClick="BtnAddAsset_Click" />
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
    </form>


</asp:Content>
