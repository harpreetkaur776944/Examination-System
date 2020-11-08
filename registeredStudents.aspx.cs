using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class registeredStudents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            view();
        }
    }
    private void view()
    {
        SqlDataAdapter adp = new SqlDataAdapter("select *from student", "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true");
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("mainAdmin.aspx");
    }
}