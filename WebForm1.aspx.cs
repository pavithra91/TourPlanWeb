using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TourPlanWeb.App_Code;

namespace TourPlanWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //if(string.IsNullOrEmpty(txtBookingName.Text) ||string.IsNullOrEmpty(drpCheckIn.Text)||str)
            string AgentID = "AATRAV"; //Session["AgentID"].ToString();
            string Password = "AATRAV";//Session["Password"].ToString();
            string ReqName = "GetBookingRequest";
            string text = System.IO.File.ReadAllText(Server.MapPath("GetRequestXml.txt"));
            string BookingID = txtBookingName.Text.Trim();
            //text
            string test = text.Replace("#Request", ReqName).Replace("#AgentID", AgentID).Replace("#Password", Password).Replace("#Options", "<BookingId>" + BookingID + "</BookingId>"); ;

            XMLPostingClass xml = new XMLPostingClass();
            //string test = "<Request><OptionInfoRequest><AgentID>AATRAV</AgentID><Password>AATRAV</Password><Opt>BKKAC????????????</Opt><Info>GAIR</Info></OptionInfoRequest></Request>";
            string result = xml.postXMLData("http://demo2.tourplan.com:8080/iCom_V3Demo/servlet/conn", test);

            StringReader sr = new StringReader(result);
            DataSet ds = new DataSet();
            ds.ReadXml(sr);
            GridView1.DataSource = ds.Tables[2];
            GridView1.DataBind();
        }
    }
}