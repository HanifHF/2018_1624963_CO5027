using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

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
        //This is for register
        protected void BTN_Login_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnectionString");
            var roleStore = new RoleStore <IdentityRole> (identityDbContext);
            var roleManager = new RoleManager <IdentityRole> (roleStore);
            var userStore = new UserStore <IdentityUser> (identityDbContext);
            var manager = new UserManager <IdentityUser> (userStore);

            IdentityRole identityRole = new IdentityRole("Admin");
            roleManager.Create(identityRole);

            var user = new IdentityUser()
            {
                UserName = ID_SignInUserName.Text,
                Email = ID_SignInPassword.Text,
            };

            IdentityResult result = manager.Create(user, ID_SignInPassword.Text);
            if (result.Succeeded)
            {
                //to do: log them in
                manager.AddToRole(user.Id, "Admin");
                manager.Update(user);
                ID_Register.Text = "Registration Succesful";
            }
            else
            {
                ID_Register.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }

        //This is for login
        protected void BTN_Login2_Click(object sender, EventArgs e)
        {
            {
                var identityDbContext = new IdentityDbContext("IdentityConnectionString");
                var userStore = new UserStore<IdentityUser>(identityDbContext);
                var userManager = new UserManager<IdentityUser>(userStore);
                var user = userManager.Find(txtLoginEmail.Text, txtLoginPassword.Text);
                if (user != null)
                {
                    LogUserIn(userManager, user);
                }

                else
                {
                    litLoginError.Text = "Invalid username or password";
                }
            }
        }

        private void LogUserIn ( UserManager <IdentityUser> usermanager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = usermanager.CreateIdentity(
                user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

        }
    }
}