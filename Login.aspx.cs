using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();


        if (DropDownList1.SelectedIndex == 0)
        {
            cmd.CommandText = "select *from ad_min";
            cmd.Connection = con;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            bool flag = false;
            if(dr.HasRows)
            {
                while(dr.Read())
                if (TextBox1.Text == dr["userId"].ToString() && TextBox2.Text == dr["pass"].ToString())
                {
                    flag = true;
                    dr.Close();
                    Response.Cookies["c1"].Value = TextBox1.Text;
                    Response.Redirect("mainAdmin.aspx");                  

                }
            }
            if (flag==false)
            {
                Label1.Text = "Incorrect userId or Password";
                Label1.Visible = true;
                TextBox1.Text = "";
                TextBox2.Text = "";
                dr.Close();
            }


        }
        else if (DropDownList1.SelectedIndex == 1)
        {
            cmd.CommandText = "select *from teacher";
            cmd.Connection = con;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            bool flag = false;
            if(dr.HasRows)
            {
                while (dr.Read())
                if (TextBox1.Text == dr["userId"].ToString() && TextBox2.Text == dr["pass"].ToString())
                {
                    flag = true;
                    dr.Close();
                    Response.Cookies["c1"].Value = TextBox1.Text;
                    Response.Redirect("mainTeacher.aspx");

                }
            }
            if (flag==false)
            {
                Label1.Text = "Incorrect userId or Password";
                Label1.Visible = true;
                TextBox1.Text = "";
                TextBox2.Text = "";
                dr.Close();
            }

        }
        else if (DropDownList1.SelectedIndex == 2)
        {

            cmd.CommandText = "select *from student";
            cmd.Connection = con;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            bool flag = false;
            if(dr.HasRows)
            {
                while (dr.Read())
                if (TextBox1.Text == dr["regId"].ToString() && TextBox2.Text == dr["pass"].ToString())
                {
                    flag = true;
                    dr.Close();
                    Response.Cookies["c1"].Value = TextBox1.Text;
                    Response.Redirect("mainStudent.aspx");

                }
            }
           
            if (flag==false)
            {
                Label1.Text = "Incorrect userId or Password";
                Label1.Visible = true;
                TextBox1.Text = "";
                TextBox2.Text = "";
                dr.Close();
            }


        }

        cmd.Dispose();
        con.Close();

    }
}