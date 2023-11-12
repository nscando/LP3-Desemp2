using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Desemp2
    {
    public partial class RegistroForm : System.Web.UI.Page
        {
        protected void Page_Load ( object sender, EventArgs e )
            {
           
            }

        protected void btnRegistrarse_Click ( object sender, EventArgs e )
            {
            HttpCookie cookie1 = new HttpCookie("username", TbUsername.Text);
            HttpCookie cookie2 = new HttpCookie("password", TbPassword.Text);
            cookie2.Expires = DateTime.Now.AddMinutes(2);
            Response.Cookies.Add(cookie1);
            Response.Cookies.Add(cookie2);
            Response.Redirect(Request.RawUrl);
            }
        }
    }