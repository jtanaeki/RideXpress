using RideXpress.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RideXpress_StarterKit
{
    public partial class Reports : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["RideXpressConnectionString"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        protected void ReportList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int reportID = Convert.ToInt32(ReportList.DataKeys[e.RowIndex].Value.ToString());
            ReportBLL bll = new ReportBLL(connectionString);
            bll.DeleteReport(reportID);
            BindData();
        }

        private void BindData()
        {
            ReportBLL bll = new ReportBLL(connectionString);
            ReportList.DataSource = bll.GetReports();
            ReportList.DataBind();
        }
    }
}