using System;
using System.Collections.Generic;
using System.Linq;
using DevExpress.Web;


public partial class _Default : System.Web.UI.Page {
    protected void gvData_CustomCallback(object sender, ASPxGridViewCustomCallbackEventArgs e) {
        if (e.Parameters != string.Empty) {
            (sender as ASPxGridView).Columns[e.Parameters].Visible = false;
            (sender as ASPxGridView).Columns[e.Parameters].ShowInCustomizationForm = true;
        }
    }
}
