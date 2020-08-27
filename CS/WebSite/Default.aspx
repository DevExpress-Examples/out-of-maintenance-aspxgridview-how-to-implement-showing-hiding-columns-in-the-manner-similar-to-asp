<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script type="text/javascript">
        var colName;
        function OnItemClick(s, e) {
            if (e.item.name == 'HideColumn') {
                grid.PerformCallback(colName);
                colName = null;
            }
            else {
                if (grid.IsCustomizationWindowVisible())
                    grid.HideCustomizationWindow();
                else
                    grid.ShowCustomizationWindow();
            }
        }

        function OnContextMenu(s, e) {
            if (e.objectType == 'header') {
                colName = s.GetColumn(e.index).fieldName;
                headerMenu.GetItemByName('HideColumn').SetEnabled((colName == null ? false : true));
                headerMenu.ShowAtPos(ASPxClientUtils.GetEventX(e.htmlEvent), ASPxClientUtils.GetEventY(e.htmlEvent));
            }
        }
    </script>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxGridView ID="gvData" runat="server" AutoGenerateColumns="False" 
            DataSourceID="ads" KeyFieldName="ProductID" 
            ClientInstanceName="grid" oncustomcallback="gvData_CustomCallback">
            <Columns>
                <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
                <dx:GridViewDataTextColumn FieldName="ProductID" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsCustomizationWindow Enabled="True" />
            <ClientSideEvents ContextMenu="OnContextMenu" />
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/data.mdb"
            SelectCommand="SELECT [ProductID], [ProductName] FROM [Products]"></asp:AccessDataSource>
        <br />
        <dx:ASPxPopupMenu ID="headerMenu" runat="server" ClientInstanceName="headerMenu">
            <Items>
                <dx:MenuItem Text="Hide column" Name="HideColumn">
                </dx:MenuItem>
                <dx:MenuItem Text="Show/hide hidden field list" Name="ShowHideList">
                </dx:MenuItem>
            </Items>
         <ClientSideEvents ItemClick="OnItemClick"/>
        </dx:ASPxPopupMenu>
    </div>
    </form>
</body>
</html>
