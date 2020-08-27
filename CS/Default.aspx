<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web"
    TagPrefix="dxge" %>
<%@ Register Assembly="DevExpress.XtraScheduler.v15.1.Core, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraScheduler" TagPrefix="dxschsc" %>
<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxScheduler"
    TagPrefix="dxwschs" %>
    
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<script type="text/javascript">
        function PrintVisibleInterval(s,e) {
        var visibleIntervals = scheduler.GetVisibleIntervals();
        var count = visibleIntervals.length;
        var resultString = (count > 0)? "" : "empty";
        for (var i = 0; i < count; i++) {
            var interval = visibleIntervals[i];
            resultString += interval.GetStart() + " - " + interval.GetEnd();
            resultString += "<br/>"
        }
        document.getElementById("lbInterval").innerHTML = resultString;
        }
</script>
<body>
    <form id="form1" runat="server">
    <div id="lbInterval" style="height:100px;overflow:scroll;border:solid 1px black;">
    </div>
    <div>&nbsp;</div>
    <div>
        <dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server" ClientInstanceName="scheduler">
            <ClientSideEvents VisibleIntervalChanged="PrintVisibleInterval" Init="PrintVisibleInterval" />
        </dxwschs:ASPxScheduler>
    </div>
  
    </form>
</body>
</html>
