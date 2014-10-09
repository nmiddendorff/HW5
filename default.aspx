<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="NelsonCSS.css"/>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
   <h2 style="text-align: center"> Calculate your Mortgage: </h2>
        <div class="auto-style1">
            <br /><br />
     
        Loan Amount:&nbsp; <asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
       
        &nbsp; <span class="red">* </span><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please Enter a Loan Amount" CssClass="red"></asp:RequiredFieldValidator>
        <br /><br />      
        
        Annual Interest %:&nbsp;&nbsp; <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        &nbsp; <span class="red">* </span><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please Enter your Annual Interest" CssClass="red"></asp:RequiredFieldValidator>
        <br /><br />

        Loan Term (Yrs):&nbsp;&nbsp; <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        &nbsp; <span class="red">*</span> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please Enter the number of years" CssClass="red"></asp:RequiredFieldValidator>
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        <asp:Button ID="btnClear" runat="server" Text="Clear" />
        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
       
           
      
        <%If Not IsPostBack Then%>
        </div>
        <p>Welcome to the mortgage Calculator. Please fill in the following fields to calculate your monthly payment</p>
        
        <%Else%>
        <br />
        <br />
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview">
        <AlternatingRowStyle CssClass="alt" />
            </asp:GridView>
            <%End If %>

        </div>
    </form>
</body>
</html>
