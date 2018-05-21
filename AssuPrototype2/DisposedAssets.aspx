<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="DisposedAssets.aspx.cs" Inherits="AssuPrototype2.DisposedAssets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Disposed Assets</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
     <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Disposed Assets
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            
                            <!---Table  Under Here-->
                            
                             <asp:PlaceHolder ID="DisposedPlaceHolder" runat="server"></asp:PlaceHolder>  
                              

                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
          </div>










</asp:Content>
