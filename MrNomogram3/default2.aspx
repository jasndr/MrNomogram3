<%@ Page Language="c#" CodeBehind="default2.aspx.cs" AutoEventWireup="false" Inherits="MrNomogram3.default2" %>
<html>
	<head>
		<title>Mr. Nomogram - Metric Units</title>
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
					<form method="post" action="default2.aspx" runat="server">
						<ASP:Panel id="Panel0" Visible="true" runat="server">
							<table border="0" align="center">
								<tr>
									<td><span class="param"><b>Enter Parameters In:</b></span></td>
									<td><ASP:RadioButtonList id="unit" RepeatLayout="Table" RepeatDirection="Horizontal" AutoPostBack="true"
											runat="server" Font-Name="chicago,serif" Font-Size="15px" cellspacing="3" ForeColor="DarkBlue">
											<asp:ListItem runat="server">English Units</asp:ListItem>
											<asp:ListItem Selected="True">Metric Units</asp:ListItem>
										</ASP:RadioButtonList>
									</td>
									<td><asp:RequiredFieldValidator id="unitReqVal" ControlToValidate="unit" ErrorMessage="Parameter Units. " Display="Dynamic"
											InitialValue="" Font-Name="Verdana" Font-Size="12" runat="server">
        &nbsp;
    </asp:RequiredFieldValidator>
									</td>
								</tr>
							</table>
							<table border="0" width="660" align="center">
								<tr>
									<td></td>
								</tr>
								<tr>
									<td align="center" width="100%">
										<asp:ValidationSummary ID="valSum" runat="server" HeaderText="<b>You must enter a valid value in the following fields:</b><br>"
											DisplayMode="SingleParagraph" Font-Name="verdana" Font-Size="10" ForeColor="Red"></asp:ValidationSummary>
									</td>
								</tr>
							</table>
							<table border="0" width="660" align="center">
								<tr>
									<td><img src="images/trans.gif" height="10"></td>
								</tr>
								<tr>
									<td>(<span class="required">*</span>
										<span class="inputRemind">= required input</span>)</td>
								</tr>
								<tr>
									<td><img src="images/trans.gif" height="10"></td>
								</tr>
							</table>
							<table border="0" width="660" align="center">
								<tr>
									<td><span class="entryTitle">Patient Name:</span></td>
									<td colspan="3"><asp:TextBox id="pname" size="28" maxlength="50" runat="server" /></td>
								</tr>
								<tr>
									<td><span class="entryTitle">Kidney Laterality:</span>
										<span class="required">*</span></td>
									<td colspan="3"><ASP:RadioButtonList id="location" RepeatLayout="Table" RepeatDirection="Horizontal" runat="server">
											<asp:ListItem>Left</asp:ListItem>
											<asp:ListItem>Right</asp:ListItem>
											<asp:ListItem>Both</asp:ListItem>
										</ASP:RadioButtonList>
									</td>
									<td><asp:RequiredFieldValidator id="locationReqVal" ControlToValidate="location" ErrorMessage="Kidney Laterality. "
											Display="Dynamic" InitialValue="" Font-Name="Verdana" Font-Size="12" runat="server">
        &nbsp;
    </asp:RequiredFieldValidator>
									</td>
								</tr>
								<tr>
									<td><span class="entryTitle">Age:</span>
										<span class="required">*</span></td>
									<td><ASP:DropDownList id="ageYear" runat="server" />
										year(s)</td>
									<td><asp:RequiredFieldValidator id="ageYearReqVal" ControlToValidate="ageYear" ErrorMessage="Age Year. " Display="Dynamic"
											Font-Name="Verdana" Font-Size="12" runat="server">
    &nbsp;
	</asp:RequiredFieldValidator>
										<asp:RangeValidator id="ageYearValInteger" Type="Integer" ControlToValidate="ageYear" ErrorMessage="Age Year. "
											Display="Static" MaximumValue="99" MinimumValue="0" Font-Name="Verdana" Font-Size="11" runat="server">
	&nbsp;
    </asp:RangeValidator>
									</td>
									<td><ASP:DropDownList id="ageMonth" runat="server" />
										month(s)</td>
									<td><asp:RequiredFieldValidator id="ageMonthReqVal" ControlToValidate="ageMonth" ErrorMessage="Age Month. " Display="Dynamic"
											Font-Name="Verdana" Font-Size="12" runat="server">
    &nbsp;
	</asp:RequiredFieldValidator>
										<asp:RangeValidator id="ageMonthValInteger" Type="Integer" ControlToValidate="ageMonth" ErrorMessage="Age Month. "
											Display="Static" MaximumValue="999" MinimumValue="0" runat="server">
	&nbsp;
    </asp:RangeValidator>
									</td>
								</tr>
								<tr>
									<td><span class="entryTitle">Gender:</span>
										<span class="required">*</span></td>
									<td colspan="3"><ASP:RadioButtonList id="gender" RepeatLayout="Table" RepeatDirection="Horizontal" runat="server">
											<asp:ListItem>Male</asp:ListItem>
											<asp:ListItem>Female</asp:ListItem>
										</ASP:RadioButtonList>
									</td>
									<td><asp:RequiredFieldValidator id="genderReqVal" ControlToValidate="gender" ErrorMessage="Gender. " Display="Dynamic"
											InitialValue="" Font-Name="Verdana" Font-Size="12" runat="server">
        &nbsp;
    </asp:RequiredFieldValidator>
									</td>
								</tr>
								<tr>
									<td><span class="entryTitle">Ethnicity:</span>
										<span class="required">*</span></td>
									<td colspan="3"><ASP:DropDownList id="race" runat="server">
											<asp:ListItem></asp:ListItem>
											<asp:ListItem>African-Origin</asp:ListItem>
											<asp:ListItem>Caucasian</asp:ListItem>
											<asp:ListItem>Other</asp:ListItem>
										</ASP:DropDownList>
									</td>
									<td><asp:RequiredFieldValidator id="raceReqVal" ControlToValidate="race" ErrorMessage="Ethinicity. " Display="Dynamic"
											InitialValue="" Font-Name="Verdana" Font-Size="12" runat="server">
        &nbsp;
    </asp:RequiredFieldValidator>
									</td>
								</tr>
								<tr>
									<td><span class="entryTitle">Height:</span>
										<span class="required">*</span></td>
									<td><asp:TextBox id="height" size="6" maxlength="6" runat="server" />
										cm</td>
									<td><asp:RequiredFieldValidator id="heightReqVal" ControlToValidate="height" ErrorMessage="Height. " Display="Dynamic"
											Font-Name="Verdana" Font-Size="12" runat="server">
        &nbsp;
	</asp:RequiredFieldValidator>
										<asp:RangeValidator id="heightValDouble" Type="Double" ControlToValidate="height" ErrorMessage="Height. "
											Display="Static" MaximumValue="999" MinimumValue="0" Font-Name="Verdana" Font-Size="12" runat="server">
		&nbsp;
    </asp:RangeValidator>
									</td>
								</tr>
								<tr>
									<td><span class="entryTitle">Weight:</span>
										<span class="required">*</span></td>
									<td><asp:TextBox id="weight" size="6" maxlength="8" runat="server" />
										kg</td>
									<td><asp:RequiredFieldValidator id="weightReqVal" ControlToValidate="weight" ErrorMessage="Weight. " Display="Dynamic"
											Font-Name="Verdana" Font-Size="12" runat="server">
        &nbsp;
	</asp:RequiredFieldValidator>
										<asp:RangeValidator id="weightValDouble" Type="Double" ControlToValidate="weight" ErrorMessage="Weight. "
											Display="Static" MaximumValue="999" MinimumValue="0" runat="server">
		&nbsp;
    </asp:RangeValidator>
									</td>
								</tr>
								<tr>
									<td><span class="entryTitle">Actual Renal Measurement:</span></td>
									<td><asp:TextBox id="actualLengthL" size="6" maxlength="8" runat="server" />
										cm&nbsp;(Left)</td>
									<td><asp:RangeValidator id="actualLengthValDoubleL" Type="Double" ControlToValidate="actualLengthL" ErrorMessage="Actual Left Renal Measurement. "
											Display="Static" MaximumValue="100" MinimumValue="0" runat="server">
		&nbsp;
    </asp:RangeValidator>
									</td>
									<td><asp:TextBox id="actualLengthR" size="6" maxlength="8" runat="server" />
										cm&nbsp;(Right)</td>
									<td><asp:RangeValidator id="actualLengthValDoubleR" Type="Double" ControlToValidate="actualLengthR" ErrorMessage="Actual Right Renal Measurement. "
											Display="Static" MaximumValue="100" MinimumValue="0" runat="server">
		&nbsp;
    </asp:RangeValidator>
									</td>
								</tr>
							</table>
							<table border="0" width="660" align="center">
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td align="center"><asp:button id="calculateBtn" runat="server" text=" Calculate " />&nbsp;&nbsp;&nbsp;&nbsp;<asp:button id="clearBtn" runat="server" text=" Clear " CausesValidation="false" /></td>
								</tr>
							</table>
						</ASP:Panel>
						<ASP:Panel id="Panel1" Visible="false" runat="server">
							<table border="0" width="660" align="center">
								<tr valign="top">
									<td colspan="2"><b>Input</b></td>
								</tr>
								<tr>
									<td width="10"></td>
									<td>
										<table width="100%">
											<%
	if(pname.Text != null && pname.Text.Length > 0)
	{
%>
											<tr valign="top">
												<td colsdpan="3"><span class="result"><asp:Label id="MyNameLabel" runat="server" />
													</span></td>
											</tr>
											<%
	}
