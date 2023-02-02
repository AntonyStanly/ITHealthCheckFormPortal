using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITHealthCheckFormPortal.Model
{
    public class HealthCheckData
    {
        // public string URL { get; set; } = "https://servicedesk.xgsi.com/api/v3/problems";
        // public string AuthToken { get; set; } = "924C2180-7224-4114-A730-89454697DDB4";
        public string subject { get; set; } = "IT Health Check Form Test";
        public string description { get; set; }
        public string requester_name { get; set; }
        public string category { get; set; }
        public string service_category { get; set; }
        //public string Terminal { get; set; }
        //public string Status { get; set; }
        //public string TicketID { get; set; }
        //public string role { get; set; } = "XGS Technician";
    }





    public class requestnew
    {
        public request request;
    }
    public class request
    {
        public string subject { get; set; } = "IT Health Check Form Test";
        public string description { get; set; } = "jhbjhb";
        public requester requester;
        public string impact_details { get; set; } = "dfbdb";
        public resolution resolution;
        public status status;
    }


    public class requester
    {
        public string id { get; set; } = "1";
        public string name { get; set; } = "abc";
    }

    public class resolution
    {
        public string content { get; set; } = "sddg";
    }
    public class status
    {
        public string name { get; set; } = "dfbdg";
    }
}