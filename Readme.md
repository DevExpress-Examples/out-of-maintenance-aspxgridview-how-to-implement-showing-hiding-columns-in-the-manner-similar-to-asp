<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to implement showing/hiding columns in the manner similar to ASPxPivotGrid


<p>The example demonstrates how to implement showing/hiding <strong>ASPxGridView</strong> columns in the manner similar to <strong>ASPxPivotGrid</strong>. To accomplish this, perform the following steps:</p><p>1. Place the <strong>ASPxPopupMenu</strong> control on a page. Add two items with such names as "HideColumn" and "ShowHideList".</p><p>2. Handle the client-side <strong>ASPxClientGridView.ContextMenu</strong> event. Show a popup menu if a user clicks on the grid's header.</p><p>3. Handle the client-side <strong>ASPxClientPopupMenu.ItemClick</strong> event. Check on which item the user has clicked and perform proper manipulations. If an item's name is "HideColumn", perform a grid's callback via the <strong>ASPxClientGridView.PerformCallback</strong> method and pass the required column name. In the <strong>ASPxGridView.CustomCallback</strong> event handler hide a column whose name we can get using <strong>e.Parameters</strong>. If an item's name is "ShowHideList", show or hide the grid's CustomizationWindow.</p><p><strong>See also:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/E3631">How to show/hide grid columns via ASPxPopupMenu (client-side version)</a><br />
<a href="https://www.devexpress.com/Support/Center/p/E1461">How to show/hide grid columns via ASPxPopupMenu</a></p>

<br/>


