using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Web.Script.Serialization;

namespace cv
{
    public partial class api : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "Data Source=127.0.0.1,1433;Initial Catalog=vieclam;User Id=sa;Password=123;";
            string query = "SELECT job_id, employer_name, job_employment_type, job_title, job_apply_link FROM JobHistory";
            DataTable dataTable = new DataTable();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(dataTable);
                }
            }

            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            foreach (DataRow row in dataTable.Rows)
            {
                Dictionary<string, object> rowData = new Dictionary<string, object>();
                foreach (DataColumn column in dataTable.Columns)
                {
                    rowData[column.ColumnName] = row[column];
                }
                rows.Add(rowData);
            }

            JavaScriptSerializer serializer = new JavaScriptSerializer();
            string json = serializer.Serialize(rows);

            Response.ContentType = "application/json";
            Response.Write(json);
            Response.End();
        }
    }
}
