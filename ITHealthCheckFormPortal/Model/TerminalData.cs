using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITHealthCheckFormPortal.Model
{
    public class TerminalData
    {
        public int terminalNumber { get; set; }
        public string terminalName { get; set; }
        public string terminalState { get; set; }
        public string Division { get; set; }
        public string Region { get; set; }
        public string SrvCtrPhone { get; set; }
        public string SrvCtrManager { get; set; }
        public string MgrCellPhone { get; set; }
        public string EMailAddress { get; set; }
        public int IsActive { get; set; }
    }
}