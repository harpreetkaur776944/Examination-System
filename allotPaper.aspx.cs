using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class allotPaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            bind_Papercode();
            bind_stuRegId();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        save();
        bind_Papercode();
        bind_stuRegId();
    }

    private void bind_Papercode()
    {
        SqlDataAdapter adp = new SqlDataAdapter("select papercode from papercode", "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true");
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList2.DataSource = ds;
        DropDownList2.DataBind();
    }

    private void bind_stuRegId()
    {
        SqlDataAdapter adp = new SqlDataAdapter("select regId from allotedPapercode where papercode IS NULL", "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true");
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList1.DataSource = ds;
        DropDownList1.DataBind();
    }

    private void save()
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();
        cmd.CommandText = "update allotedPapercode set papercode=@pcode where regId=@regId";
        cmd.Connection = con;
        cmd.Parameters.Add("@regId", SqlDbType.Int).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.Add("@pcode", SqlDbType.VarChar, 20).Value = DropDownList2.SelectedItem.Text;        
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("mainAdmin.aspx");
    }
}