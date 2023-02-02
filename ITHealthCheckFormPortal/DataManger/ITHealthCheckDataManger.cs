using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using ITHealthCheckFormPortal.Model;

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
        public void SaveHealthCheckData(HealthCheckData objData)
        {
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand()
                {
                    CommandText = "sp_SaveHealthCheckDetails",
                    Connection = connection,
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.Add("@Category", SqlDbType.VarChar).Value = objData.category;
                //cmd.Parameters.Add("@TicketID", SqlDbType.VarChar).Value = objData.TicketID;
                cmd.Parameters.Add("@Description", SqlDbType.VarChar).Value = objData.description;
                //cmd.Parameters.Add("@Terminal", SqlDbType.VarChar).Value = objData.Terminal;
                //cmd.Parameters.Add("@Terminal", SqlDbType.VarChar).Value = objData.Status;
                connection.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}