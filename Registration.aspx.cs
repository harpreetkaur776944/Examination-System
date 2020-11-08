using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
           Label9.Text = Convert.ToString(getauto());
           // Label10.Text = Password(4);

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Label9.Text = Convert.ToString(getauto());
        Label10.Text = Password(4);
        Label14.Text = TextBox6.Text + DropDownList3.SelectedItem.Text + TextBox7.Text;

        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlCommand cmd1 = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();
        cmd.CommandText = "insert into student values(@n,@fn,@add,@cn,@email,@dob,@course,@sem,@regId,@pass)";
        cmd1.CommandText = "insert into allotedPapercode(regId,papercode) values(@regId,NULL)";
        cmd.Connection = con;
        cmd1.Connection = con;
        cmd.Parameters.Add("@n", SqlDbType.VarChar, 20).Value = (TextBox1.Text);
        cmd.Parameters.Add("@fn", SqlDbType.VarChar, 20).Value = (TextBox2.Text);
        cmd.Parameters.Add("@add", SqlDbType.VarChar, 30).Value = (TextBox3.Text);
        cmd.Parameters.Add("@cn", SqlDbType.BigInt).Value = Convert.ToInt64(TextBox4.Text);
        cmd.Parameters.Add("@email", SqlDbType.VarChar, 30).Value = (TextBox5.Text);
        cmd.Parameters.Add("@dob", SqlDbType.VarChar, 20).Value = (Label14.Text);
        cmd.Parameters.Add("@course", SqlDbType.VarChar, 10).Value = DropDownList1.SelectedItem.Text;
        cmd.Parameters.Add("@sem", SqlDbType.VarChar, 5).Value = DropDownList2.SelectedItem.Text;
        cmd.Parameters.Add("@regId", SqlDbType.Int).Value = Convert.ToInt32(Label9.Text);
        cmd.Parameters.Add("@pass", SqlDbType.Int).Value = (Label10.Text);
        cmd1.Parameters.Add("@regId",SqlDbType.Int).Value = Convert.ToInt32(Label9.Text);
        //cmd1.Parameters.Add("@pcode", SqlDbType.VarChar, 20).Value =DBNull;
        cmd.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();
        cmd1.Dispose();
        cmd.Dispose();
        con.Close();
        Panel1.Visible = true;

    }

    public static string Password(int PasswordLength)
    {
        string allowedCh = "123456789";
        Random randNum = new Random();
        char[] chars = new char[PasswordLength];
        for (int i = 0; i < PasswordLength; i++)
        {
            chars[i] = allowedCh[(int)((allowedCh.Length) * randNum.NextDouble())];
        }
        return new string(chars);
    }

    private Int32 getauto()
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();
        cmd.CommandText = "select isnull(max(regId),1000) from student";
        cmd.Connection = con;
        return Convert.ToInt32(cmd.ExecuteScalar()) + 1;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label9.Text = Convert.ToString(getauto());
        //Label10.Text = Password(4);
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label9.Text = Convert.ToString(getauto());
       // Label10.Text = Password(4);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        Panel1.Visible = false;
    }
 
}