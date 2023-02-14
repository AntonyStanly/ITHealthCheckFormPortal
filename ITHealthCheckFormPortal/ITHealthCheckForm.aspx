<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ITHealthCheckForm.aspx.cs" Inherits="ITHealthCheckFormPortal.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Style.css" rel="stylesheet" />
    
    <title>IT Health Check Form</title>
</head>

<body>
   
    <script>
        function ddlPrinterClick() {
         
            var e = document.getElementById("ddlPrinter");
            var value = e.value;
            debugger;
            var text = e.options[e.selectedIndex].text;
            var row = document.getElementById('trPrint');          
            if (value == "1" || value == "-99" || value == "0") {
                row.style.display = "none";
            }
            else
                row.style.display = "";
        }
        function ddlComputerClick() {

            var e = document.getElementById("ddlComputer");
            var value = e.value;
            debugger;
            var text = e.options[e.selectedIndex].text;
            var row = document.getElementById('trComputer');
            if (value == "1" || value == "-99" || value == "0") {
                row.style.display = "none";
            }
            else
                row.style.display = "";
        }
        function ddlWirelessClick() {

            var e = document.getElementById("ddlWireless");
            var value = e.value;
            debugger;
            var text = e.options[e.selectedIndex].text;
            var row = document.getElementById('trWireless');
            if (value == "1" || value == "-99" || value == "0") {
                row.style.display = "none";
            }
            else
                row.style.display = "";
        }
        function ddlTabletClick() {

            var e = document.getElementById("ddlTablet");
            var value = e.value;
            debugger;
            var text = e.options[e.selectedIndex].text;
            var row = document.getElementById('trTablet');
            if (value == "1" || value == "-99" || value == "0") {
                row.style.display = "none";
            }
            else
                row.style.display = "";
        }
        function ddlDeskPhoneClick() {

            var e = document.getElementById("ddlDeskPhone");
            var value = e.value;
            debugger;
            var text = e.options[e.selectedIndex].text;
            var row = document.getElementById('trDeskPhone');
            if (value == "1" || value == "-99" || value == "0") {
                row.style.display = "none";
            }
            else
                row.style.display = "";
        }
        function ddlCopierClick() {

            var e = document.getElementById("ddlCopier");
            var value = e.value;
            debugger;
            var text = e.options[e.selectedIndex].text;
            var row = document.getElementById('trCopier');
            if (value == "1" || value == "-99" || value == "0") {
                row.style.display = "none";
            }
            else
                row.style.display = "";
        }
        function ddlScanGunClick() {

            var e = document.getElementById("ddlScanGun");
            var value = e.value;
            debugger;
            var text = e.options[e.selectedIndex].text;
            var row = document.getElementById('trScanGun');
            if (value == "1" || value == "-99" || value == "0") {
                row.style.display = "none";
            }
            else
                row.style.display = "";
        }
    </script>

    <div class="MainLayout  ">
        <div class="sub-layout">
            <div class="menu-container"></div>
            <div class="header">
                <div class="logo">

                    <img src="images/XGS-Logo.png" />
                </div>
                <div class="heading">
                    <h3>IT Health Check Form</h3>
                </div>

            </div>
            <div class="body-content">
                <div class="form-container">
                    <div class="form-group">
                        <p>
                            Thank you. 
                             Your project is being sent to our programmers for review.
                             Depending on the current workload, please expect a response within 7 days.

                        </p>
                    </div>
                    <div class="body">
                        <div class="form-container">
                            <form id="form1" runat="server">
                                <div class="form-group">
                                    <p>Please fill out all fields with as much detail as possible. The information in this form will be added to Service desk portal and this will helps to improve the quality and performance of each asset based on user-specific experience and/or feedback.</p>
                                </div>
                                <div>
                                    <p><sup>*</sup>Required </p>
                                </div>

                                <table border='0' width='700px' cellpadding='0' cellspacing='0' align='center'>

                                    <table border='0' width='700px' cellpadding='0' cellspacing='0' align='center'>
                                        <tr>
                                            <td align='center'>Email:</td>
                                            <td>
                                                <input type='text' id="txtEmail" name='txtEmail' runat="server" style="width:88%;" /></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align='center'>Terminal:</td>
                                            <td>
                                              
                                                <asp:DropDownList ID="ddlTerminal" runat="server" style="width:90%;"></asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align='center'>Printer:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlPrinter" runat="server" style="width:90%;" onChange="ddlPrinterClick();">
                                                    <asp:ListItem Text="Select" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList></td>
                                        </tr>
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr id="trPrint" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input type='text' id="txtPrinterDesc" name='txtPrinterDesc' runat="server" style="width:88%;padding:5px 3px 64px 1px;" /></td>
                                        </tr>
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align='center'>Computer:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlComputer" runat="server" style="width:90%;" onChange="ddlComputerClick();">
                                                    <asp:ListItem Text="Select" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                         <tr id="trComputer" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input type='text' id="txtComputerDesc" name='txtComputerDesc' runat="server" style="width:88%;padding:5px 3px 64px 1px;" /></td>
                                        </tr>
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align='center'>Wireless:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlWireless" runat="server" style="width:90%;" onChange="ddlWirelessClick();">
                                                    <asp:ListItem Text="Select" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr id="trWireless" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input type='text' id="txtWirelessDesc" name='txtWirelessDesc' runat="server" style="width:88%;padding:5px 3px 64px 1px;" /></td>
                                        </tr>
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align='center'>Tablet:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlTablet" runat="server" style="width:90%;" onChange="ddlTabletClick();">
                                                    <asp:ListItem Text="Select" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                         
                                        <tr id="trTablet" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input type='text' id="txtTabletDesc" name='txtTabletDesc' runat="server" style="width:88%;padding:5px 3px 64px 1px;" /></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align='center'>Desk Phone:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlDeskPhone" runat="server" Style="width: 90%;" onChange="ddlDeskPhoneClick();">
                                                    <asp:ListItem Text="Select" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList></td>
                                        </tr>
                                        
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr id="trDeskPhone" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input type='text' id="txtDeskPhoneDesc" name='txtDeskPhoneDesc' runat="server" style="width:88%;padding:5px 3px 64px 1px;" /></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align='center'>Copier:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlCopier" runat="server" Style="width: 90%;" onChange="ddlCopierClick();">
                                                    <asp:ListItem Text="Select" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList></td>
                                        </tr>
                                   
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr id="trCopier" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input type='text' runat="server" id="txtCopierDesc" name='txtCopierDesc' style="width:88%;padding:5px 3px 64px 1px;" /></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align='center'>Scan Gun:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlScanGun" runat="server" Style="width: 90%;" onChange="ddlScanGunClick();">
                                                    <asp:ListItem Text="Select" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList></td>
                                        </tr>
                                        
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr id="trScanGun" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input type='text' id="txtScanGun" name='txtScanGun'  runat="server" style="width:88%;padding:5px 3px 64px 1px;" /></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <table border='0' cellpadding='0' cellspacing='0' width='700px' align='center'>
                                            <tr>
                                                <td align='center'>
                                                    <div class="submit-button">
                                                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-danger" OnClick="Button1_Click" />
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </table>

                                </table>













                                <asp:Label ID="iblMessage" runat="server" Text="" Font-Size="Small" ForeColor="Red"></asp:Label>



                            </form>
                        </div>
                    </div>




                </div>
            </div>

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


            <div class="footer">
                <div class="footer-text">

                    <p>
                        <a href="https://www.xgsi.com/policy/privacy/">Privacy Notice</a> | <a href="https://www.xgsi.com/policy/terms-and-conditions/">Terms and Condition</a>| <a href="https://www.xgsi.com/policy/disclaimer/">Disclaimer</a> | <a href="https://www.xgsi.com/policy/cookie-policy/">Cookie Policy</a> | ©<%: DateTime.Now.Year %>  Xpress Global Systems, LLC. All rights reserved.
                    </p>
                </div>

            </div>
        </div>
    </div>


</body>


</html>
