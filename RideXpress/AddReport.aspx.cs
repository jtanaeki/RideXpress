using RideXpress.BLL;
using RideXpress.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RideXpress_StarterKit
{
    public partial class AddReport : System.Web.UI.Page
    {
        static string connectionString = ConfigurationManager.ConnectionStrings["RideXpressConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();

                CarList.Items.Insert(0, new ListItem(" -- Select A Vehicle -- ", "0"));
            }
        }

        protected void ReportAddButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                ReportBLL bll = new ReportBLL(connectionString);
                ReportViewModel report = new ReportViewModel();
                report.CarID = Convert.ToInt32(CarList.SelectedValue);
                report.DateOfIncident = DateOfIncident.Text;
                report.ReportName = ReportName.Text;
                report.ReportDescription = ReportDescription.Text;
                report.DateOfReport = DateTime.Now.ToString();
                bll.AddReport(report);
                Response.Redirect("~/Reports.aspx");
            }
        }

        private void BindData()
        {
            CarBLL bll = new CarBLL(connectionString);
            CarList.DataSource = bll.GetCarInventory();
            CarList.DataTextField = "Name";
            CarList.DataValueField = "CarID";
            CarList.DataBind();
        }
    }
}