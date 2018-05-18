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
                                            <input class="form-control" placeholder="Enter text">
                                        </div>
                                    </form>
                                </div>

                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Asset Name</label>
                                            <input class="form-control" placeholder="Enter text">
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
                                            <textarea class="form-control" rows="5"></textarea>
                                        </div>
                                    </form>
                                </div>

                                <div class="col-lg-6">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Serial Number</label>
                                            <input class="form-control" placeholder="Enter text">
                                        </div>
                                    </form>

                                    <div class="form-group">
                                        <label>Asset Type</label>
                                        <select class="form-control">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
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
                                        <label>Group Code</label>
                                        <select class="form-control">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                          </div>
                                    </div>
                                <!-- /.row (nested) -->
                            </div>
                            <asp:Button ID="BtnAddAsset" class="btn btn-primary btn-lg" runat="server" Text="Add Asset" />
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
