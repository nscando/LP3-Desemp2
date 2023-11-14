using System;
using System.Web;

namespace LP3_Desemp2
    {
    public partial class GestionArchivosForm : System.Web.UI.Page
        {
        protected void Page_Load ( object sender, EventArgs e )
            {
            HttpCookie cookie = Request.Cookies["nombreUsuario"];
            LabelCookie.Text = cookie != null ? cookie.Value : "Cookie Vacia";
            if ( this.Session["nombreUsuario"] != null )
                {
                LabelCookie.Text = Session["nombreUsuario"].ToString();
                }
            else
                {
                LabelCookie.Text = "cookie vacia";
                }
            }

        protected void btnSubir_Click ( object sender, EventArgs e )
            {
            FileUpload.SaveAs($"{Server.MapPath(".")}/{Session["nombreUsuario"]}");
            }
        }
    }