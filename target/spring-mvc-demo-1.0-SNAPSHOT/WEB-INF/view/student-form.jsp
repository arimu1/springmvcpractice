<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
    <title>Student Registration Form</title>
</head>
<body>

<form:form action="processForm" modelAttribute="student">
    First name: <form:input path="firstName"/>
    <br><br>
    Last name: <form:input path="lastName"/>
    <br><br>
    Country:
    <form:select path="country">
        <%--<form:option value="Argentina" label="Argentina"/>--%>
        <%--<form:option value="Brazil" label="Brazil"/>--%>
        <%--<form:option value="Singapore" label="Singapore"/>--%>
        <%--<form:option value="Indonesia" label="Indonesia"/>--%>
        <form:options items="${student.countryOptions}"/>
    </form:select>
    <br><br>
    Favorite Language:
    <%--Java <form:radiobutton path="favoriteLanguage" value="Java"/>--%>
    <%--C# <form:radiobutton path="favoriteLanguage" value="C#"/>--%>
    <%--PHP <form:radiobutton path="favoriteLanguage" value="PHP"/>--%>
    <%--Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/>--%>
    <form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"/>
    <br><br>
    Operating System:
    <form:checkboxes path="operatingSystem" items="${student.operatingSystemOptions}"/>
    <br><br>
    <input type="submit" value="submit"/>
</form:form>

</body>

</html>