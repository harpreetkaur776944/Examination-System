using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class finishExam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         HttpCookie obj = Request.Cookies["c1"];
       
             Label2.Text = Server.HtmlEncode(obj.Value);
         
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("mainStudent.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewResult.aspx");
    }
}