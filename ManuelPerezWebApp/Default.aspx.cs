using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ManuelPerezWebApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            ManuelPerezWebApp.BusinessLogic.FileSystemBusinessLogic fbl = new BusinessLogic.FileSystemBusinessLogic();
            DataTable dt = fbl.GetFileSysytemBySearch(txtFileName.Text);
            gvResults.DataSource = dt;
            gvResults.DataBind();

        }
    }
}