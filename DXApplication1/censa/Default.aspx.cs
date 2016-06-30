using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace censa {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            bioEntities bio = new bioEntities();
            string username = RootMaster.CurrentUserName;
            USERINFO user = bio.USERINFO.Where(q => q.TITLE == username).Single();
            Session["userid"] = user.USERID;
            Session["dpto"] = user.DEFAULTDEPTID;
            Session["foto"] = user.PHOTO;
            Session["roll"] = user.privilege;
            Session["name"] = user.NAME;
            Session["fechaActual"] = DateTime.Now;

            //Session["fechaTitulo"] = DateTime.Now.ToString("mm/yyyy");
            //ASPxHyperLink1.Text = user.fullname;
            //ASPxHyperLink1.NavigateUrl = "/Admin/apps.aspx"; 
            ASPxLabel1.Text = RootMaster.MonthName(((DateTime)Session["fechaActual"]).Month);

        }

        
    }
}