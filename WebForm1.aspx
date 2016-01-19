<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TourPlanWeb.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
    <script src="js/index.js"></script>

        <%--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">--%>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


    <link href="css/Datetimepicker.css" rel="stylesheet" />
    <script src="js/bootstrap-datepicker.js"></script>

    <script type="text/javascript">
            // When the document is ready
            $(document).ready(function () {
                $('#txtDOB').datepicker({
                    format: "dd/mm/yyyy"
                });

            });
     </script>
        <script type="text/javascript">
            // When the document is ready
            $(document).ready(function () {
                $('#drpCheckOut').datepicker({
                    format: "dd/mm/yyyy"
                });

            });
     </script>


    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>
<script type="text/javascript">
    $(function () {
        $('[id*=GridView1]').footable();
    });
</script>

</head>
<body>
    <%--<form id="form1" runat="server">--%>

        <div class="wrapper">
	<div class="container">
		<h1>Search Creteria</h1>
		
		<form class="form" runat="server">

                <asp:Label ID="Label1" runat="server" Text="Booking Name : "></asp:Label> 

            <asp:TextBox ID="txtBookingName" runat="server"></asp:TextBox> 
            
            <span style="margin-left: 240px;">
                <asp:Label ID="Label4" runat="server" Text="Status : "></asp:Label>
            <asp:DropDownList ID="drpStatus" runat="server"></asp:DropDownList> <br />
            </span>
            

            <br />

            <span style="margin-left:35px">
            <asp:Label ID="Label2" runat="server" Text="Pax : "></asp:Label>
            <asp:TextBox ID="txtPax" Width="50" runat="server"></asp:TextBox>
            </span>
    
            <span style="margin-left:200px">
                <asp:Label ID="Label3" runat="server" Text="Check In : "></asp:Label>
                <asp:TextBox ID="txtDOB" runat="server" Style="width: 120px;"></asp:TextBox>
            </span>
                
            <span style="margin-left:40px">
                <asp:Label ID="Label5" runat="server" Text="Check Out : "></asp:Label>
                <asp:TextBox ID="drpCheckOut" CssClass="form-control" runat="server" Style="width: 120px;"></asp:TextBox>
            </span>

            <br /><br />
			
            <span style="margin-top:30px">
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
            </span>


            <span>

                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </span>
            

		</form>
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/index.js"></script>

    <%--</form>--%>
</body>
</html>
