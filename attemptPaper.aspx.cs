using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class attemptPaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie obj = Request.Cookies["c1"];
        if(Page.IsPostBack==false)
        {
            TextBox1.Text = Server.HtmlEncode(obj.Value);
            Response.Cookies["c2"].Value = TextBox1.Text;
            SqlConnection con = new SqlConnection();
            SqlCommand cmd = new SqlCommand();
            con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
            con.Open();
            cmd.CommandText = "select Name from student where regId=@id";
            cmd.Connection = con;
            cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Label2.Text = dr["Name"].ToString();
            }
            dr.Close();



            {
                cmd.CommandText = "select papercode from allotedPapercode where regId=@rid";
                cmd.Parameters.Add("@rid", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    TextBox2.Text = dr["papercode"].ToString();
                    {
                        if (TextBox2.Text == "")
                        {
                            Panel2.Visible = false;
                            Panel3.Visible = true;
                        }
                    }

                }
                dr.Close();
                cmd.CommandText = "select * from question where paperset=@pcode order by quesNo asc";
                cmd.Connection = con;
                cmd.Parameters.Add("@pcode", SqlDbType.VarChar, 20).Value = (TextBox2.Text);

                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    {
                        Label7.Text = dr["quesNo"].ToString();
                        TextBox4.Text = dr["question"].ToString();
                        RadioButton1.Text = dr["op1"].ToString();
                        RadioButton2.Text = dr["op2"].ToString();
                        RadioButton3.Text = dr["op3"].ToString();
                        RadioButton4.Text = dr["op4"].ToString();
                        dr.Close();
                    }
                }
            }

            cmd.CommandText = " update allotedPapercode  set status='"+"attempted"+"'where regId=@regid";
            cmd.Parameters.Add("@regid", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Close();
        }
       
    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();
        cmd.CommandText = "insert into attemptPaper values(@pcode,@quesNo,@userid,@ans)";
        cmd.Connection = con;
        cmd.Parameters.Add("@pcode", SqlDbType.VarChar, 20).Value = (TextBox2.Text);
        cmd.Parameters.Add("@quesNo", SqlDbType.Int).Value = (Convert.ToInt32(Label7.Text));
        cmd.Parameters.Add("@userid", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);
        if (RadioButton1.Checked == true)
        {
            cmd.Parameters.Add("@ans", SqlDbType.VarChar, 2).Value = "A";
        }
        else if (RadioButton2.Checked == true)
        {
            cmd.Parameters.Add("@ans", SqlDbType.VarChar, 2).Value = "B";
        }
        else if (RadioButton3.Checked == true)
        {
            cmd.Parameters.Add("@ans", SqlDbType.VarChar, 2).Value = "C";
        }
        else if (RadioButton4.Checked == true)
        {
            cmd.Parameters.Add("@ans", SqlDbType.VarChar, 2).Value = "D";
        }
        cmd.ExecuteNonQuery();

        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        RadioButton4.Checked = false;

        cmd.CommandText = "select Name from student where regId=@id";
        cmd.Connection = con;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Label2.Text = dr["Name"].ToString();
        }
        dr.Close();
        cmd.CommandText = "select papercode from allotedPapercode where regId=@rid";
        cmd.Parameters.Add("@rid", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            TextBox2.Text = dr["papercode"].ToString();
        }
        dr.Close();

        cmd.CommandText = "select * from question where paperset=@code and quesNo=@qno order by quesNo asc";
        cmd.Connection = con;
        cmd.Parameters.Add("@code", SqlDbType.VarChar, 20).Value = (TextBox2.Text);
        cmd.Parameters.Add("@qno", SqlDbType.Int).Value = Convert.ToInt32(Convert.ToInt32(Label7.Text) + 1);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            {
                Label7.Text = dr["quesNo"].ToString();
                TextBox4.Text = dr["question"].ToString();
                RadioButton1.Text = dr["op1"].ToString();
                RadioButton2.Text = dr["op2"].ToString();
                RadioButton3.Text = dr["op3"].ToString();
                RadioButton4.Text = dr["op4"].ToString();
                dr.Close();
            }
        }
        else
        {
            Response.Redirect("finishExam.aspx");
        }
        cmd.Dispose();
        con.Close();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("mainStudent.aspx");
    }
}
