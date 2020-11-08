using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class viewResult : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie obj = Request.Cookies["c2"];
        Label1.Text = Server.HtmlEncode(obj.Value);

        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select Name from student where regId=@id";
        cmd.Connection = con;
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Convert.ToInt32(Label1.Text);

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            {
                Label8.Text = dr["Name"].ToString();
                dr.Close();
            }

        }
        
        cmd.CommandText = "select * from allotedPapercode where regId=@sid";
        cmd.Parameters.Add("@sid", SqlDbType.Int).Value = Label1.Text;
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            {
                Label2.Text = dr["papercode"].ToString();
                Response.Write(Label2.Text);

                if (Label2.Text == "")
                {
                    Panel2.Visible = false;
                    Panel3.Visible = true;
                    //Response.End();
                }

                else
                {
                    dr.Close();
                    cmd.CommandText = "select max(quesNo) from question where paperset=@pset";
                    cmd.Parameters.Add("@pset", SqlDbType.VarChar, 20).Value = Label2.Text;


                    int maxQue = (Int32)cmd.ExecuteScalar();

                    float totalPercent;
                    int total = 0;

                    for (int i = 1; i <= maxQue; i++)
                    {
                        Label5.Text = i.ToString();
                        if (compareAnswers(i) == true)
                        {
                            total = total + 4;
                        }
                        else
                        {
                            total = total - 1;
                        }

                    }
                    totalPercent = (float)total / 4;

                    Label7.Text = totalPercent.ToString();
                    cmd.CommandText = "insert into result values(@regid,@score)";
                    cmd.Parameters.Add("@regid", SqlDbType.Int).Value = Label1.Text;
                    cmd.Parameters.Add("@score", SqlDbType.Float).Value = Label7.Text;
                    cmd.ExecuteNonQuery();
                }
            }
        }
        dr.Close();
        
        dr.Close();
        cmd.Dispose();
        con.Close();
    }


    private string viewAttemptAnswer(int queNo)
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select attemptAns from attemptPaper where userId=@id and papercode=@pcode and queNo=@qno";
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Label1.Text;
        cmd.Parameters.Add("@pcode", SqlDbType.VarChar, 20).Value = Label2.Text;
        cmd.Parameters.Add("@qno", SqlDbType.Int).Value = queNo;

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            {
                TextBox1.Text = dr["attemptAns"].ToString();
            }
        }
        dr.Close();
        cmd.Dispose();
        con.Close();
        return TextBox1.Text;
    }

    private string viewCorrectAnswer(int queNo)
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select answer from question where paperset=@pcode and quesNo=@qno";
        cmd.Parameters.Add("@pcode", SqlDbType.VarChar, 20).Value = Label2.Text;
        cmd.Parameters.Add("@qno", SqlDbType.Int).Value = queNo;
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            {
                TextBox2.Text = dr["answer"].ToString();
            }
        }
        dr.Close();
        cmd.Dispose();
        con.Close();
        return TextBox2.Text;
    }

    bool compareAnswers(int queNo)
    {
        bool marks;
        string attemptAns;
        string correctAns;

            if ((attemptAns = viewAttemptAnswer(queNo)) == (correctAns =viewCorrectAnswer(queNo)))
            {
                marks = true;
            }
            else
            {
                marks = false;
            }
        
        return marks;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("mainStudent.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("mainStudent.aspx");
    }
}