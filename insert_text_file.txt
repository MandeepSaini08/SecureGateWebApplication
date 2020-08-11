<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="website.WebForm4" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SECURE GATE</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="../../plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition register-page style="background-image:url(dist/img/login-background.png); background-repeat:no-repeat; background-attachment:fixed; background-size:100% 100%;">
<div class="register-box">
  <div class="register-logo">
    <a href="Login.aspx"><b>SECURE</b>|GATE</a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">Register a new Member</p>

      <form id="form" runat="server" method="post">
        <div class="input-group mb-3">
         <asp:TextBox ID="txtname" class="form-control" runat="server" placeholder="Enter your full name"></asp:TextBox> 
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is a required field" ForeColor="Red" ControlToValidate="txtname"></asp:RequiredFieldValidator> 
         <div class="input-group mb-3">
         <asp:TextBox ID="txtuser" class="form-control" runat="server" placeholder="Enter a user name"></asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fa fa-user"></span>
            </div>
          </div>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="User Name is a required field" 
          ControlToValidate="txtuser" ForeColor="Red"></asp:RequiredFieldValidator> 
         <div class="input-group mb-3">
         <asp:TextBox ID="txtadd" class="form-control" runat="server" placeholder="Enter your address"></asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fa fa-address-card"></span>
            </div>
          </div>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address is a required field" 
          ControlToValidate="txtadd" ForeColor="Red"></asp:RequiredFieldValidator> 
         <div class="input-group mb-3">
          <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="Enter your email here"></asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email is a required field" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator> 
         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter a valid Email Address" 
          ValidationExpression="[\w-]+@([\w-]+\.)+[\w-]+" ForeColor="Red"
           ControlToValidate="txtemail"></asp:RegularExpressionValidator>
        <div class="input-group mb-0">
          <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" placeholder="Enter the password here" TextMode="Password"></asp:TextBox>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div><br />
        <div class="input-group mb-0"> 
        <asp:TextBox ID="txtrepass" class="form-control" runat="server" placeholder="Retype the password here" TextMode="Password"></asp:TextBox>   
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Password is a required field" ForeColor="Red" ControlToValidate="txtpass"></asp:RequiredFieldValidator> 
         <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="agreeTerms" name="terms" value="agree">
              <label for="agreeTerms">
               I agree to the <a href="#">terms</a>
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div style="margin-left:15%" class="col-8">
            <asp:Button ID="register_button" CssClass="btn btn-primary btn-block" runat="server" Text="Register" OnClick="register_button_Click" />
            </div>
          <!-- /.col -->
        </div>
      </form>

      <div class="social-auth-links text-center">
        <p>- OR -</p>
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i>
          Sign up using Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google mr-2"></i>
          Sign up using Google
        </a>
      </div>

      <a runat="server" href="login.aspx" class="text-center" style=" margin-left:60px;">I already have a membership</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<!-- jQuery -->
<script src="../../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
</body>
</html>
