<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title> სალამი! </title>
    <link rel="stylesheet" href="../../PageStyles/LogInStyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>


<body onunload="disableBackButton()">
<script type="text/javascript">
    function disableBackButton() {
        window.history.forward();
    }

    setTimeout("disableBackButton()", 0);
</script>

<form action="/login" method="post" id="form_login">
    <h3>მოგესალმებით ფრიუნიჰაბზე!</h3>
    <p> გთხოვთ შეიყვანოთ თქვენი ინფორმაცია </p>
    <label for="username"> იუზერნეიმი: </label>
    <input
            required
            class="form-control"
            type="text"
            name="username"
            id="username"
            oninvalid="this.setCustomValidity('იუზერნეიმის შეყვანა აუცილებელია')"
            onvalid="this.setCustomValidity('')"
    >
    <label for="password"> პაროლი: </label>
    <input
            required
            class="form-control"
            type="password"
            name="password"
            id="password"
            oninvalid="this.setCustomValidity('პაროლის შეყვანა აუცილებელია')"
            onvalid="this.setCustomValidity('')"
    >
    <div class="input">
        <input
                class="form-check-input"
                type="checkbox"
                onclick=change()
                id="show"
        >
        <label for="show"> პაროლის ჩვენება </label>
    </div>
    <input class="btn btn-primary" type="submit" value="შესვლა">
    <a style="display: block;" href="${pageContext.request.contextPath}/JSPs/IdentificationPages/RegistrationPage.jsp">
        <input style="width: 100%" type="button" class="btn btn-warning" value="ახალი მომხმარებლის რეგისტრაცია">
    </a>
</form>

<!------------------------------------------------------------ java script -->
<script>
    function change() {
        let field = document.getElementById("password");
        if (field.type === "password") field.type = "text";
        else field.type = "password";
    }
</script>
</body>
</html>
