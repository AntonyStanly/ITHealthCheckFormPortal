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
            // BindTerminal();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                HealthCheckData healthCheckData = new HealthCheckData();
                request request = new request();
                priority priority = new priority();
                requester requester = new requester();
                request.requester = requester;
                request.priority = priority;
                healthCheckData.request = request;
                //HealthCheckResponseData healthCheckResponseData = new HealthCheckResponseData();
                //HealthCheckResponseData.request request1 = new HealthCheckResponseData.request();
                //HealthCheckResponseData.requester requester1 = new HealthCheckResponseData.requester();
                //HealthCheckResponseData.status status = new HealthCheckResponseData.status();
                //request1.requester = requester1;
                //request1.status = status;
                


                request.requester.email_id = txtEmail.Value;
                //healthCheckData.service_category = "Terminal";// ddlTerminal.SelectedItem.Value;
                if (Convert.ToInt32(ddlPrinter.SelectedValue) != 0 && Convert.ToInt32(ddlPrinter.SelectedValue) != 1 && Convert.ToInt32(ddlPrinter.SelectedValue) != -99)
                {
                    //request.category = "Printers";
                    request.description = txtPrinterDesc.Value;
                    request.priority.id = ddlPrinter.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }

                if (Convert.ToInt32(ddlComputer.SelectedValue) != 0 && Convert.ToInt32(ddlComputer.SelectedValue) != 1 && Convert.ToInt32(ddlComputer.SelectedValue) != -99)
                {
                    //request.category = "Computer";
                    request.description = txtComputerDesc.Value;
                    request.priority.id = ddlComputer.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }

                if (Convert.ToInt32(ddlWireless.SelectedValue) != 0 && Convert.ToInt32(ddlWireless.SelectedValue) != 1 && Convert.ToInt32(ddlWireless.SelectedValue) != -99)
                {
                    //request.category = "Wireless";
                    request.description = txtWirelessDesc.Value;
                    request.priority.id = ddlWireless.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }
                if (Convert.ToInt32(ddlTablet.SelectedValue) != 0 && Convert.ToInt32(ddlTablet.SelectedValue) != 1 && Convert.ToInt32(ddlTablet.SelectedValue) != -99)
                {
                    //request.category = "Tablet";
                    request.description = txtTabletDesc.Value;
                    request.priority.id = ddlTablet.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }
                if (Convert.ToInt32(ddlDeskPhone.SelectedValue) != 0 && Convert.ToInt32(ddlDeskPhone.SelectedValue) != 1 && Convert.ToInt32(ddlDeskPhone.SelectedValue) != -99)
                {
                    //request.category = "Phone";
                    request.description = txtDeskPhoneDesc.Value;
                    request.priority.id = ddlDeskPhone.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }
                if (Convert.ToInt32(ddlCopier.SelectedValue) != 0 && Convert.ToInt32(ddlCopier.SelectedValue) != 1 && Convert.ToInt32(ddlCopier.SelectedValue) != -99)
                {
                    //request.category = "Copier";
                    request.description = txtCopierDesc.Value;
                    request.priority.id = ddlCopier.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }
                if (Convert.ToInt32(ddlScanGun.SelectedValue) != 0 && Convert.ToInt32(ddlScanGun.SelectedValue) != 1 && Convert.ToInt32(ddlScanGun.SelectedValue) != -99)
                {
                    //request.category = "Scan Gun";
                    request.description = txtScanGun.Value;
                    request.priority.id = ddlScanGun.SelectedValue;
                    var response = SaveDataToServiceDeskAsync(healthCheckData);
                    SaveData(response);
                }
            }
            catch (Exception ex)
            {

            }
        }

        public void BindTerminal()
        {
            ITHealthCheckDataManger dataManager = new ITHealthCheckDataManger();
            DataTable dt = dataManager.GetTerminalDetails();
            ddlTerminal.DataSource = dt;
            ddlTerminal.DataBind();
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