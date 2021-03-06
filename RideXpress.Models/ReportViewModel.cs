using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RideXpress.Models
{
    //This is a POCO, or Plain Old CLR Object that represents
    //a Report, a POCO should only have properties that are represented
    //the same as the database.
    public class ReportViewModel
    {
        public int ReportID { get; set; }
        public int CarID { get; set; }
        public string DateOfIncident { get; set; }
        public string ReportName { get; set; }
        public string ReportDescription { get; set; }
        public string DateOfReport { get; set; }
        public string Name { get; set; }
        public string DisplayDateOfIncident
        {
            get
            {
                return String.Format("{0:d}", DateTime.Parse(this.DateOfIncident));
            }
        }
        public string DisplayDateOfReport
        {
            get
            {
                return String.Format("{0:d}", DateTime.Parse(this.DateOfReport));
            }
        }
    }
}
