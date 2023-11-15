using System;
using System.IO;
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
            try
                {
                string nombreUsuario = Session["nombreUsuario"] as string;

                if ( string.IsNullOrEmpty(nombreUsuario) )
                    {
                    lblMensaje.Text = "El nombre de usuario no está presente en la sesión.";
                    lblMensaje.CssClass = "text-danger";
                    lblMensaje.Visible = true;
                    return;
                    }

                string carpetaUsuario = Server.MapPath(Path.Combine(".", nombreUsuario));

                if ( !Directory.Exists(carpetaUsuario) )
                    {
                    Directory.CreateDirectory(carpetaUsuario);
                    }

                FileUpload.SaveAs(Path.Combine(carpetaUsuario, FileUpload.FileName));

                string[] archivos = Directory.GetFiles(carpetaUsuario);
                //GridViewArchivos.DataSource = archivos.Select(Path.GetFileName);
                //GridViewArchivos.DataBind();

                // Mostrar mensaje de carga exitosa en el Label con color verde
                lblMensaje.Text = "Carga exitosa";
                lblMensaje.CssClass = "text-success";
                lblMensaje.Visible = true;
                }
            catch ( Exception ex )
                {
                lblMensaje.Text = $"Error: no seleccionaste archivos para subir!";
                lblMensaje.CssClass = "text-danger";
                lblMensaje.Visible = true;
                }
            }



        }
    }