using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1624963_CO5027.admin
{
    public partial class uploadimage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productID = Request.QueryString[".jpg"];
            string filename = productID + ".jpg";
            string savelocation = Server.MapPath("~/photos" + filename);

            ID_UploadControl.SaveAs(savelocation);

        }

        protected void BTN_upload_Click(object sender, EventArgs e)
        {

        }
    }
}