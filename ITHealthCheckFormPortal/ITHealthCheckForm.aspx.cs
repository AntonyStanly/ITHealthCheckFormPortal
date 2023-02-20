using ITHealthCheckFormPortal.DataManger;
using ITHealthCheckFormPortal.Model;
using System;
using System.Configuration;
using System.Threading.Tasks;
using System.Data;
using RestSharp;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace ITHealthCheckFormPortal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             BindTerminal();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                HealthCheckData healthCheckData = new HealthCheckData();
                request request = new request();
                priority priority = new priority();
                requester requester = new requester();
                category category = new category();
                request.requester = requester;
                request.priority = priority;
                request.category = category;
                healthCheckData.request = request;
     

                request.requester.email_id = email.Value;
                //healthCheckData.service_category = "Terminal";// ddlTerminal.SelectedItem.Value;
                if (Convert.ToInt32(ddlPrinter.SelectedValue) != 0 && Convert.ToInt32(ddlPrinter.SelectedValue) != 1 && Convert.ToInt32(ddlPrinter.SelectedValue) != -99)
                {
                    request.category.name = "Printers";
                    request.description = txtPrinterDesc.Value;
                    request.priority.id = ddlPrinter.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }

                if (Convert.ToInt32(ddlComputer.SelectedValue) != 0 && Convert.ToInt32(ddlComputer.SelectedValue) != 1 && Convert.ToInt32(ddlComputer.SelectedValue) != -99)
                {
                    request.category.name = "Computer";
                    request.description = txtComputerDesc.Value;
                    request.priority.id = ddlComputer.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }

                if (Convert.ToInt32(ddlWireless.SelectedValue) != 0 && Convert.ToInt32(ddlWireless.SelectedValue) != 1 && Convert.ToInt32(ddlWireless.SelectedValue) != -99)
                {
                    request.category.name = "Wireless";
                    request.description = txtWirelessDesc.Value;
                    request.priority.id = ddlWireless.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }
                if (Convert.ToInt32(ddlTablet.SelectedValue) != 0 && Convert.ToInt32(ddlTablet.SelectedValue) != 1 && Convert.ToInt32(ddlTablet.SelectedValue) != -99)
                {
                    request.category.name = "Tablet";
                    request.description = txtTabletDesc.Value;
                    request.priority.id = ddlTablet.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }
                if (Convert.ToInt32(ddlDeskPhone.SelectedValue) != 0 && Convert.ToInt32(ddlDeskPhone.SelectedValue) != 1 && Convert.ToInt32(ddlDeskPhone.SelectedValue) != -99)
                {
                    request.category.name = "Phone";
                    request.description = txtDeskPhoneDesc.Value;
                    request.priority.id = ddlDeskPhone.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }
                if (Convert.ToInt32(ddlCopier.SelectedValue) != 0 && Convert.ToInt32(ddlCopier.SelectedValue) != 1 && Convert.ToInt32(ddlCopier.SelectedValue) != -99)
                {
                    request.category.name = "Copier";
                    request.description = txtCopierDesc.Value;
                    request.priority.id = ddlCopier.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }
                if (Convert.ToInt32(ddlScanGun.SelectedValue) != 0 && Convert.ToInt32(ddlScanGun.SelectedValue) != 1 && Convert.ToInt32(ddlScanGun.SelectedValue) != -99)
                {
                    request.category.name = "Scan Gun";
                    request.description = txtScanGun.Value;
                    request.priority.id = ddlScanGun.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }
                string script = "window.onload = function(){ alert('";
                script += "Submitted successfully";
                script += "');";
                script += "window.location = '";
                script += Request.Url.AbsoluteUri;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            catch (Exception ex)
            {
                string script = "window.onload = function(){ alert('";
                script += ex.Message.ToString();
                script += "');";
                script += "window.location = '";
                script += Request.Url.AbsoluteUri;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            
        }

        public void BindTerminal()
        {
            ITHealthCheckDataManger dataManager = new ITHealthCheckDataManger();
            DataTable dt = dataManager.GetTerminalDetails();
            ddlTerminal.DataSource = dt;
            ddlTerminal.DataTextField = "TerminalName";
            ddlTerminal.DataValueField = "TerminalNumber";
            ddlTerminal.DataBind();
            ddlTerminal.Items.Insert(0, "-- Select --");
        }

        public void SaveData(string objData)
        {
            ITHealthCheckDataManger dataManager = new ITHealthCheckDataManger();
            dataManager.SaveHealthCheckData(objData);
        }

        public string SaveDataToServiceDeskAsync(HealthCheckData objData)
        {

            var basePath = ConfigurationManager.AppSettings["apiuri"];
            var apikey = ConfigurationManager.AppSettings["APIKey"];
            var input_data = JsonConvert.SerializeObject(objData);
            var client = new RestClient();
            var request = new RestRequest(basePath, Method.Post);
            request.AddHeader("authtoken", apikey);
            request.AddHeader("Content-Type", "application/x-www-form-urlencoded");
            request.AddParameter("input_data", input_data);
            var response = client.Post(request);
            return response.Content;

        }


    }
}