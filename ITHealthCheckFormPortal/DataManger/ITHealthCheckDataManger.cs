using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using ITHealthCheckFormPortal.Model;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;

namespace ITHealthCheckFormPortal.DataManger
{
    public class ITHealthCheckDataManger
    {
        string ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

        public DataTable GetTerminalDetails()
        {
            DataTable dtTerminal = new DataTable();
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("sp_GetTerminalManagers", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };
                connection.Open();

                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    sda.Fill(dtTerminal);
                }
                return dtTerminal;
                //SqlDataReader sdr = cmd.ExecuteReader();
                //while (sdr.Read())
                //{
                //    dsTerminal = new DataSet();

                //    Console.WriteLine(sdr["Id"] + ",  " + sdr["Name"] + ",  " + sdr["Email"] + ",  " + sdr["Mobile"]);
                //}
            }
        }
        public void SaveHealthCheckData(string objData)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(ConnectionString))
                {
                    connection.Open();
                    var data = (JObject)JsonConvert.DeserializeObject(objData);
                    string insertQuery = "insert into ITHealthCheckFormPortal(TicketId,Category,Description,Terminal,Status,Email)values (@TicketId,@Category,@Description,@Terminal,@Status,@Email)";
                    SqlCommand cmd = new SqlCommand(insertQuery, connection);
                 
                    cmd.Parameters.AddWithValue("@TicketId", (string)data.SelectToken("request.id"));
                    cmd.Parameters.AddWithValue("@Category", (string)data.SelectToken("request.description"));
                    cmd.Parameters.AddWithValue("@Description", (string)data.SelectToken("request.description"));
                    cmd.Parameters.AddWithValue("@Terminal", (string)data.SelectToken("request.requester.email_id"));
                    cmd.Parameters.AddWithValue("@Status", (string)data.SelectToken("request.status.name"));
                    cmd.Parameters.AddWithValue("@Email", (string)data.SelectToken("request.requester.email_id"));
                    cmd.ExecuteNonQuery();
                    connection.Close();
                }
            }

            catch(Exception ex)
            {

            }
            
        }
    }
}