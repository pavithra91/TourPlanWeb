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
            XMLPostingClass xml = new XMLPostingClass();
            string test = "<Request><OptionInfoRequest><AgentID>AATRAV</AgentID><Password>AATRAV</Password><Opt>BKKAC????????????</Opt><Info>GAIR</Info></OptionInfoRequest></Request>";
            string result = xml.postXMLData("http://demo2.tourplan.com:8080/iCom_V3Demo/servlet/conn", test);

            StringReader sr = new StringReader(result);
            DataSet ds = new DataSet();
            ds.ReadXml(sr);
            GridView1.DataSource = ds.Tables[2];
            GridView1.DataBind();
        }
    }
}