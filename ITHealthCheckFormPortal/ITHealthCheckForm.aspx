<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ITHealthCheckForm.aspx.cs" Inherits="ITHealthCheckFormPortal.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Style.css" rel="stylesheet" />
    
    <title>IT Health Check Form</title>
</head>

<body>

    <div class="MainLayout  ">
        <div class="sub-layout">
            <div class="menu-container"></div>
            <div class="header">
                <div class="logo">

                    <img src="images/xgs-logo-new.png"/>
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

                                

                                    <table border='0' width='600px' cellpadding='0' cellspacing='0' align='center'>
                                        <tr class="tr-size">
                                            <td align='center'>Email:</td>
                                            <td>
                                                <input type="email" id="email" name="email" runat="server" class="input-container" style="width:88% !important;" required/></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr class="tr-size">
                                            <td align='center'>Terminal:</td>
                                            <td>
                                              
                                                <asp:DropDownList ID="ddlTerminal" runat="server" class="input-container"></asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr class="tr-size">
                                            <td align='center'>Printer:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlPrinter" runat="server" class="input-container" onChange="ddlPrinterClick()">
                                                    <asp:ListItem Text="-- Select --" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlPrinter" InitialValue="-99" runat="server" ForeColor="Red" />
                                            </td>
                                        </tr>
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr id="trPrint" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input placeholder="Enter Description" type='text' id="txtPrinterDesc" name='txtPrinterDesc' runat="server" style="width:88%;padding:5px 3px 64px 1px;" disabled required/></td>
                                        </tr>
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr class="tr-size">
                                            <td align='center'>Computer:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlComputer" runat="server" class="input-container" onChange="ddlComputerClick()">
                                                    <asp:ListItem Text="-- Select --" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlComputer" InitialValue="-99" runat="server" ForeColor="Red" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                         <tr id="trComputer" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input placeholder="Enter Description" type='text' id="txtComputerDesc" name='txtComputerDesc' runat="server" style="width:88%;padding:5px 3px 64px 1px;" disabled required/></td>
                                        </tr>
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr class="tr-size">
                                            <td align='center'>Wireless:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlWireless" runat="server" class="input-container" onChange="ddlWirelessClick()">
                                                    <asp:ListItem Text="-- Select --" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlWireless" InitialValue="-99" runat="server" ForeColor="Red" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr id="trWireless" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input placeholder="Enter Description" type='text' id="txtWirelessDesc" name='txtWirelessDesc' runat="server" style="width:88%;padding:5px 3px 64px 1px;" disabled required/></td>
                                        </tr>
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr class="tr-size">
                                            <td align='center'>Tablet:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlTablet" runat="server" class="input-container" onChange="ddlTabletClick()">
                                                    <asp:ListItem Text="-- Select --" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlTablet" InitialValue="-99" runat="server" ForeColor="Red" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                         
                                        <tr id="trTablet" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input placeholder="Enter Description" type='text' id="txtTabletDesc" name='txtTabletDesc' runat="server" style="width:88%;padding:5px 3px 64px 1px;" disabled required/></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr class="tr-size">
                                            <td align='center'>Desk Phone:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlDeskPhone" runat="server" class="input-container" onChange="ddlDeskPhoneClick()">
                                                    <asp:ListItem Text="-- Select --" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlDeskPhone" InitialValue="-99" runat="server" ForeColor="Red" />
                                            </td>
                                        </tr>
                                        
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr id="trDeskPhone" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input placeholder="Enter Description" type='text' id="txtDeskPhoneDesc" name='txtDeskPhoneDesc' runat="server" style="width:88%;padding:5px 3px 64px 1px;" disabled required/></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr class="tr-size">
                                            <td align='center'>Copier:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlCopier" runat="server" class="input-container" onChange="ddlCopierClick()">
                                                    <asp:ListItem Text="-- Select --" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlCopier" InitialValue="-99" runat="server" ForeColor="Red" />
                                            </td>
                                        </tr>
                                   
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr id="trCopier" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input placeholder="Enter Description" type='text' runat="server" id="txtCopierDesc" name='txtCopierDesc' style="width:88%;padding:5px 3px 64px 1px;" disabled required/></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr class="tr-size">
                                            <td align='center'>Scan Gun:</td>
                                            <td>
                                                <asp:DropDownList ID="ddlScanGun" runat="server" class="input-container" onChange="ddlScanGunClick()">
                                                    <asp:ListItem Text="-- Select --" Value="-99" />
                                                    <asp:ListItem Text="Not applicable" Value="0" />
                                                    <asp:ListItem Text="Critical" Value="4" />
                                                    <asp:ListItem Text="Urgent" Value="3" />
                                                    <asp:ListItem Text="Needs attention" Value="2" />
                                                    <asp:ListItem Text="No Problems" Value="1" />
                                                </asp:DropDownList>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ErrorMessage="*" ControlToValidate="ddlScanGun" InitialValue="-99" runat="server" ForeColor="Red" />
                                            </td>
                                        </tr>
                                        
                                         <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr id="trScanGun" style="display:none;">

                                            <td align='center'>Issue Description:</td>
                                            <td><input placeholder="Enter Description" requiredtype='text' id="txtScanGun" name='txtScanGun'  runat="server" style="width:88%;padding:5px 3px 64px 1px;" disabled required/></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <table border='0' cellpadding='0' cellspacing='0' width='600px' align='center'>
                                            <tr>
                                                <td align='center'>
                                                    <div class="submit-button">
                                                        <asp:Button ID="Button1" runat="server" Text="SUBMIT" CssClass="form-submit-button" OnClick="Button1_Click"/>
                                                    </div>
                                                </td>
                                            </tr>
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

     <script>
         function ddlPrinterClick() {

             var e = document.getElementById("ddlPrinter");
             var value = e.value;
             
             var text = e.options[e.selectedIndex].text;
             var row = document.getElementById('txtPrinterDesc');
             if (value === "1" || value === "-99" || value === "0") {

                 document.getElementById('trPrint').style.display = "none";
                 row.disabled = true;
             }
             else {
                 document.getElementById('trPrint').style.display = "";
                 row.disabled = false;
             }

                 
         }
         function ddlComputerClick() {

             var e = document.getElementById("ddlComputer");
             var value = e.value;
             
             var text = e.options[e.selectedIndex].text;
             var row = document.getElementById('txtComputerDesc');
             if (value == "1" || value == "-99" || value == "0") {

                 document.getElementById('trComputer').style.display = "none";
                 row.disabled = true;
             }
             else {
                 document.getElementById('trComputer').style.display = "";
                 row.disabled = false;
             }
                 
         }
         function ddlWirelessClick() {

             var e = document.getElementById("ddlWireless");
             var value = e.value;
             
             var text = e.options[e.selectedIndex].text;
             var row = document.getElementById('txtWirelessDesc');
             if (value === "1" || value === "-99" || value === "0") {

                 document.getElementById('trWireless').style.display = "none";
                 row.disabled = true;
             }
             else {
                 document.getElementById('trWireless').style.display = "";
                 row.disabled = false;
             }
         }
         function ddlTabletClick() {

             var e = document.getElementById("ddlTablet");
             var value = e.value;
             
             var text = e.options[e.selectedIndex].text;
             var row = document.getElementById('txtTabletDesc');
             if (value === "1" || value === "-99" || value === "0") {

                 document.getElementById('trTablet').style.display = "none";
                 row.disabled = true;
             }
             else {
                 document.getElementById('trTablet').style.display = "";
                 row.disabled = false;
             }
         }
         function ddlDeskPhoneClick() {

             var e = document.getElementById("ddlDeskPhone");
             var value = e.value;
             
             var text = e.options[e.selectedIndex].text;
             var row = document.getElementById('txtDeskPhoneDesc');
             if (value === "1" || value === "-99" || value === "0") {

                 document.getElementById('trDeskPhone').style.display = "none";
                 row.disabled = true;
             }
             else {
                 document.getElementById('trDeskPhone').style.display = "";
                 row.disabled = false;
             }
         }
         function ddlCopierClick() {

             var e = document.getElementById("ddlCopier");
             var value = e.value;
             
             var text = e.options[e.selectedIndex].text;
             var row = document.getElementById('txtCopierDesc');
             if (value === "1" || value === "-99" || value === "0") {

                 document.getElementById('trCopier').style.display = "none";
                 row.disabled = true;
             }
             else {
                 document.getElementById('trCopier').style.display = "";
                 row.disabled = false;
             }
         }
         function ddlScanGunClick() {

             var e = document.getElementById("ddlScanGun");
             var value = e.value;
             
             var text = e.options[e.selectedIndex].text;
             var row = document.getElementById('txtScanGun');
             if (value === "1" || value === "-99" || value === "0") {

                 document.getElementById('trScanGun').style.display = "none";
                 row.disabled = true;
             }
             else {
                 document.getElementById('trScanGun').style.display = "";
                 row.disabled = false;
             }
         }
    </script>
</body>


</html>
