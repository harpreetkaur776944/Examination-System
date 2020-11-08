using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ViewQuestions : System.Web.UI.Page
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

        SqlDataAdapter adp = new SqlDataAdapter("select * from question", "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true");
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("mainTeacher.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string pset = (((Label)(GridView1.Rows[e.RowIndex].FindControl("l9"))).Text);
        int Qno = Convert.ToInt32(((Label)(GridView1.Rows[e.RowIndex].FindControl("l10"))).Text);
        string Ques = ((TextBox)(GridView1.Rows[e.RowIndex].FindControl("t2"))).Text;
        string op1 = (((TextBox)(GridView1.Rows[e.RowIndex].FindControl("t3"))).Text);
        string op2 = (((TextBox)(GridView1.Rows[e.RowIndex].FindControl("t4"))).Text);
        string op3 = (((TextBox)(GridView1.Rows[e.RowIndex].FindControl("t5"))).Text);
        string op4 = (((TextBox)(GridView1.Rows[e.RowIndex].FindControl("t6"))).Text);
        string ans = (((DropDownList)(GridView1.Rows[e.RowIndex].FindControl("d1"))).Text);
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "server=DESKTOP-Q2M7EP9\\SQLEXPRESS1;database=stu;integrated security=true";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "update question set question='" + Ques + "', op1='" + op1 + "',op2='" + op2 + "',op3='" + op3 + "',op4='" + op4 + "',answer ='" + ans + "'where paperset ='" + pset + "' and quesNo=" + Qno;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        GridView1.EditIndex = -1;
        view();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        view();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        view();
    }
}