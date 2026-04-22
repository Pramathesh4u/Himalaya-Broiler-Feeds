<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Stock.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>:: NITA - PHD APPLICATION PORTAL ::</title>
    <link rel="stylesheet" href="printchallan.aspx_files/StyleSheet.css" type="text/css" />
    <link href="CSS/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">
        function CallPrint(strid) {
            var prtContent = document.getElementById(strid);
            var WinPrint = window.open('', '', 'letf=0,top=0,width=1000,height=800,toolbar=0,scrollbars=0,status=0');
            var policy = '1';
            WinPrint.document.write(prtContent.innerHTML);
            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
            WinPrint.close();
        }
        </script>
</head>
 
<body>
    <form id="form1" runat="server">
    <div>
     <div id="wrapper">
                <div id="content-page">
                    <div id="content-body">
                        <div style="vertical-align:top">
                            <table style="width:100%">
                                <tr>
                                    <td style="width:50%">
                                        <a href="#" class="printdoctext" title="Click here for print challan" onclick="javascript:CallPrint('DivToprint');">
                            <img src="images/print.jpg" alt="print this page" style="border-width: 0px;" />
                                Click here for print challan</a>
                                    </td>
                                    <td style="width:50%;text-align:right">
                                        <asp:LinkButton ID="lnk" runat="server" PostBackUrl="~/feepayment.aspx" Text="Go Back" />
                                    </td>
                                </tr>
                            </table>
                            
                        </div>
                        <div class="Clear">
                        </div>
                        <div class="clear">
                        </div>
                        <div id="DivToprint">
                            <link href="CSS/PrintChallan.css" rel="stylesheet" type="text/css" />
                            <style>
                                @page land
                                {
                                    size: landscape;
                                }
                                .style1
                                {
                                    text-align: justify;
                                }
                                .style2
                                {
                                    font-size: medium;
                                    text-decoration: underline;
                                }
                            </style>
                            <div class="challan">
                                <table class="bottomborder" border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tbody>
                                        <tr>
                                            <td valign="top" width="99%">
                                                
                                                <table class="noborder innerchallan" border="0" cellpadding="0" cellspacing="0" width="100%">
                                                    <tbody>
                                                        <tr>
                                                            <td colspan="4" align="center" style="text-decoration: underline">
                                                                <strong>(Applicant Copy)</strong>
                                                            </td>
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td colspan="4" align="center" style="padding: 11px">
                                                              
                                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                                    Text="NATIONAL INSTITUTE OF TECHNOLOGY AGARTALA"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="Label2" runat="server" Text="Jirania, Tripura(W) - 799046"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="Label5" runat="server" Text="(0381)2346-360/630"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="Label3" runat="server" Text="https://www.nita.ac.in"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="Label4" runat="server" Font-Size="Small" 
                                                                    Text="PHD APPLICATION FORM"></asp:Label>
                                                              
                                                            </td>
                                                           
                                                        </tr>
                                                        
                                                       
                                                        
                                                        </tbody></table>
                                                        <table class="noborder innerchallan" border="1" cellpadding="0" cellspacing="0" width="100%">
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:20%; font-size: medium;">
                                                            Applicant&#39;s Photo</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium; vertical-align:top;">
                                                            &nbsp;&nbsp;
                                                            <asp:Image ID="imgPhoto" runat="server" BorderColor="Black" BorderStyle="Solid" 
                                                                BorderWidth="1" Height="100px" ImageUrl="~/IMAGES/nophoto.jpg" Width="100px" />
                                                            </td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             Applicant&#39;s Signature</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium; vertical-align:top;">



                                                             &nbsp; &nbsp;<asp:Image ID="ImgSign" runat="server" Width="125px" Height="40px" BorderColor="Black"
                                                                ImageUrl="~/IMAGES/nophoto.jpg" BorderStyle="Solid" BorderWidth="1" />
                                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:20%; font-size: medium;">
                                                            Application Type</td>
                                                        <td colspan="3" style="font-family:Cambria; width:25%; font-size: medium; vertical-align:top;">
                                                            &nbsp;:<strong>&nbsp; <asp:Label ID="lblctype" runat="server"  />
                                                                </strong> </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:20%; font-size: medium;">
                                                            Applied In Department</td>
                                                        <td colspan="3" style="font-family:Cambria; width:25%; font-size: medium; vertical-align:top;">
                                                           &nbsp;:<strong>&nbsp; <asp:Label ID="lbldept" runat="server"  />
                                                                </strong> 
                                                            </td>
                                                         <%--<td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             &nbsp;</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium; vertical-align:top;">



                                                             &nbsp;</td>--%>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            Institute Code</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                        &nbsp;: NITA</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             Applicant&#39;s Name
                                                        </td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                        &nbsp;:<strong><asp:Label ID="lblstudentname" runat="server"  />
                                                                </strong>
                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            Mother&#39;s Name </td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                        &nbsp;:<strong>
                                                                <asp:Label ID="lblmothername" runat="server"  />
                                                                </strong>    
                                                            </td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             Father&#39;s Name
                                                        </td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                        &nbsp;:<strong><asp:Label ID="lblfathername" runat="server"  />
                                                                  </strong>    
                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            Date Of Birth</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            &nbsp;:&nbsp;<strong><asp:Label ID="lbldob" runat="server"  />
                                                                  </strong>
                                                            </td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             Gender</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                              &nbsp;:<strong><asp:Label ID="lblgender" runat="server"  />
                                                                  </strong>
                                                            </td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            Category</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            &nbsp;:<strong><asp:Label ID="lblcategory" runat="server"  />
                                                                  </strong></td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             Blood Group</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                              &nbsp;:<strong><asp:Label ID="lblbloodgroup" runat="server"  />
                                                                  </strong></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            Religion</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            &nbsp;:<strong><asp:Label ID="lblreligion" runat="server"  />
                                                                  </strong></td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             Nationality</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                              &nbsp;:<strong><asp:Label ID="lblnationality" runat="server"  />
                                                                  </strong></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            Aadhar No</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            &nbsp;:<strong><asp:Label ID="lbladhar" runat="server"  />
                                                                  </strong></td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             Email Id</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                              &nbsp;:<strong><asp:Label ID="lblemail" runat="server"  />
                                                                  </strong></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            Alternative Email Id</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            &nbsp;:<strong><asp:Label ID="lblaltemail" runat="server"  />
                                                                  </strong></td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             Mobile No</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                              &nbsp;:<strong><asp:Label ID="lblmobile" runat="server"  />
                                                                  </strong></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            Identification Mark</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            &nbsp;:<strong><asp:Label ID="lblidentificationmark" runat="server"  />
                                                                  </strong></td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             Present Address</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                              &nbsp;:<strong><asp:Label ID="LBLPADDRESS" runat="server"  />
                                                                  </strong></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            State</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            &nbsp;:<strong><asp:Label ID="LBLPSTATE" runat="server"  />
                                                                  </strong></td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             City</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                              &nbsp;:<strong><asp:Label ID="LBLPCITY" runat="server"  />
                                                                  </strong></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            Country</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            &nbsp;:<strong><asp:Label ID="LBLPCOUNTRY" runat="server"  />
                                                                  </strong></td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             Zip</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                              &nbsp;:<strong><asp:Label ID="LBLPZIP" runat="server"  />
                                                                  </strong></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            Permanent Address</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            &nbsp;:<strong><asp:Label ID="LBLPRADD" runat="server"  />
                                                                  </strong></td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             State</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                              &nbsp;:<strong><asp:Label ID="LBLPRSTATE" runat="server"  />
                                                                  </strong></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            City</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            &nbsp;:<strong><asp:Label ID="LBLPRCITY" runat="server"  />
                                                                  </strong></td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             Country</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                              &nbsp;:<strong><asp:Label ID="LBLPRCOUNTRY" runat="server"  />
                                                                  </strong></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            Zip</td>
                                                        <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                            &nbsp;:<strong><asp:Label ID="LBLPRZIP" runat="server"  />
                                                                  </strong></td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">
                                                             &nbsp;</td>
                                                         <td style="font-family:Cambria; width:25%; font-size: medium;">



                                                              &nbsp;</td>
                                                        </tr>
                                                        
                                                        </table>
                                                        
                                                        
                                                   

                                                        <table class="noborder innerchallan" border="1" cellpadding="0" cellspacing="0" width="100%" colspan="4">
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:100%; font-size: medium; font-weight:bold;">
                                                           
                                                         
                                                                    
                                                                <br />
                                                                Educational Qualifications
                                                               
                                                            <br />
                                                                <asp:GridView ID="gridedu" runat="server" CellPadding="5" CellSpacing="5" 
                                                                    Width="100%">
                                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                </asp:GridView>
                                                           
                                                           </td>
                                                        </tr>
                                                        
                                                        </table>
                                                        
                                                        <table class="noborder innerchallan" border="1" cellpadding="0" cellspacing="0" width="100%" colspan="4">
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:100%; font-size: medium; font-weight:bold;">
                                                           
                                                         
                                                                    
                                                                <br />
                                                               Documents Uploaded
                                                               
                                                            <br />
                                                       <%--         <asp:GridView ID="gridupload" runat="server" CellPadding="5" CellSpacing="5" 
                                                                    Width="100%" onrowdatabound="gridupload_RowDataBound">
                                                                    <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                                                    <RowStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                                                                </asp:GridView>--%>
                                                           
                                                           </td>
                                                        </tr>
                                                        
                                                        </table>

                                                        <table class="noborder innerchallan" border="1" cellpadding="0" cellspacing="0" width="100%" colspan="4">
                                                        
                                                        <tr>
                                                        <td style="font-family:Cambria; width:100%; font-size: medium; font-weight:bold;" 
                                                                class="style1">
                                                           
                                                         
                                                                    
                                                                <br />
                                                               
                                                               Payment Details
                                                               
                                                            <br />
                                                                <asp:GridView ID="grdpayment" runat="server" CellPadding="5" CellSpacing="5" 
                                                                    Width="100%">
                                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                                </asp:GridView>
                                                           
                                                                <div class="style1">
                                                           
                                                                <br />
                                                                <br />
                                                                    <br />
                                                                    <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                                                                        <tr>
                                                                            <td colspan="3">
                                                                    <span class="style2">Declaration 
                                                                    :<br />
                                                                    </span>
                                                                <asp:Label ID="lblmothername0" runat="server"  >I hereby declare that I have entered the percentage of marks / CGPA etc as given by the university / institute correctly. I affirm that my qualifying degree as well as the university / college / institute from which I have obtained the degree is approved and recognized by UGC / AICTE  as the case may be. I do undertake that I will have no objection if my candidature is rejected or cancelled in the event of my willful concealment or missrepresentation of any fact detected by NIT Agartala at a subsequent stage.</asp:Label>
                                                                            </td>
                                                                            
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="3">
                                                                                &nbsp;</td>
                                                                            
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                Place :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    <br />
                                                                                Date :&nbsp;&nbsp;&nbsp;</td>
                                                                            <td>
                                                                            </td>
                                                                            <td align="right">
                                                                                <br />
                                                                                <br />
                                                                                <br />
                                                                                <br />
                                                                                ------------------------------------------------------<br />
&nbsp;Signature Of Candidate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                
                                                                <br />
                                                           
                                                                </div>
                                                           
                                                           </td>
                                                        </tr>
                                                        
                                                        </table>
                                                        
                                                        </td></tr></tbody></table></div></div>
                        
                        
                        
                        
                        </div></div></div>
    </div>
    </form>
</body>
</html>
