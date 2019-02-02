// Decompiled with JetBrains decompiler
// Type: MrNomogram.default2
// Assembly: MrNomogram, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: D240C00C-4280-4DCF-93B4-1E740A09BF1A
// Assembly location: C:\Users\jdelosr\source\repos\MrNomogram\bin\MrNomogram.dll

using System;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace MrNomogram3
{
    public class default2 : Page
    {
        protected RadioButtonList unit;
        protected RequiredFieldValidator unitReqVal;
        protected ValidationSummary valSum;
        protected TextBox pname;
        protected RadioButtonList location;
        protected RequiredFieldValidator locationReqVal;
        protected DropDownList ageYear;
        protected RequiredFieldValidator ageYearReqVal;
        protected RangeValidator ageYearValInteger;
        protected DropDownList ageMonth;
        protected RequiredFieldValidator ageMonthReqVal;
        protected RangeValidator ageMonthValInteger;
        protected RadioButtonList gender;
        protected RequiredFieldValidator genderReqVal;
        protected DropDownList race;
        protected RequiredFieldValidator raceReqVal;
        protected TextBox height;
        protected RequiredFieldValidator heightReqVal;
        protected RangeValidator heightValDouble;
        protected TextBox weight;
        protected RequiredFieldValidator weightReqVal;
        protected RangeValidator weightValDouble;
        protected TextBox actualLengthL;
        protected RangeValidator actualLengthValDoubleL;
        protected TextBox actualLengthR;
        protected RangeValidator actualLengthValDoubleR;
        protected Button calculateBtn;
        protected Button clearBtn;
        protected Panel Panel0;
        protected Label MyNameLabel;
        protected Label MyLateralityLabel;
        protected Label MyGenderLabel;
        protected Label MyHeightLabel;
        protected Label MyAgeLabel;
        protected Label MyEthinicityLabel;
        protected Label MyWeightLabel;
        protected Label PicLabelLeftL;
        protected Label PicLabel50L;
        protected Label PicLabelRightL;
        protected Label MyEstLenLabelL;
        protected Label MyEstVarLabelL;
        protected Label MyPercentileLabelL;
        protected Label MyMeasurementLabelL;
        protected Label PicLabelLeftR;
        protected Label PicLabel50R;
        protected Label PicLabelRightR;
        protected Label MyEstLenLabelR;
        protected Label MyEstVarLabelR;
        protected Label MyPercentileLabelR;
        protected Label MyMeasurementLabelR;
        protected Button backBtn;
        protected Button newBtn;
        protected Panel Panel1;
        protected HtmlImage PicL;
        protected HtmlImage PicR;

        private void Page_Load(object sender, EventArgs e)
        {
            //if (!this.Request.IsSecureConnection && this.Request.UserHostAddress != "127.0.0.1")
            //    this.Response.Redirect("https://" + this.Request.ServerVariables["SERVER_NAME"] + this.Request.RawUrl, true);
            if (this.Page.IsPostBack)
                return;
            this.ViewState["PanelIndex"] = (object)0;
            Util util = new Util();
            this.ageYear.DataSource = (object)util.listYears();
            this.ageMonth.DataSource = (object)util.listMonths();
            this.ageYear.DataBind();
            this.ageMonth.DataBind();
        }

        public void CalculateBtn_Click(object sender, EventArgs E)
        {
            Conversion conversion = new Conversion();
            ZPercent zpercent = new ZPercent();
            this.Page.Validate();
            if (!this.Page.IsValid)
                return;
            int month = conversion.ageTransform(int.Parse(this.ageYear.SelectedItem.Value), int.Parse(this.ageMonth.SelectedItem.Value));
            int gender = conversion.genderTransform(this.gender.SelectedItem.Text);
            int race = conversion.raceTransform(this.race.SelectedItem.Text);
            string text = this.location.SelectedItem.Text;
            float cm = float.Parse(this.height.Text);
            float kg = float.Parse(this.weight.Text);
            Calculation calculation = new Calculation(month, gender, race, cm, kg);
            float num1 = calculation.estimateSize('L');
            float num2 = calculation.estimateVar('L');
            float num3 = num1 - (float)(1.96 * Math.Sqrt((double)num2));
            float num4 = num1 + (float)(1.96 * Math.Sqrt((double)num2));
            float num5 = calculation.estimateSize('R');
            float num6 = calculation.estimateVar('R');
            float num7 = num5 - (float)(1.96 * Math.Sqrt((double)num6));
            float num8 = num5 + (float)(1.96 * Math.Sqrt((double)num6));
            this.MyNameLabel.Text = "Patient Name = " + this.pname.Text;
            this.MyLateralityLabel.Text = "Kidney Laterality = " + this.location.SelectedItem.Text;
            this.MyEthinicityLabel.Text = "Ethinicity = " + this.race.SelectedItem.Text;
            this.MyAgeLabel.Text = "Age = " + this.ageYear.SelectedItem.Value + " year(s) " + this.ageMonth.SelectedItem.Value + " month(s)";
            this.MyHeightLabel.Text = "Height = " + this.height.Text + " cm ";
            this.MyGenderLabel.Text = "Gender = " + this.gender.SelectedItem.Text;
            this.MyWeightLabel.Text = "Weight = " + this.weight.Text + " kg";
            this.MyEstLenLabelL.Text = num1.ToString("N") + " cm";
            this.MyEstVarLabelL.Text = "[" + num3.ToString("N") + " cm, " + num4.ToString("N") + " cm]";
            this.MyEstLenLabelR.Text = num5.ToString("N") + " cm";
            this.MyEstVarLabelR.Text = "[" + num7.ToString("N") + " cm, " + num8.ToString("N") + " cm]";
            if (string.Compare(text.ToLower(), "left") == 0)
            {
                this.MyEstLenLabelR.Text = "";
                this.MyEstVarLabelR.Text = "";
            }
            if (string.Compare(text.ToLower(), "right") == 0)
            {
                this.MyEstLenLabelL.Text = "";
                this.MyEstVarLabelL.Text = "";
            }
            if ((string.Compare(text.ToLower(), "left") == 0 || string.Compare(text.ToLower(), "both") == 0) && (this.actualLengthL.Text != null && this.actualLengthL.Text.Length > 0))
            {
                float z = (float)(((double)float.Parse(this.actualLengthL.Text) - (double)num1) / Math.Sqrt((double)num2));
                int percentByZ = zpercent.getPercentByZ(z);
                this.MyMeasurementLabelL.Text = this.actualLengthL.Text + " cm";
                this.MyPercentileLabelL.Text = zpercent.displayPercentile(percentByZ) + " percentile";
                this.PicL.Src = "plots/normal_percent" + zpercent.padZero(percentByZ + 1) + "a.jpg";
            }
            else
            {
                this.MyMeasurementLabelL.Text = "";
                this.MyPercentileLabelL.Text = "";
                this.PicL.Src = "plots/normal_percent000a.jpg";
            }
            this.PicLabel50L.Text = "" + num1.ToString("N");
            this.PicLabelLeftL.Text = "" + num3.ToString("N");
            this.PicLabelRightL.Text = "" + num4.ToString("N");
            if ((string.Compare(text.ToLower(), "right") == 0 || string.Compare(text.ToLower(), "both") == 0) && (this.actualLengthR.Text != null && this.actualLengthR.Text.Length > 0))
            {
                float z = (float)(((double)float.Parse(this.actualLengthR.Text) - (double)num5) / Math.Sqrt((double)num6));
                int percentByZ = zpercent.getPercentByZ(z);
                this.MyMeasurementLabelR.Text = this.actualLengthR.Text + " cm";
                this.MyPercentileLabelR.Text = zpercent.displayPercentile(percentByZ) + " percentile";
                this.PicR.Src = "plots/normal_percent" + zpercent.padZero(percentByZ + 1) + "a.jpg";
            }
            else
            {
                this.MyMeasurementLabelR.Text = "";
                this.MyPercentileLabelR.Text = "";
                this.PicR.Src = "plots/normal_percent000a.jpg";
            }
            this.PicLabel50R.Text = "" + num5.ToString("N");
            this.PicLabelLeftR.Text = "" + num7.ToString("N");
            this.PicLabelRightR.Text = "" + num8.ToString("N");
            string id = "Panel" + this.ViewState["PanelIndex"].ToString();
            this.ViewState["PanelIndex"] = (object)((int)this.ViewState["PanelIndex"] + 1);
            this.FindControl("Panel" + this.ViewState["PanelIndex"].ToString()).Visible = true;
            this.FindControl(id).Visible = false;
        }

        private void Unit_Changed(object sender, EventArgs E)
        {
            this.Response.Redirect("default.aspx");
        }

        private void ClearBtn_Click(object sender, EventArgs E)
        {
            this.clearBtn.CausesValidation = false;
            this.Server.Transfer("default2.aspx");
        }

        private void BackBtn_Click(object sender, EventArgs E)
        {
            string id1 = "Panel" + this.ViewState["PanelIndex"].ToString();
            this.ViewState["PanelIndex"] = (object)((int)this.ViewState["PanelIndex"] - 1);
            string id2 = "Panel" + this.ViewState["PanelIndex"].ToString();
            this.FindControl(id1).Visible = false;
            this.FindControl(id2).Visible = true;
        }

        private void NewBtn_Click(object sender, EventArgs E)
        {
            this.Response.Redirect("default2.aspx");
        }

        protected override void OnInit(EventArgs e)
        {
            this.InitializeComponent();
            base.OnInit(e);
        }

        private void InitializeComponent()
        {
            this.unit.SelectedIndexChanged += new EventHandler(this.Unit_Changed);
            this.calculateBtn.Click += new EventHandler(this.CalculateBtn_Click);
            this.clearBtn.Click += new EventHandler(this.ClearBtn_Click);
            this.backBtn.Click += new EventHandler(this.BackBtn_Click);
            this.newBtn.Click += new EventHandler(this.NewBtn_Click);
            this.Load += new EventHandler(this.Page_Load);
        }
    }
}
