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
            Panel1.Visible = true;

            string AgentID = "AATRAV"; //Session["AgentID"].ToString();
            string Password = "AATRAV";//Session["Password"].ToString();
            string BookingID = "";
            string response = "";

            if(string.IsNullOrEmpty(drpCheckIn.Text)||string.IsNullOrEmpty(drpCheckOut.Text)&&!string.IsNullOrEmpty(txtBookingName.Text))
            {
                BookingID = txtBookingName.Text.Trim();
                response = GetBookingDetailsByBookingID(AgentID, Password, BookingID);
            }
            else if(!string.IsNullOrEmpty(drpCheckIn.Text)&&!string.IsNullOrEmpty(drpCheckOut.Text)||string.IsNullOrEmpty(txtBookingName.Text))
            {
                string CheckInDate = "";
                string CheckOutDate = "";

                response =  GetBookingDetailsByDates(AgentID, Password, CheckInDate, CheckOutDate);
            }

            else if (string.IsNullOrWhiteSpace(txtBookingName.Text) || string.IsNullOrWhiteSpace(drpCheckIn.Text) || string.IsNullOrWhiteSpace(drpCheckOut.Text))
            {
                Response.Write("dfsdf");
                return;
            }
            

            

            XMLPostingClass xml = new XMLPostingClass();
            //string test = "<Request><OptionInfoRequest><AgentID>AATRAV</AgentID><Password>AATRAV</Password><Opt>BKKAC????????????</Opt><Info>GAIR</Info></OptionInfoRequest></Request>";
            string result = xml.postXMLData("http://demo2.tourplan.com:8080/iCom_V3Demo/servlet/conn", response);

            StringReader sr = new StringReader(result);
            DataSet ds = new DataSet();
            ds.ReadXml(sr);
            GridView1.DataSource = ds.Tables[2];
            GridView1.DataBind();
        }

        public string GetBookingDetailsByBookingID(string AgentID, string Password, string BookingID)
        {
            string ReqName = "GetBookingRequest";
            string text = System.IO.File.ReadAllText(Server.MapPath("GetRequestXml.txt"));
            
            string test = text.Replace("#Request", ReqName).Replace("#AgentID", AgentID).Replace("#Password", Password).Replace("#Options", "<BookingId>" + BookingID + "</BookingId>");

            return test;
        }

        public string GetBookingDetailsByDates(string AgentID, string Password, string CheckInDate, string CheckOutDate)
        {
            string ReqName = "ListBookingsRequest";
            string text = System.IO.File.ReadAllText(Server.MapPath("GetRequestXml.txt"));

            string test = text.Replace("#Request", ReqName).Replace("#AgentID", AgentID).Replace("#Password", Password).Replace("#Options", "<TravelDateFrom>2013-09-01</TravelDateFrom><TravelDateTo>2013-09-30</TravelDateTo>");

            return test;
        }
    }
}