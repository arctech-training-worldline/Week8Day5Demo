using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPagesDemo
{
    public partial class WebFormStateManagementDemo : System.Web.UI.Page
    {
        /// <summary>
        /// Read the DEFAULT_LANGUAGE cookie and generate the website in the correct language accordingly
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            var language = Request.Cookies["DEFAULT_LANGUAGE"].Value;

            if (language == null)
            {
                Response.Cookies.Add(new HttpCookie("DEFAULT_LANGUAGE", "en"));
                language = "en";
            }

            // Generate page in the language requested en, hi or mr
        }

        /// <summary>
        /// ViewState collection is used to store data for that specific page
        /// the data is remembered across postbacks
        /// however it is not remembered if accessed from different tab, etc.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ButtonSaveViewState_OnClick(object sender, EventArgs e)
        {
            int visitorCount;

            if (ViewState["VisitorCount"] != null)
            {
                var num = Convert.ToInt32(ViewState["VisitorCount"]);
                visitorCount = num + 1;
            }
            else
                visitorCount = 1;

            ViewState["VisitorCount"] = visitorCount;
            LabelStatusViewState.Text = $"Thank you for submitting your details. You are visitor number {visitorCount} to this page";
        }

        /// <summary>
        /// Application collection is used to store data for the entire website application
        /// the data is remembered as long as the webserver is not shut down
        /// All users of the website share this data
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ButtonSaveApplication_Click(object sender, EventArgs e)
        {
            int visitorCount;

            if (Application["VisitorCount"] != null)
            {
                var num = Convert.ToInt32(Application["VisitorCount"]);
                visitorCount = num + 1;
            }
            else
                visitorCount = 1;

            Application["VisitorCount"] = visitorCount;
            LabelStatusApplication.Text = $"Thank you for submitting your details. You are visitor number {visitorCount} to this page";
        }

        protected void ButtonSaveSession_Click(object sender, EventArgs e)
        {
            int visitorCount;

            if (Session["VisitorCount"] != null)
            {
                var num = Convert.ToInt32(Session["VisitorCount"]);
                visitorCount = num + 1;
            }
            else
                visitorCount = 1;

            Session["VisitorCount"] = visitorCount;
            LabelStatusSession.Text = $"Thank you for submitting your details. You are visitor number {visitorCount} to this page";
        }
    }
}