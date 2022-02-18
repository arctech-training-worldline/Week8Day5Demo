using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPagesDemo
{
    public partial class WebFormRequestResponseDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelMessage.Text = Request["greeting"];
            LabelCookies.Text = string.Join(",", Request.Cookies.AllKeys);
        }

        protected void ButtonCreateCookie_OnClick(object sender, EventArgs e)
        {
            Response.Cookies.Add(new HttpCookie("Default_Language", "en"));
            Response.Cookies.Add(new HttpCookie("Color", "red"));
        }

        protected void ButtonSave_OnClick(object sender, EventArgs e)
        {
            // Save to database and redirect to a new page.
            //.....

            Response.Redirect("Home.aspx");
        }
    }
}