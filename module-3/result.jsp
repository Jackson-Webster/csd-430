<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Application Results</title>
</head>
<body>

<h1>Job Application Summary</h1>

<p>Result JSP Loaded</p>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String experience = request.getParameter("experience");
    String coverLetter = request.getParameter("coverLetter");

    if (name == null) name = "";
    if (email == null) email = "";
    if (phone == null) phone = "";
    if (experience == null) experience = "";
    if (coverLetter == null) coverLetter = "";

    String[] skills = request.getParameterValues("skills");
%>

<table border="1" cellpadding="8">
    <tr>
        <th>Field</th>
        <th>Value</th>
        <th>Description</th>
    </tr>

    <tr>
        <td>Name</td>
        <td><%= name %></td>
        <td>Full name of the applicant</td>
    </tr>

    <tr>
        <td>Email</td>
        <td><%= email %></td>
        <td>Applicant email address</td>
    </tr>

    <tr>
        <td>Phone</td>
        <td><%= phone %></td>
        <td>Contact phone number</td>
    </tr>

    <tr>
        <td>Experience</td>
        <td><%= experience %></td>
        <td>Selected experience level</td>
    </tr>

    <tr>
        <td>Skills</td>
        <td>
            <%
                if (skills != null) {
                    for (int i = 0; i < skills.length; i++) {
                        out.print(skills[i]);
                        if (i < skills.length - 1) {
                            out.print(", ");
                        }
                    }
                } else {
                    out.print("None selected");
                }
            %>
        </td>
        <td>Technical skills selected</td>
    </tr>

    <tr>
        <td>Cover Letter</td>
        <td><%= coverLetter %></td>
        <td>Applicant written response</td>
    </tr>

</table>

</body>
</html>