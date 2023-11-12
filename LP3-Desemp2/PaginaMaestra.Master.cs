using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Desemp2
    {
    public partial class PaginaMaestra : System.Web.UI.MasterPage
        {
        protected void Page_Load ( object sender, EventArgs e )
            {
            HttpCookie cookie = Request.Cookies["username"];
            LabelUsuario.Text = cookie != null ?  cookie.Value : "";
            }
        }
    }