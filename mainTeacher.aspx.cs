using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class mainTeacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("SetQuestionPaper.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewQuestions.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        HttpCookie obj = Request.Cookies["c1"];
        if (obj == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Label1.Text = Server.HtmlEncode(obj.Value);
            Response.Cookies["c3"].Value = Label1.Text;
            Response.Cookies["c3"].Expires = DateTime.Now.AddSeconds(2);
            Response.Redirect("changePasswordTeacher.aspx");
        }
    }
}