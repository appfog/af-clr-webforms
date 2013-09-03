<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="AppfogHelloWorldApp.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.2.1/pure-min.css" />
    <link rel="stylesheet" type="text/css" href="css/site.css" />
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
  </style>
</head>
<body>
  <div class="pure-g-r">
    <div class="pure-u-1-4"></div>
    <div class="pure-u-1-2">
    <div class="content">
      <div id="clouds_blue"><img src="img/clouds_blue.png"></div>

      <h1>Hello World</h1>
      <p>Welcome to Appfog.</p>
      <hr />
      
      <div>
        <h2>Try It!</h2>
        <p>Type something in the text box and update the label by doing a post back server side.</p>
        <form id="form1" class="pure-form" runat="server">
          <h4>
            <asp:Label class="content-quote" ID="testLabel" runat="server" Text="Label"></asp:Label>
          </h4>
          <asp:TextBox runat="server" ID="txtSetLabel"></asp:TextBox>
          <asp:Button class="pure-button" ID="btnChangeLabel" runat="server" Text="Change Text" OnClick="btnChangeLabel_Click" />
        </form>
      </div>
      <hr />
      
      <div>
        <h2>Application Settings</h2>
        <asp:Panel ID="settingsPanel" runat="server"></asp:Panel>
      </div>
      
    </div>
 
  </div>
</body>
</html>
