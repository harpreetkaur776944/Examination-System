using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class changePasswordAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.IsPostBack == false)
        {
            HttpCookie obj = Request.Cookies["c3"];
            if (obj == null)
            {
                Response.Redirect("mainAdmin.aspx");
            }
            else
            {
                TextBox1.Text = Server.HtmlEncode(obj.Value);
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();
        cmd.CommandText = "select * from ad_min where userId=@id";
        cmd.Connection = con;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);

        SqlDataReader dr;
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            if (TextBox4.Text != dr["pass"].ToString())
            {
                Label4.Text = "Incorrect Password";
                Label4.Visible = true;
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                dr.Close();
            }

            else
            {
                dr.Close();
                cmd.CommandText = "update ad_min set pass=@pass where userId=@rid";
                cmd.Connection = con;
                cmd.Parameters.Add("@rid", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);
                cmd.Parameters.Add("@pass", SqlDbType.Int).Value = Convert.ToInt32(TextBox2.Text);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Close();
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                Label4.Text = "changed successfully";
                Label4.Visible = true;
            }
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        RequiredFieldValidator1.Enabled = false;
        RequiredFieldValidator2.Enabled = false;

        Response.Redirect("mainAdmin.aspx");
    }
}