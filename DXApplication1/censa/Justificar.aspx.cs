using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace censa
{
    public partial class Justificar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idrol = (int)Session["roll"];
            if (Session["userid"] != null && idrol > 0)
            {
                ASPxLabel1.Text = RootMaster.MonthName(((DateTime)Session["fechaActual"]).Month);

            }
            else { Server.Transfer("Default.aspx"); }
        }

        protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            bioEntities bio = new bioEntities();
            int id = Convert.ToInt32(e.Keys["id"].ToString());
            int tipoJustificacion = Convert.ToInt32(e.NewValues["tipoJustificacion"].ToString());
            bool justificado = Convert.ToBoolean(e.NewValues["justificado"].ToString());
            try
            {
                bio.spUpdateJustificarInc(id, tipoJustificacion, justificado);
                bio.SaveChanges();
            }
            catch (Exception ex) { throw new Exception(ex.Message); }


            e.Cancel = true;
            ASPxGridView1.CancelEdit();
        }
    }
}