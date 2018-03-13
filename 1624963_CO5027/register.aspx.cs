using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace _1624963_CO5027
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ID_SignInUserName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BTN_Login_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);

            var user = new IdentityUser()
            {
                UserName = ID_SignInUserName.Text,
                Email = ID_SignInPassword.Text,
            };

            IdentityResult result = manager.Create(user, ID_SignInPassword.Text);
            if (result.Succeeded)
            {
                //to do: log them in
            }
            else
            {
                ID_Register.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
}