%>
											<tr valign="top">
												<td><span class="result"><asp:Label id="MyLateralityLabel" runat="server" />
													</span></td>
												<td><span class="result"><asp:Label id="MyGenderLabel" runat="server" />
													</span></td>
												<td><span class="result"><asp:Label id="MyHeightLabel" runat="server" />
													</span></td>
											</tr>
											<tr valign="top">
												<td><span class="result"><asp:Label id="MyAgeLabel" runat="server" />
													</span></td>
												<td><span class="result"><asp:Label id="MyEthinicityLabel" runat="server" />
													</span></td>
												<td><span class="result"><asp:Label id="MyWeightLabel" runat="server" />
													</span></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<table border="0" width="660" align="center">
								<tr valign="top">
									<td><b>Result</b></td>
								</tr>
							</table>
							<table border="0" cellspacing="0" cellpadding="0" width="660" align="center">
								<tr>
									<td align="center"><span class="picHeader">Left</span></td>
									<td align="center"><span class="picHeader">Right</span></td>
								</tr>
								<tr>
									<td width="330">
										<%
	if((String.Compare(location.SelectedItem.Text.ToLower(), "left") == 0) || (String.Compare(location.SelectedItem.Text.ToLower(), "both") == 0))
	{
%>
										<table border="0" cellspacing="0" cellpadding="0" width="330" align="center">
											<tr>
												<td colspan="5" align="center"><img id="PicL" width="330" runat="server"></td>
											</tr>
											<tr>
												<td width="53"></td>
												<td width="82" align="center"><img src="images/arrow2b.gif"></td>
												<td width="60" align="center"><img src="images/arrow2b.gif"></td>
												<td width="82" align="center"><img src="images/arrow2b.gif"></td>
												<td width="53"></td>
											</tr>
											<tr>
												<td width="53"></td>
												<td width="82" align="center"><span class="picNumber"><asp:Label id="PicLabelLeftL" runat="server" /><br>(2.5%)</span></td>
												<td width="60" align="center"><span class="picNumber"><asp:Label id="PicLabel50L" runat="server" /><br>(50%)</span></td>
												<td width="82" align="center"><span class="picNumber"><asp:Label id="PicLabelRightL" runat="server" /><br>(97.5%)</span></td>
												<td width="53"></td>
											</tr>
										</table>
										<%
	}
