using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetCar();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductForm.aspx");
        }
        public void GetCar()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=NCMS-SAL-04;Initial Catalog=BarterSystem;User ID=sa;Password=admin@spring2020");
            string qry = "select * from ProductInfo";
            SqlCommand cmd = new SqlCommand(qry, conn);
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dts = new DataTable();
            sd.Fill(dts);
            GridView1.DataSource = dts;
            GridView1.DataBind();
        }

    }
}