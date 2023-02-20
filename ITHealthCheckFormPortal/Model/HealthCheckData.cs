using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITHealthCheckFormPortal.Model
{
    //public class HealthCheckData
    //{
    //    // public string URL { get; set; } = "https://servicedesk.xgsi.com/api/v3/problems";
    //    // public string AuthToken { get; set; } = "924C2180-7224-4114-A730-89454697DDB4";
    //    public string subject { get; set; } = "IT Health Check Form Test";
    //    public string description { get; set; }
    //    public requester requester;
    //    public string category { get; set; }
    //    public string service_category { get; set; }
    //    //public string Terminal { get; set; }
    //    //public string Status { get; set; }
    //    //public string TicketID { get; set; }
    //    //public string role { get; set; } = "XGS Technician";
    //}



    public class HealthCheckData
    {
        public request request;
    }
    public class request
    {
        public string subject { get; set; } = "IT Health Check Form Test";
        public string description { get; set; }
        public requester requester;
        //public status status;
        public priority priority;
        public category category{ get; set; }
        //public string subcategory { get; set; } = "Canon Multi-Function Printer";
        //public string item { get; set; } = "Scan to Email";
    }

    public class requester
    {
        public string email_id { get; set; }
    }

    public class priority
    {
        public string id { get; set; }

    }

    public class category
    {
        public string name { get; set; }
    }


}