%>
									</td>
									<td width="330">
										<%
	if((String.Compare(location.SelectedItem.Text.ToLower(), "right") == 0) || (String.Compare(location.SelectedItem.Text.ToLower(), "both") == 0))
	{
%>
										<table border="0" cellspacing="0" cellpadding="0" width="330" align="center">
											<tr>
												<td colspan="5" align="center"><img id="PicR" width="330" runat="server"></td>
											</tr>
											<tr>
												<td width="53"></td>
												<td width="82" align="center"><img src="images/arrow2b.gif"></td>
												<td width="60" align="center"><img src="images/arrow2b.gif"></td>
												<td width="82" align="center"><img src="images/arrow2b.gif"></td>
												<td width="53"></td>
											</tr>
											<tr>
												<td width="53"></td>
												<td width="82" align="center"><span class="picNumber"><asp:Label id="PicLabelLeftR" runat="server" /><br>(2.5%)</span></td>
												<td width="60" align="center"><span class="picNumber"><asp:Label id="PicLabel50R" runat="server" /><br>(50%)</span></td>
												<td width="82" align="center"><span class="picNumber"><asp:Label id="PicLabelRightR" runat="server" /><br>(97.5%)</span></td>
												<td width="53"></td>
											</tr>
										</table>
										<%
	}
