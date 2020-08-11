<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="website.WebForm3" %>

<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>AdminLTE 3 | Log in</title>
      <!-- Tell the browser to be responsive to screen width -->
     <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- Font Awesome -->
     <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
     <!-- Ionicons -->
     <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
     <!-- icheck bootstrap -->
     <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
     <!-- Theme style -->
     <link rel="stylesheet" href="dist/css/adminlte.min.css">
     <!-- Google Font: Source Sans Pro -->
     <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page" style="background-image:url(dist/img/login-background.png); background-repeat:no-repeat; background-attachment:fixed; background-size:100% 100%;">
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [admin]"></asp:SqlDataSource>
<div  style="opacity:0.80 " class="login-box">
    <div class="login-logo">
       <a href="dashboard.aspx" style="color:#ffffff;"><b>Secure</b>Gate</a>
    </div>
    <!-- /.login-logo -->
    <div class="card">
       <div class="card-body login-card-body">
          <p class="login-box-msg">Sign in to start your session</p>
          <form id="form1" runat="server" >
              <div class="input-group mb-3">
                    <asp:TextBox class="form-control" placeholder="Login Id" ID="txtuser" runat="server"></asp:TextBox>
                   <div class="input-group-append">
                      <div class="input-group-text">
                          <span class="fas fa-envelope"></span>
                      </div>
                   </div>
              </div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="username is an required field" ControlToValidate="txtuser"
                font-size="10" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
              <div class="input-group mb-3">
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" class="form-control" placeholder="Enter your Password"  ></asp:TextBox>
                <div class="input-group-append">
                    <div class="input-group-text">
                      <span class="fas fa-lock"></span>
                    </div>
                </div>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" ControlToValidate="txtpass" 
            font-size="10" SetFocusOnError="true" ForeColor="Red"></asp:RequiredFieldValidator>
            <div class="row">
                <div class="col-8">
                  <div class="icheck-primary">
                      <input type="checkbox" id="remember">
                      <label for="remember">
                        Remember Me
                      </label>
                  </div>
             </div>
              <!-- /.col -->
              <div style="margin-left:25%;" class="col-6">
                <br />
                <asp:Button ID="login_button" runat="server" Text="Sign In" class="btn btn-primary btn-block" OnClick="login_button_Click"/>
                </div>
              <!-- /.col -->
            </div>
          </form>

          <div class="social-auth-links text-center mb-3">
                  <p>- OR -</p>
                  <a href="#" class="btn btn-block btn-primary">
                     <i class="fab fa-facebook mr-2"></i> Sign in using Facebook
                  </a>
                  <a href="#" class="btn btn-block btn-danger">
                    <i class="fab fa-google mr-2"></i> Sign in using Google
                  </a>
          </div>
              <!-- /.social-auth-links -->
              <p class="mb-1">
                  <a  style="text-align:center; letter-spacing: 3px; margin-left: 25%" href="forgot-password.html">Forgot Password</a>
              </p>
       </div>
        <!-- /.login-card-body -->
    </div>
</div>
    <!-- /.login-box -->
    <!-- jQuery -->
    <script src="../../plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="../../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/adminlte.min.js"></script>
  
</body>
</html>

