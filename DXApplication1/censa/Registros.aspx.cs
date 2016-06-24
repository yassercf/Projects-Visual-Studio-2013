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
            if (Session["userid"] != null)
            {
                ASPxLabel1.Text = RootMaster.MonthName(((DateTime)Session["fechaActual"]).Month);
            }
            else { Server.Transfer("Default.aspx"); }
            ASPxLabel1.Text = RootMaster.MonthName(((DateTime)Session["fechaActual"]).Month);
            bioEntities bio = new bioEntities();
            Configuracion_Horario h = bio.Configuracion_Horario.Where(x => x.id == 1).Single();
            labelHorario.Text = "El horario de trabajo es de: "+ h.horaEntrada + " a: " + h.horaSalida;
        }

        
    }
}