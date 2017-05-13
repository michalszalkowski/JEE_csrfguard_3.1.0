<%@ taglib uri="http://www.owasp.org/index.php/Category:OWASP_CSRFGuard_Project/Owasp.CsrfGuard.tld" prefix="csrf" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Simple form 1</title>
</head>
<body>

<h1>Simple form 1</h1>

<form action="/jee_csrfguard_3.1.0/rest/person/name1" method="POST">

    <input type="text"
           name="<csrf:tokenname/>"
           value="<csrf:tokenvalue/>"/>

    Name:
    <input type="text" name="name">
    <br />
    <input type="submit" value="Submit" />
</form>

</body>
</html>