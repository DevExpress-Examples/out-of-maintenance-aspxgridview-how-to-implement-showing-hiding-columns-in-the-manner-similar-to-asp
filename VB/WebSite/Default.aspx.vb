Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports DevExpress.Web


Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub gvData_CustomCallback(ByVal sender As Object, ByVal e As ASPxGridViewCustomCallbackEventArgs)
		If e.Parameters <> String.Empty Then
			TryCast(sender, ASPxGridView).Columns(e.Parameters).Visible = False
			TryCast(sender, ASPxGridView).Columns(e.Parameters).ShowInCustomizationForm = True
		End If
	End Sub
End Class
