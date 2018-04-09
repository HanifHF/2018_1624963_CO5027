using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1624963_CO5027.admin
{
    public partial class edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string IDItem = Request.QueryString["ID_Item"];
            string filename = IDItem + ".jpg";

            ID_photo.ImageUrl =("~/photos") + filename;
        }
    }
}