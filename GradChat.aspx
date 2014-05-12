<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GradChat.aspx.cs" Inherits="Info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" ng-app>
<head runat="server">
    <script src="Scripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="Scripts/angular.js" type="text/javascript"></script>
    <script src="Scripts/GSN.js" type="text/javascript"></script>
    <link href="StyleSheets/Style.css" rel="stylesheet" type="text/css" />
    <title>GradChat | GSN</title>
    <script type="text/javascript">    
    $(document).ready(function () {        
        Id = getUrlVars()["txtId"];
        Pwd = getUrlVars()["txtpwd"];
        //alert(Id + ' : ' + Pwd);
    });       

//    window.onload = function () {
//        alert('hello ' + Id + ' : ' + Name);
//    };
    </script>    
</head>
<body  ng-controller="GSNChat">    
     <%--Hello {{Id}}, Welcome to GSN!! --%>
     <h1>Grad Chat</h1>
    <div style="text-align:center;"><img src="Images/chat-2room.jpg" style="width:80%; height:250px;" /></div>

     <%-- Menu Bar --%>
     <div id="dvMenu">
        <ul><li ng-repeat="menuItem in menu">{{menuItem.title}}</li></ul>
     </div>

    Top Chat <br />
    <span ng-repeat="chat in topchats">
        <input type="button" value="{{chat.subject}}" />
    </span>

    <br /><br /><br />
   <div style="padding-left:20%;">
    <a href="GradChat.aspx">Start New Chat</a><br />
    
    <div class="chatHistory"> comment history with all the comments 
        of users through out the chat. Ordered by recent comment made.
    </div> <br />

    <table style="width:100%;">
        <tr>
            <td style="width:60%;">
                <textarea style="width:99%; padding-left:5px; margin-right:5px;" placeholder="write comments here"></textarea>
            </td>
            <td style="width:40%;">
                <input type="submit" value="save" style="width: 100px; height:35px; font-size:medium;"/>
            </td>
        </tr>
    </table>
   </div>        
</body>
</html>
