<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Assembly="DevExpress.Web.v8.3, Version=8.3.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGlobalEvents"
	TagPrefix="dxge" %>
<%@ Register Assembly="DevExpress.XtraScheduler.v8.3.Core, Version=8.3.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.XtraScheduler" TagPrefix="dxschsc" %>
<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v8.3, Version=8.3.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxScheduler"
	TagPrefix="dxwschs" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Untitled Page</title>
</head>
<body>
	<form id="form1" runat="server">
	<div id="lbInterval" style="height:100px;overflow:scroll;border:solid 1px black;">
	</div>
	<div>&nbsp;</div>
	<div>
		<dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server" ClientInstanceName="scheduler">
		</dxwschs:ASPxScheduler>
		<dxge:ASPxGlobalEvents ID="ASPxGlobalEvents1" runat="server">
			<ClientSideEvents ControlsInitialized="function(s,e) { PrintVisibleInterval(); }" />
		</dxge:ASPxGlobalEvents>
	</div>
	<script type="text/javascript">
		function PrintVisibleInterval() {
		var visibleIntervals = scheduler.GetVisibleIntervals();
		var count = visibleIntervals.length;
		var resultString = (count > 0)? "" : "empty";
		for (var i = 0; i < count; i++) {
			var interval = visibleIntervals[i];
			resultString += interval.start + " - " + interval.end;
			resultString += "<br/>"
		}
		_aspxGetElementById("lbInterval").innerHTML = resultString;
	}
	</script>
	</form>
</body>
</html>