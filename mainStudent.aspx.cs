using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class mainStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie obj = Request.Cookies["c1"];
        if (obj == null)
        {
            Response.Redirect("LoginForm.aspx");
        }
        else
        {
            Label3.Text = Server.HtmlEncode(obj.Value);

            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
            con.Open();
            cmd.CommandText = "select Name from student where regId=@id";
            cmd.Connection = con;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(Label3.Text);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                {
                    Label1.Text = dr["Name"].ToString();
                    dr.Close();
                }

            }
            cmd.ExecuteNonQuery();

            cmd.CommandText = "select status from allotedPapercode where regId=@rid";
            cmd.Parameters.Add("@rid", SqlDbType.Int).Value = Convert.ToInt32(Label3.Text);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Label4.Text = dr["status"].ToString();
            }
            dr.Close();

            if (Label4.Text == "attempted")
            {
                Label5.Text = "Already Attempted"; 
            }
 
            cmd.Dispose();
            con.Close();
            Response.Cookies["c2"].Value = Label3.Text;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewResult.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Label5.Text == "Already Attempted")
        {
            Label5.Visible = true;
        }
        else
        {
            Response.Redirect("attemptPaper.aspx");
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        HttpCookie obj = Request.Cookies["c1"];
        if (obj == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Label3.Text = Server.HtmlEncode(obj.Value);
            Response.Cookies["c3"].Value = Label3.Text;
            Response.Cookies["c3"].Expires = DateTime.Now.AddSeconds(2);
            Response.Redirect("changePassword.aspx");
        }
    }
}