<%@ Page Title="" Language="C#" MasterPageFile="~/SG.Master" AutoEventWireup="true" CodeBehind="household.aspx.cs" Inherits="website.WebForm5" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
  <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Info boxes -->
       <div class="text-right">
  <a  style="margin-top:2px;" href="#" class="btn btn-primary btn-rounded mb-4" data-toggle="modal" data-target="#modalLoginForm">Add Guest</a>
</div>
        <div class="row">
          <div class="col-12 col-sm-12 col-md-3">
            <div class="info-box">
              <span class="info-box-icon bg-info elevation-1"><i class="fas fa-cog"></i></span>
              <div class="info-box-content">
                <span class="info-box-text">Newspaper</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          </div>
        </div>
      </section>
   <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">Add Guest</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-4">
          <asp:TextBox class="form-control validate" ID="name" placeholder="Guest Name" runat="server"></asp:TextBox>
        </div>
        <div class="md-form mb-4">
           <asp:TextBox class="form-control validate" ID="people" placeholder="No of people" runat="server"></asp:TextBox>
         </div>
        <div class="md-form mb-4">
           <asp:TextBox class="form-control validate" ID="contact" placeholder="Contact Number" runat="server"></asp:TextBox>
         </div>
         <div class="md-form mb-4">
           <asp:TextBox class="form-control validate" ID="txtDatePicker" placeholder="Coming On" runat="server"></asp:TextBox>
         </div>
      </div>
      <div  class="modal-footer d-flex justify-content-center">
        <asp:Button class="btn btn-success" ID="add_guest" runat="server" Text="Add Guest" />
      </div>
    </div>
  </div>
  </form>
</div>
</div>
<script>
    $(function (){  
    $('#txtDatePicker').datepicker(  
    {  
        dateFormat: 'dd/mm/yy',  
        changeMonth: true,  
        changeYear: true,  
        yearRange: '1950:2100'  
    });  
    }) 
</script>
</asp:Content>
