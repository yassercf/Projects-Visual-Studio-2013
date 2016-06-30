using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

namespace censa {
    public partial class RootMaster : System.Web.UI.MasterPage {
        protected void Page_Load(object sender, EventArgs e) {
            bioEntities bio = new bioEntities();

            //string username = CurrentUserName;
            //USERINFO user = bio.USERINFO.Where(q => q.TITLE == username).Single();
            //Session["userid"] = user.USERID;
            //Session["fechaActual"] = DateTime.Now;
            int userid = (int)Session["userid"];
            int cantinc = bio.Incidencia.Where(x => x.usuario == userid).Where(y=>y.justificado == false).Count();
            notification_header.Text = cantinc.ToString();
            USERINFO usr = bio.USERINFO.Where(y => y.USERID == userid).Single();
            roles r = bio.roles.Where(x => x.id == usr.privilege).Single();
            HyperLink1.Text = usr.NAME + " (" + r.descripcion + ")";
            
            //Byte bytes = (Byte)Session["foto"];
            //ASPxBinaryImage1.Response.Buffer = true;
            //ASPxBinaryImage1.Response.Charset = "";
            //ASPxBinaryImage1.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            ////Response.ContentType = dt.Rows[0]["ContentType"].ToString();
            ////Response.AddHeader("content-disposition", "attachment;filename="
            ////+ dt.Rows[0]["Name"].ToString());

            //ASPxBinaryImage1.Response.BinaryWrite(bytes);
            //ASPxBinaryImage1.Response.Flush();
            //ASPxBinaryImage1.Response.End();

            
        }

        public static string MonthName(int month)
        {
            System.Globalization.DateTimeFormatInfo dtinfo = new System.Globalization.CultureInfo("es-ES", false).DateTimeFormat;
            return dtinfo.GetMonthName(month);
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