using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace gunjkamg_InClass20240409
{

    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the page is not a postback, which means it's the initial load
            if (!IsPostBack)
            {
                // Since it's the initial load, add items to the ListBox
                lbFruits.Items.Add("Strawberry");
                // Add more fruits as needed
            }
        }

        // Event that will run when the user in their browser selects a fruit from their list box
        protected void lbFruits_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblChosenFruit.Text = lbFruits.SelectedValue;

            // Do something with the selected fruit, for example:
            // Response.Write(selectedFruit);
        }
    }
}
