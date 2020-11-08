using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class papercode : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            TextBox1.Text = Convert.ToString(getauto());
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        save();
        TextBox1.Text = Convert.ToString(getauto());
    }
    private Int32 getauto()
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();
        cmd.CommandText = "select isnull(max(pid),100) from papercode";
        cmd.Connection = con;
        return Convert.ToInt32(cmd.ExecuteScalar()) + 1;
    }

    private void save()
    {

        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();
        cmd.CommandText = "insert into papercode values(@pid,@pcode,@sub)";
        cmd.Connection = con;
        cmd.Parameters.Add("@pid", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);
        cmd.Parameters.Add("@pcode", SqlDbType.VarChar, 20).Value = (TextBox2.Text);
        cmd.Parameters.Add("@sub", SqlDbType.VarChar, 50).Value = (TextBox3.Text);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        TextBox2.Text = "";
        TextBox3.Text = "";

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