<%@ taglib uri="http://www.owasp.org/index.php/Category:OWASP_CSRFGuard_Project/Owasp.CsrfGuard.tld" prefix="csrf" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <title>Simple form 1</title>
</head>
<body>

<h1>Index3</h1>

<form id="mainForm" action="" method="POST">
    <br/>
    Title1x: <input type="text" name="listItem[title1]"><br/>
    Title2: <input type="text" name="listItem[title2]"><br/>
    Title3: <input type="text" name="listItem[title3]"><br/>
    Title4: <input type="text" name="listItem[title4]"><br/>
    <input id="target" type="submit" value="Submit"/>
</form>

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>

<script>
    $("#target").click(function (e) {
        var json = {};

        $('input[name^="listItem"]').each(function () {
            var name = $(this).attr('name').replace("listItem[", "").replace("]", "");
            var value = $(this).val();
            json[name] = value
        });

        console.log(json);

        $.ajax({
            type: "POST",
            url: '/jee_csrfguard_3.1.0/rest/person/name2?<csrf:tokenname/>=<csrf:tokenvalue/>',
            data: JSON.stringify(json),
            contentType: "application/json",
            success: function (response) {
            }
        });

        e.preventDefault();

    });

</script>

</body>
</html>