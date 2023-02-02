using ITHealthCheckFormPortal.DataManger;
using ITHealthCheckFormPortal.Model;
using Newtonsoft.Json;
using System;
using System.Configuration;
using System.IO;
using System.Net;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Data;
using System.Text;
using System.Net.Http.Headers;

namespace ITHealthCheckFormPortal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static readonly HttpClient client = new HttpClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            // BindTerminal();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                requestnew requestnew = new requestnew();
                request objData = new request();
                requester requester = new requester();
                resolution resolution = new resolution();
                status status = new status();
                objData.requester = requester;
                objData.resolution = resolution;
                objData.status = status;
                requestnew.request = objData;

                HealthCheckData healthCheckData = new HealthCheckData();

                healthCheckData.requester_name = txtEmail.Value;
                healthCheckData.service_category = "Terminal";// ddlTerminal.SelectedItem.Value;
                if (Convert.ToInt32(ddlPrinter.SelectedValue) != 0 && Convert.ToInt32(ddlPrinter.SelectedValue) != 4)
                {
                    healthCheckData.category = "Printer";
                    healthCheckData.description = txtPrinterDesc.Value;
                    //SaveData(objData);
                    var response = SaveDataToServiceDeskAsync(requestnew);
                }

                if (Convert.ToInt32(ddlComputer.SelectedValue) != 0 && Convert.ToInt32(ddlComputer.SelectedValue) != 4)
                {
                    healthCheckData.category = "Computer";
                    healthCheckData.description = txtComputerDesc.Value;
                    //SaveData(objData);
                    SaveDataToServiceDeskAsync(requestnew);
                }

                if (Convert.ToInt32(ddlWireless.SelectedValue) != 0 && Convert.ToInt32(ddlWireless.SelectedValue) != 4)
                {
                    healthCheckData.category = "Wireless";
                    healthCheckData.description = txtWirelessDesc.Value;
                    //SaveData(objData);
                    SaveDataToServiceDeskAsync(requestnew);
                }
                if (Convert.ToInt32(ddlTablet.SelectedValue) != 0 && Convert.ToInt32(ddlTablet.SelectedValue) != 4)
                {
                    healthCheckData.category = "Tablet";
                    healthCheckData.description = txtTabletDesc.Value;
                    //SaveData(objData);
                    SaveDataToServiceDeskAsync(requestnew);
                }
                if (Convert.ToInt32(ddlDeskPhone.SelectedValue) != 0 && Convert.ToInt32(ddlDeskPhone.SelectedValue) != 4)
                {
                    healthCheckData.category = "Phone";
                    healthCheckData.description = txtDeskPhoneDesc.Value;
                    //SaveData(objData);
                    SaveDataToServiceDeskAsync(requestnew);
                }
                if (Convert.ToInt32(ddlCopier.SelectedValue) != 0 && Convert.ToInt32(ddlCopier.SelectedValue) != 4)
                {
                    healthCheckData.category = "Copier";
                    healthCheckData.description = txtCopierDesc.Value;
                    //SaveData(objData);
                    SaveDataToServiceDeskAsync(requestnew);
                }
                if (Convert.ToInt32(ddlScanGun.SelectedValue) != 0 && Convert.ToInt32(ddlScanGun.SelectedValue) != 4)
                {
                    healthCheckData.category = "Scan Gun";
                    healthCheckData.description = txtScanGun.Value;
                    //SaveData(objData);
                    SaveDataToServiceDeskAsync(requestnew);
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

        public void SaveData(HealthCheckData objData)
        {
            ITHealthCheckDataManger dataManager = new ITHealthCheckDataManger();
            dataManager.SaveHealthCheckData(objData);
        }
        public Task SaveDataToServiceDeskAsync(requestnew objData)
        {

            //var myUri = new Uri(fullpath);
            //var path = ConfigurationManager.AppSettings["apiuri"];
            //var apikey = ConfigurationManager.AppSettings["APIKey"];
            //var myWebRequest = WebRequest.Create(path);
            //var myHttpWebRequest = (HttpWebRequest)myWebRequest;
            //myHttpWebRequest.PreAuthenticate = true;
            //myHttpWebRequest.Headers.Add("Authorization", "Bearer " + apikey);
            //myHttpWebRequest.Accept = "application/json";

            //var myWebResponse = myWebRequest.GetResponse();
            //var responseStream = myWebResponse.GetResponseStream();
            //if (responseStream == null) return null;

            //var myStreamReader = new StreamReader(responseStream, Encoding.Default);
            //var json = myStreamReader.ReadToEnd();

            //responseStream.Close();
            //myWebResponse.Close();


            //HttpResponseMessage response1 = await client.PostAsync(path, modelData);
            // response1.EnsureSuccessStatusCode();

            //HttpWebRequest requestObj = WebRequest.Create(path) as HttpWebRequest;
            //requestObj.Method = "POST";
            //requestObj.ContentType = "application/json";
            //requestObj.Credentials = new NetworkCredential(username, apikey);
            //requestObj.Headers.Add("Authorization", "Basic " + apikey);

            //var modelData = JsonConvert.SerializeObject(objData);


            //var path = ConfigurationManager.AppSettings["apiuri"];
            //var username = ConfigurationManager.AppSettings["username"];
            //var apikey = ConfigurationManager.AppSettings["APIKey"];
            //var modelData = JsonConvert.SerializeObject(objData);

            //var uri = new Uri(@path);

            //HttpClient c = new HttpClient();
            //c.BaseAddress = uri;
            //c.DefaultRequestHeaders.TryAddWithoutValidation("authtoken", apikey);
            //c.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            //HttpRequestMessage req = new HttpRequestMessage(HttpMethod.Post, path);
            //req.Content = new StringContent(modelData, Encoding.UTF8, "application/json");
            //HttpResponseMessage httpResponseMessage = await c.SendAsync(req);
            //httpResponseMessage.EnsureSuccessStatusCode();
            //HttpContent httpContent = httpResponseMessage.Content;
            //string responseString = await httpContent.ReadAsStringAsync();

            //Console.WriteLine(responseString);



            //HttpClient client = new HttpClient();
            var path = ConfigurationManager.AppSettings["apiuri"];
            var username = ConfigurationManager.AppSettings["username"];
            var apikey = ConfigurationManager.AppSettings["APIKey"];
            var modelData = JsonConvert.SerializeObject(objData);
            HttpWebRequest requestObj = (HttpWebRequest)WebRequest.Create(path);
            requestObj.Method = "POST";
            requestObj.ContentType = "application/json";
            requestObj.Headers.Add("authtoken", apikey);
            var data = Encoding.ASCII.GetBytes(modelData);
            requestObj.ContentLength = data.Length;

            using (var stream = new StreamWriter(requestObj.GetRequestStream()))
            {
                //streamwri.Write(data, 0, data.Length);
                stream.Write(modelData);
                stream.Flush();
                stream.Close();
            }
            var response = (HttpWebResponse)requestObj.GetResponse();

            var responseString = new StreamReader(response.GetResponseStream()).ReadToEnd();

            //var buffer = Encoding.UTF8.GetBytes(modelData);
            //var byteContent = new ByteArrayContent(buffer);
            //byteContent.Headers.ContentType = new MediaTypeHeaderValue("application/json");
            //client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("authtoken", apikey);
            ////client.DefaultRequestHeaders.Add("authtoken", apikey);
            //var response1 = client.GetAsync(path);
            //var res = response1.ContinueWith(t1 => t1.Result.Content.Headers.ToString());
            //response1.EnsureSuccessStatusCode();
            //HttpContent httpContent = response1.Content;
            //var contents = response1.ReadAsStringAsync();

            //using (var streamwriter = new StreamWriter(requestObj.GetRequestStream()))
            //{
            //    streamwriter.Write(data, 0, data.Length);
            //    streamwriter.Flush();
            //    streamwriter.Close();

            //    var httpresponse = (HttpWebResponse)requestObj.GetResponse();

            //    using (var streamreader = new StreamReader(httpresponse.GetResponseStream()))
            //    {
            //        var result = streamreader.ReadToEnd();
            //        // var results = jsonconvert.deserializeobject<objdata>(result);
            //    }
            //}

            //HttpWebResponse response = null;
            //HttpWebRequest request = WebRequest.Create(path) as HttpWebRequest;
            //request.Method = "POST";
            //request.Accept = "application/json";
            //request.ContentType = "application/json";
            //request.Headers.Add("authtoken", apikey);
            //var modelData = JsonConvert.SerializeObject(objData);



            //using (Stream requestStream = request.GetRequestStream())
            //{
            //    requestStream.Write(modelData, 0, (int)modelData.Length);
            //    requestStream.Close();
            //}
            //HttpWebResponse httpWebResponse = (HttpWebResponse)request.GetResponse();
            //response = httpWebResponse;
            //using (httpWebResponse)
            //{
            //    if (response.StatusCode == HttpStatusCode.Created)
            //    {
            //    }
            //}


            //string url = "https://servicedesk.xgsi.com/api/v3/requests";
            //HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
            //request.Method = "POST";
            //request.Accept = "application/json";
            //request.ContentType = "application/json";
            //request.Headers.Add("authtoken", string.Concat(":", objData.AuthToken));

            return Task.CompletedTask;

        }


    }
}