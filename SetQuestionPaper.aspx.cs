using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class SetQuestionPaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            bind_Papercode();
            if ((getauto()) !=0)
            {
                TextBox1.Text = Convert.ToString(getauto());
            }
            else
            {
               TextBox1.Text = "20 questions completed";
                TextBox2.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            save();
            if ((getauto()) != 0)
            {
                TextBox1.Text = Convert.ToString(getauto());
            }
            else
            {
                TextBox1.Text = "20 questions completed";
                TextBox2.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
            }
        }
        catch (Exception )
        {
            Label9.Text = "Invalid";
            Label9.Visible = true;
            
        }
    }
    private void bind_Papercode()
    {
        SqlDataAdapter adp = new SqlDataAdapter("select papercode from papercode", "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true");
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DropDownList1.DataSource = ds;
        DropDownList1.DataBind();
    }

    private Int32 getauto()
    {
        string p = DropDownList1.SelectedItem.Text;
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();      
        cmd.CommandText = "select isnull(max(quesNo),0) from question where paperset='"+p+"'";
        cmd.Connection = con;
        int count = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
        if (count <= 20)
            return count;
        else
            return 0;
    }
  
    private void save()
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();
        cmd.CommandText = "insert into question values(@pset,@qNo,@que,@op1,@op2,@op3,@op4,@ans)";
        cmd.Connection = con;
        cmd.Parameters.Add("@pset", SqlDbType.VarChar,50).Value =DropDownList1.SelectedItem.Text;
        cmd.Parameters.Add("@qNo", SqlDbType.Int).Value = Convert.ToInt32(TextBox1.Text);
        cmd.Parameters.Add("@que", SqlDbType.VarChar, 150).Value = (TextBox2.Text);
        cmd.Parameters.Add("@op1", SqlDbType.VarChar, 50).Value = (TextBox5.Text);
        cmd.Parameters.Add("@op2", SqlDbType.VarChar, 50).Value = (TextBox7.Text);
        cmd.Parameters.Add("@op3", SqlDbType.VarChar, 50).Value = (TextBox6.Text);
        cmd.Parameters.Add("@op4", SqlDbType.VarChar, 50).Value = (TextBox8.Text);
        cmd.Parameters.Add("@ans", SqlDbType.VarChar, 2).Value = DropDownList2.SelectedItem.Text;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        TextBox2.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
    }

  
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Convert.ToString(getauto());
        if ((getauto()) !=0)
            {
                TextBox1.Text = Convert.ToString(getauto());
            }
            else
            {
                TextBox1.Text = "20 questions completed";
                TextBox2.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
            }
        }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("mainTeacher.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
