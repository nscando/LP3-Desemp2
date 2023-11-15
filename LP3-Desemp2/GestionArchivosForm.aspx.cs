using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace LP3_Desemp2
    {
    public partial class GestionArchivosForm : System.Web.UI.Page
        {
        protected void Page_Load ( object sender, EventArgs e )
            {
            if ( this.Session["nombreUsuario"] != null )
                {
                cargarGridView();
                }
            }

        public void cargarGridView ()
            {
            string nombreUsuario = Session["nombreUsuario"] as string;
            string carpetaUsuario = Server.MapPath(Path.Combine(".", nombreUsuario));

            if ( Directory.Exists(carpetaUsuario) )
                {
                string[] files = Directory.GetFiles(carpetaUsuario);
                List<Archivo> fileList = new List<Archivo>();
                foreach ( string file in files )
                    {
                    var fileNew = new Archivo(Path.GetFileName(file), file);
                    fileList.Add(fileNew);
                    }
                GridViewArchivos.DataSource = fileList;
                GridViewArchivos.DataBind();

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
                cargarGridView();

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

        protected void GridViewArchivos_RowCommand ( object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e )
            {

            }
        }
    }