using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

namespace IntranetApp {
    public partial class RootMaster : System.Web.UI.MasterPage {
        protected void Page_Load(object sender, EventArgs e) {
            SistemasESTIEntities app = new SistemasESTIEntities();            
            string username=CurrentUserName;
            usuarios user = app.usuarios.Where(q => q.username == username).Single();
            //(int)app.usuarios.Where(q => q.username == user).Select(x=>x.id).Single();
            Session["userid"] = user.id;
            ASPxHyperLink1.Text = user.fullname;
            ASPxHyperLink1.NavigateUrl = "/Admin/apps.aspx";
        }
        public static string CurrentUserName
        {
            get
            {
                System.Security.Principal.IPrincipal _User;
                _User = System.Web.HttpContext.Current.User;
                System.Security.Principal.IIdentity _Identity;
                _Identity = _User.Identity;
                string _Value;
                _Value = _Identity.Name.Substring(_Identity.Name.IndexOf(@"\") + 1);
                return _Value;
            }
        }
    }
}