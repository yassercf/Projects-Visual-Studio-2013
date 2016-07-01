using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;
using System.Web.UI.HtmlControls;

namespace censa
{
    public partial class RootMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bioEntities bio = new bioEntities();
                int userid = (int)Session["userid"];
                int cantinc = bio.Incidencia.Where(x => x.usuario == userid).Where(y => y.justificado == false).Count();
                notification_header.Text = cantinc.ToString();
                USERINFO usr = bio.USERINFO.Where(y => y.USERID == userid).Single();
                roles r = bio.roles.Where(x => x.id == usr.privilege).Single();
                HyperLink1.Text = usr.NAME;
                roll.Text = r.descripcion;
                fechaSis.EditFormatString = "dddd dd MMMM, yyyy";
                fechaSis.Date = (DateTime)Session["fechaActual"];

                //habilitar el menú justificar según el rol
                mjust.Visible = (r.id > 0 ? true : false);


                //NOtificaciones
                if (cantinc > 0)
                {
                    Incidencia[] tabla = bio.Incidencia.Where(x => x.usuario == userid).Where(y => y.justificado == false).ToArray();
                    foreach (Incidencia item in tabla)
                    {
                        HtmlGenericControl li = new HtmlGenericControl("li");
                        HtmlGenericControl av = new HtmlGenericControl("a");
                        HtmlGenericControl span = new HtmlGenericControl("span");
                        HtmlGenericControl spant = new HtmlGenericControl("span");
                        HtmlGenericControl spanm = new HtmlGenericControl("span");
                        DateTime fecha=Convert.ToDateTime(item.fecha);
                        System.Globalization.DateTimeFormatInfo dtinfo = new System.Globalization.CultureInfo("es-ES", false).DateTimeFormat;
                        dtinfo.GetMonthName(fecha.Month);
                        spant.InnerText = "Fecha: " + fecha.DayOfWeek + " " + fecha.Day + " de " + dtinfo.GetMonthName(fecha.Month) + " del " + fecha.Year;
                        spanm.InnerText = "Tipo de Incidencia: "+item.TipoIncidencia1.descripcion;
                        span.Controls.Add(spant);
                        spanm.Attributes.Add("class", "message");
                        av.Controls.Add(span);
                        av.Controls.Add(spanm);
                        li.Controls.Add(av);
                        menu1.Controls.Add(li);
                    }
                }


            }

            //string username = CurrentUserName;
            //USERINFO user = bio.USERINFO.Where(q => q.TITLE == username).Single();
            //Session["userid"] = user.USERID;
            //Session["fechaActual"] = DateTime.Now;


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

        //protected string GetFormatString(object value)
        //{
        //    return value == null ? string.Empty : value.ToString();
        //}

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

        protected void cargarFecha_Click(object sender, EventArgs e)
        {
            Session["fechaActual"] = fechaSis.Date;
            string currentPage = this.Page.Request.AppRelativeCurrentExecutionFilePath;

            Response.Redirect(currentPage);
        }

    }
}