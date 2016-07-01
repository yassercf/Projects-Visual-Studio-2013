using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace censa
{
    public partial class userMarks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string usuario = (string)(Session["userid"]);
            if (usuario != null)
            {

            }
        }

        
    }
}