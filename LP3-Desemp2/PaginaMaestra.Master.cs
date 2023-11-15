using System;
using System.Web;

namespace LP3_Desemp2
    {
    public partial class PaginaMaestra : System.Web.UI.MasterPage
        {
        protected void Page_Load ( object sender, EventArgs e )
            {

            HttpCookie cookie = Request.Cookies["nombreUsuario"];
            LabelUsuario.Text = cookie != null ? cookie.Value : "Cookie Vacia";
            if ( this.Session["nombreUsuario"] != null )
                {
                LabelUsuario.Text = Session["nombreUsuario"].ToString();
                }
            else
                {
                LabelUsuario.Text = "cookie vacia";
                }
            }
        }
    }