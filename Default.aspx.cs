using System;
using System.Collections.Specialized;
//using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;

namespace AppfogHelloWorldApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Title = "ASP.NET 2.0 App";
            testLabel.Text = "ASP.Net 2.0 App";

            NameValueCollection appSettings = WebConfigurationManager.AppSettings as NameValueCollection;
            foreach (String key in appSettings.AllKeys)
            {
                /*
                TableRow row = new TableRow();
                
                TableCell keyCell = new TableCell();
                TableCell valueCell = new TableCell();
                
                keyCell.Text = key;
                valueCell.Text = appSettings[key];
                
                row.Cells.Add(keyCell);
                row.Cells.Add(valueCell);
                
                settingsTable.Rows.Add(row);
                */
  
                HtmlGenericControl keyHeader = new HtmlGenericControl("h4");
                keyHeader.InnerHtml = key;

                HtmlGenericControl valuePre = new HtmlGenericControl("pre");

                HtmlGenericControl valueCode = new HtmlGenericControl("code");
                valueCode.InnerHtml = appSettings[key];
                valuePre.Controls.Add(valueCode);
                
                settingsPanel.Controls.Add(keyHeader);
                settingsPanel.Controls.Add(valuePre);
            }        
        }

        protected void btnChangeLabel_Click(object sender, EventArgs e)
        {
            testLabel.Text = String.IsNullOrEmpty(txtSetLabel.Text) ? "NOTHING" : txtSetLabel.Text;
        }
    }
}