%>
									</td>
								</tr>
							</table>
							<table border="0" width="660" align="center">
								<tr>
									<td><img src="images/trans.gif" height="10"></td>
								</tr>
								<tr>
									<td width="10"></td>
									<td>
										<table width="100%" cellspacing="1" cellpadding="0" border="0" class="resultTable">
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
												<td align="center"><span class="result"><asp:Label id="MyEstLenLabelL" runat="server" />
													</span></td>
												<td align="center"><span class="result"><asp:Label id="MyEstLenLabelR" runat="server" />
													</span></td>
											</tr>
											<tr class="default">
												<td><span class="result">95% prediction interval</span></td>
												<td align="center"><nobr><span class="result"><asp:Label id="MyEstVarLabelL" runat="server" />
														</span></nobr></td>
												<td align="center"><nobr><span class="result"><asp:Label id="MyEstVarLabelR" runat="server" />
														</span></nobr></td>
											</tr>
											<tr class="default">
												<td><span class="result">The actual renal measurement</span></td>
												<td align="center"><span class="result"><asp:Label id="MyMeasurementLabelL" runat="server" />
													</span></td>
												<td align="center"><span class="result"><asp:Label id="MyMeasurementLabelR" runat="server" />
													</span></td>
											</tr>
											<tr class="default">
												<td><span class="result">Percentile among subjects with <br>similar demographic characteristics</span></td>
												<td align="center"><span class="result"><asp:Label id="MyPercentileLabelL" runat="server" />
													</span></td>
												<td align="center"><span class="result"><asp:Label id="MyPercentileLabelR" runat="server" />
													</span></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<table border="0" width="660" align="center">
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td align="center"><asp:button id="backBtn" runat="server" text=" << Back " />&nbsp;&nbsp;&nbsp;&nbsp;<asp:button id="newBtn" runat="server" text=" New Patient " /></td>
								</tr>
							</table>
						</ASP:Panel>
					</form>
					<hr width="660" size="1" noshade>
				</td>
			</tr>
			<tr>
				<td width="660"><FONT face="Times New Roman">References to Cite:</FONT></td>
			</tr>
			<tr>
				<td width="660"><FONT face="Times New Roman">
						<ol>
							<li>
							Chen JJ, Pugach J, Patel M, Luisiri A, Steinhardt GF. The 
							renal length nomogram: a multivariable approach. Journal of Urology 2002; 168(5):2149-2158.
							<li>
								Chen JJ, Zhi J, Mao W, Steinhardt GF. MrNomogram: A Web-based 
								Multivariable Pediatric Renal Nomogram. Journal of Pediatric Urology 2006; 2:436-438.
							</li>
						</ol>
					</FONT>
				</td>
			</tr>
		</table>
	</body>
</html>
