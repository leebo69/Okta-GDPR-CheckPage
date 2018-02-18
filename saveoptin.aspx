<% @Page Language="C#" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.IO" %><%
String oktaAPIToken="<API Token from your Okta Org>";
string todaysDate = DateTime.Now.ToString("yyyy-mm-dd:hh:mm:ss");
String json="{\"profile\": {\"optin\": \""+Request.Form["optin"]+"\",\"gdprDate\": \""+todaysDate+"\"}}";
String userId=Request.Form["userId"];
Uri uri=new Uri ("https://<your Okta Org>.oktapreview.com/api/v1/users/"+userId);
// Response.Write("hello: optin=" + json + " userId= " + userId + " date= " + todaysDate); // <for debug>

PostResponse(uri,json,oktaAPIToken);

%><script runat="server">
void PostResponse(Uri uri, string jsonData, string apiToken)
{
WebClient client = new WebClient ();

    // Add a user agent header in case the
    // requested URI contains a query.

    client.Headers.Add ("Accept", "application/json");
    client.Headers.Add ("Content-Type", "application/json");
    client.Headers.Add ("Authorization", "SSWS "+ apiToken);

    string htmlResult = client.UploadString(uri, jsonData);
    Response.Write(htmlResult);
}
</script>
