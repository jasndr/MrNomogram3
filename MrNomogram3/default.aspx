<%@ Page Language="c#" CodeBehind="default.aspx.cs" AutoEventWireup="true" Inherits="MrNomogram3._default" %>

<html>
<head>
    <title>Mr. Nomogram - English Units</title>
    <link rel="stylesheet" text="text/css" href="renal.css">
</head>
<body>
    <table align="center" cellpadding="5">
        <tr>
            <td align="center">
                <table border="0" width="660" align="center">
                    <tr>
                        <td align="center"><span class="title">MrNomogram: Multivariable Pediatric Renal Nomogram</span></td>
                    </tr>
                </table>
                <hr width="660" size="1" noshade>
                <form method="post" action="default.aspx" runat="server">
                    <asp:Panel ID="Panel0" Visible="true" runat="server">
                        <table align="center" border="0">
                            <tr>
                                <td><span class="param"><b>Enter Parameters In:</b></span></td>
                                <td>
                                    <asp:RadioButtonList ID="unit" runat="server" RepeatLayout="Table" RepeatDirection="Horizontal" AutoPostBack="true"
                                        Font-Name="chicago,serif" Font-Size="15px" CellSpacing="3" ForeColor="DarkBlue">
                                        <asp:ListItem Selected="True" runat="server">English Units</asp:ListItem>
                                        <asp:ListItem>Metric Units</asp:ListItem>
                                    </asp:RadioButtonList></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="unitReqVal" runat="server" Font-Name="Verdana" Font-Size="12" ControlToValidate="unit"
                                        ErrorMessage="Parameter Units. " Display="Dynamic" InitialValue="">
                                        &nbsp;
                                    </asp:RequiredFieldValidator></td>
                            </tr>
                        </table>
                        <table width="660" align="center" border="0">
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td align="center" width="100%">
                                    <asp:ValidationSummary ID="valSum" runat="server" Font-Name="verdana" ForeColor="Red" Font-Size="10" HeaderText="<b>You must enter a valid value in the following fields:</b><br>"
                                        DisplayMode="SingleParagraph"></asp:ValidationSummary>
                                </td>
                            </tr>
                        </table>
                        <table width="660" align="center" border="0">
                            <tr>
                                <td>
                                    <img height="10" src="images/trans.gif"></td>
                            </tr>
                            <tr>
                                <td>(<span class="required">*</span>
                                    <span class="inputRemind">= required input</span>)</td>
                            </tr>
                            <tr>
                                <td>
                                    <img height="10" src="images/trans.gif"></td>
                            </tr>
                        </table>
                        <table width="660" align="center" border="0">
                            <tr>
                                <td><span class="entryTitle">Patient Name:</span></td>
                                <td colspan="3">
                                    <asp:TextBox ID="pname" runat="server" size="28" MaxLength="50"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td><span class="entryTitle">Kidney Laterality:</span>
                                    <span class="required">*</span></td>
                                <td colspan="3">
                                    <asp:RadioButtonList ID="location" runat="server" RepeatLayout="Table" RepeatDirection="Horizontal">
                                        <asp:ListItem>Left</asp:ListItem>
                                        <asp:ListItem>Right</asp:ListItem>
                                        <asp:ListItem>Both</asp:ListItem>
                                    </asp:RadioButtonList></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="locationReqVal" runat="server" Font-Name="Verdana" Font-Size="12" ControlToValidate="location"
                                        ErrorMessage="Kidney Laterality. " Display="Dynamic" InitialValue="">
                                         &nbsp;
                                    </asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td><span class="entryTitle">Age:</span>
                                    <span class="required">*</span></td>
                                <td>
                                    <asp:DropDownList ID="ageYear" runat="server"></asp:DropDownList>year(s)</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="ageYearReqVal" runat="server" Font-Name="Verdana" Font-Size="12" ControlToValidate="ageYear"
                                        ErrorMessage="Age Year. " Display="Dynamic">
                                       &nbsp;
                                    </asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="ageYearValInteger" runat="server" Font-Name="Verdana" Font-Size="11" ControlToValidate="ageYear"
                                        ErrorMessage="Age Year. " Display="Static" Type="Integer" MaximumValue="99" MinimumValue="0">
	                                    &nbsp;
                                    </asp:RangeValidator></td>
                                <td>
                                    <asp:DropDownList ID="ageMonth" runat="server"></asp:DropDownList>month(s)</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="ageMonthReqVal" runat="server" Font-Name="Verdana" Font-Size="12" ControlToValidate="ageMonth"
                                        ErrorMessage="Age Month. " Display="Dynamic">
                                          &nbsp;
                                    </asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="ageMonthValInteger" runat="server" ControlToValidate="ageMonth" ErrorMessage="Age Month. "
                                        Display="Static" Type="Integer" MaximumValue="999" MinimumValue="0">
	                                    &nbsp;
                                    </asp:RangeValidator></td>
                            </tr>
                            <tr>
                                <td><span class="entryTitle">Gender:</span>
                                    <span class="required">*</span></td>
                                <td colspan="3">
                                    <asp:RadioButtonList ID="gender" runat="server" RepeatLayout="Table" RepeatDirection="Horizontal">
                                        <asp:ListItem>Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:RadioButtonList></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="genderReqVal" runat="server" Font-Name="Verdana" Font-Size="12" ControlToValidate="gender"
                                        ErrorMessage="Gender. " Display="Dynamic" InitialValue="">
        &nbsp;
                                    </asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td><span class="entryTitle">Ethnicity:</span>
                                    <span class="required">*</span></td>
                                <td colspan="3">
                                    <asp:DropDownList ID="race" runat="server">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>African-Origin</asp:ListItem>
                                        <asp:ListItem>Caucasian</asp:ListItem>
                                        <asp:ListItem>Other</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="raceReqVal" runat="server" Font-Name="Verdana" Font-Size="12" ControlToValidate="race"
                                        ErrorMessage="Ethinicity. " Display="Dynamic" InitialValue="">
        &nbsp;
                                    </asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td><span class="entryTitle">Height:</span>
                                    <span class="required">*</span></td>
                                <td>
                                    <asp:DropDownList ID="feet" runat="server"></asp:DropDownList>feet</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="feetReqVal" runat="server" Font-Name="Verdana" Font-Size="12" ControlToValidate="feet"
                                        ErrorMessage="Height Feet. " Display="Dynamic">
        &nbsp;
                                    </asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="feetValInteger" runat="server" Font-Name="Verdana" Font-Size="12" ControlToValidate="feet"
                                        ErrorMessage="Height Feet. " Display="Static" Type="Integer" MaximumValue="10" MinimumValue="0">
		&nbsp;
                                    </asp:RangeValidator></td>
                                <td>
                                    <asp:DropDownList ID="inch" runat="server"></asp:DropDownList>inch(es)</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="inchReqVal" runat="server" Font-Name="Verdana" Font-Size="12" ControlToValidate="inch"
                                        ErrorMessage="Height Inch. " Display="Dynamic">
        &nbsp;
                                    </asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="inchValInteger" runat="server" ControlToValidate="inch" ErrorMessage="Height Inch. "
                                        Display="Static" Type="Integer" MaximumValue="120" MinimumValue="0">
		&nbsp;
                                    </asp:RangeValidator></td>
                            </tr>
                            <tr>
                                <td><span class="entryTitle">Weight:</span>
                                    <span class="required">*</span></td>
                                <td colspan="3">
                                    <asp:TextBox ID="weight" runat="server" size="6" MaxLength="8"></asp:TextBox>pound(s)</td>
                                <td>
                                    <asp:RequiredFieldValidator ID="weightReqVal" runat="server" Font-Name="Verdana" Font-Size="12" ControlToValidate="weight"
                                        ErrorMessage="Weight. " Display="Dynamic">
        &nbsp;
                                    </asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="weightValDouble" runat="server" ControlToValidate="weight" ErrorMessage="Weight. "
                                        Display="Static" Type="Double" MaximumValue="999" MinimumValue="0">
		&nbsp;
                                    </asp:RangeValidator></td>
                            </tr>
                            <tr>
                                <td><span class="entryTitle">Actual Renal Measurement:</span></td>
                                <td>
                                    <asp:TextBox ID="actualLengthL" runat="server" size="6" MaxLength="8"></asp:TextBox>cm&nbsp;(Left)</td>
                                <td>
                                    <asp:RangeValidator ID="actualLengthValDoubleL" runat="server" ControlToValidate="actualLengthL" ErrorMessage="Actual Left Renal Measurement. "
                                        Display="Static" Type="Double" MaximumValue="100" MinimumValue="0">
		&nbsp;
                                    </asp:RangeValidator></td>
                                <td>
                                    <asp:TextBox ID="actualLengthR" runat="server" size="6" MaxLength="8"></asp:TextBox>cm&nbsp;(Right)</td>
                                <td>
                                    <asp:RangeValidator ID="actualLengthValDoubleR" runat="server" ControlToValidate="actualLengthR" ErrorMessage="Actual Right Renal Measurement. "
                                        Display="Static" Type="Double" MaximumValue="100" MinimumValue="0">
		&nbsp;
                                    </asp:RangeValidator></td>
                            </tr>
                        </table>
                        <table width="660" align="center" border="0">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Button ID="calculateBtn" Text=" Calculate " runat="server"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
										<asp:Button ID="clearBtn" Text=" Clear " runat="server" CausesValidation="false"></asp:Button></td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Panel ID="Panel1" Visible="false" runat="server">
                        <table width="660" align="center" border="0">
                            <tr valign="top">
                                <td colspan="2"><b>Input</b></td>
                            </tr>
                            <tr>
                                <td width="10"></td>
                                <td>
                                    <table width="100%">


                                        <%
                                            if (pname.Text != null && pname.Text.Length > 0)
                                            {
                                        %>
                                        <tr valign="top">
                                            <td colsdpan="3"><span class="result">
                                                <asp:Label ID="MyNameLabel" runat="server"></asp:Label>
                                            </span></td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                        <tr valign="top">
                                            <td><span class="result">
                                                <asp:Label ID="MyLateralityLabel" runat="server"></asp:Label>
                                            </span></td>
                                            <td><span class="result">
                                                <asp:Label ID="MyGenderLabel" runat="server"></asp:Label>
                                            </span></td>
                                            <td><span class="result">
                                                <asp:Label ID="MyHeightLabel" runat="server"></asp:Label>
                                            </span></td>
                                        </tr>
                                        <tr valign="top">
                                            <td><span class="result">
                                                <asp:Label ID="MyAgeLabel" runat="server"></asp:Label>
                                            </span></td>
                                            <td><span class="result">
                                                <asp:Label ID="MyEthinicityLabel" runat="server"></asp:Label>
                                            </span></td>
                                            <td><span class="result">
                                                <asp:Label ID="MyWeightLabel" runat="server"></asp:Label>
                                            </span></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <table width="660" align="center" border="0">
                            <tr valign="top">
                                <td><b>Result</b></td>
                            </tr>
                        </table>
                        <table cellspacing="0" cellpadding="0" width="660" align="center" border="0">
                            <tr>
                                <td align="center"><span class="picHeader">Left</span></td>
                                <td align="center"><span class="picHeader">Right</span></td>
                            </tr>
                            <tr>
                                <td width="330"><%
                                                    if ((String.Compare(location.SelectedItem.Text.ToLower(), "left") == 0) || (String.Compare(location.SelectedItem.Text.ToLower(), "both") == 0))
                                                    {
                                %>
                                    <table cellspacing="0" cellpadding="0" width="330" align="center" border="0">
                                        <tr>
                                            <td align="center" colspan="5">
                                                <img id="PicL" width="330" runat="server"></td>
                                        </tr>
                                        <tr>
                                            <td width="53"></td>
                                            <td align="center" width="82">
                                                <img src="images/arrow2b.gif"></td>
                                            <td align="center" width="60">
                                                <img src="images/arrow2b.gif"></td>
                                            <td align="center" width="82">
                                                <img src="images/arrow2b.gif"></td>
                                            <td width="53"></td>
                                        </tr>
                                        <tr>
                                            <td width="53"></td>
                                            <td align="center" width="82"><span class="picNumber">
                                                <asp:Label ID="PicLabelLeftL" runat="server"></asp:Label><br>
                                                (2.5%)</span></td>
                                            <td align="center" width="60"><span class="picNumber">
                                                <asp:Label ID="PicLabel50L" runat="server"></asp:Label><br>
                                                (50%)</span></td>
                                            <td align="center" width="82"><span class="picNumber">
                                                <asp:Label ID="PicLabelRightL" runat="server"></asp:Label><br>
                                                (97.5%)</span></td>
                                            <td width="53"></td>
                                        </tr>
                                    </table>
                                    <%
                                        }
                                    %>
                                </td>
                                <td width="330"><%
                                                    if ((String.Compare(location.SelectedItem.Text.ToLower(), "right") == 0) || (String.Compare(location.SelectedItem.Text.ToLower(), "both") == 0))
                                                    {
                                %>
                                    <table cellspacing="0" cellpadding="0" width="330" align="center" border="0">
                                        <tr>
                                            <td align="center" colspan="5">
                                                <img id="PicR" width="330" runat="server"></td>
                                        </tr>
                                        <tr>
                                            <td width="53"></td>
                                            <td align="center" width="82">
                                                <img src="images/arrow2b.gif"></td>
                                            <td align="center" width="60">
                                                <img src="images/arrow2b.gif"></td>
                                            <td align="center" width="82">
                                                <img src="images/arrow2b.gif"></td>
                                            <td width="53"></td>
                                        </tr>
                                        <tr>
                                            <td width="53"></td>
                                            <td align="center" width="82"><span class="picNumber">
                                                <asp:Label ID="PicLabelLeftR" runat="server"></asp:Label><br>
                                                (2.5%)</span></td>
                                            <td align="center" width="60"><span class="picNumber">
                                                <asp:Label ID="PicLabel50R" runat="server"></asp:Label><br>
                                                (50%)</span></td>
                                            <td align="center" width="82"><span class="picNumber">
                                                <asp:Label ID="PicLabelRightR" runat="server"></asp:Label><br>
                                                (97.5%)</span></td>
                                            <td width="53"></td>
                                        </tr>
                                    </table>
                                    <%
                                        }
                                    %>
                                </td>
                            </tr>
                        </table>
                        <table width="660" align="center" border="0">
                            <tr>
                                <td>
                                    <img height="10" src="images/trans.gif"></td>
                            </tr>
                            <tr>
                                <td width="10"></td>
                                <td>
                                    <table class="resultTable" cellspacing="1" cellpadding="0" width="100%" border="0">
                                        <tr class="resultTableHeader">
                                            <th>
                                                <span class="result">&nbsp;</span></th>
                                            <th width="200">
                                                <span class="result">Left</span></th>
                                            <th width="200">
                                                <span class="result">Right</span></th>
                                        </tr>
                                        <tr class="default">
                                            <td><span class="result">Predicted renal length</span></td>
                                            <td align="center"><span class="result">
                                                <asp:Label ID="MyEstLenLabelL" runat="server"></asp:Label>
                                            </span></td>
                                            <td align="center"><span class="result">
                                                <asp:Label ID="MyEstLenLabelR" runat="server"></asp:Label>
                                            </span></td>
                                        </tr>
                                        <tr class="default">
                                            <td><span class="result">95% prediction interval</span></td>
                                            <td align="center">
                                                <nobr><SPAN class="result">
															<asp:Label id="MyEstVarLabelL" runat="server"></asp:Label>
														</SPAN></nobr>
                                            </td>
                                            <td align="center">
                                                <nobr><SPAN class="result">
															<asp:Label id="MyEstVarLabelR" runat="server"></asp:Label>
														</SPAN></nobr>
                                            </td>
                                        </tr>
                                        <tr class="default">
                                            <td><span class="result">The actual renal measurement</span></td>
                                            <td align="center"><span class="result">
                                                <asp:Label ID="MyMeasurementLabelL" runat="server"></asp:Label>
                                            </span></td>
                                            <td align="center"><span class="result">
                                                <asp:Label ID="MyMeasurementLabelR" runat="server"></asp:Label>
                                            </span></td>
                                        </tr>
                                        <tr class="default">
                                            <td><span class="result">Percentile among subjects with 
                  <br>
                                                similar demographic characteristics</span></td>
                                            <td align="center"><span class="result">
                                                <asp:Label ID="MyPercentileLabelL" runat="server"></asp:Label>
                                            </span></td>
                                            <td align="center"><span class="result">
                                                <asp:Label ID="MyPercentileLabelR" runat="server"></asp:Label>
                                            </span></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                        <table width="660" align="center" border="0">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Button ID="backBtn" Text=" << Back " runat="server"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
										<asp:Button ID="newBtn" Text=" New Patient " runat="server"></asp:Button></td>
                            </tr>
                        </table>
                    </asp:Panel>
                </form>
                <hr width="660" size="1" noshade>
            </td>
        </tr>
        <tr>
            <td width="660"><font face="Times New Roman">References to Cite:</font></td>
        </tr>
        <tr>
            <td width="660"><font face="Times New Roman">
						<ol>
							<li>
							Chen JJ, Pugach J, Patel M, Luisiri A, Steinhardt GF. The 
							renal length nomogram: a multivariable approach. Journal of Urology 2002; 168(5):2149-2158.
							<li>
								Chen JJ, Zhi J, Mao W, Steinhardt GF. MrNomogram: A Web-based 
								Multivariable Pediatric Renal Nomogram. Journal of Pediatric Urology 2006; 2:436-438.
							</li>
						</ol>
					</font>
            </td>
        </tr>
    </table>
</body>
</html>
