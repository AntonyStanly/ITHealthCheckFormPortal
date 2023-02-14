using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITHealthCheckFormPortal.Model
{
    public class HealthCheckResponseData
    {
        public class request
        {
            public string id { get; set; }
            public string description { get; set; }
            public requester requester;
            public status status;
            public string category { get; set; }
        }

        public class requester
        {
            public string email_id { get; set; }
        }

        public class status
        {
            public string name { get; set; }
        }

    }
}