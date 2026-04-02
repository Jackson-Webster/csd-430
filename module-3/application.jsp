<!DOCTYPE html>
<html>
<head>
    <title>Job Application Form</title>
</head>
<body>

<h1>Job Application</h1>
<p>Please fill out all fields below.</p>


<form action="/JobApp/result.jsp" method="post">

    <!-- Name input -->
    Full Name:
    <input type="text" name="name" required><br><br>

    <!-- Email input -->
    Email:
    <input type="email" name="email" required><br><br>

    <!-- Phone input -->
    Phone Number:
    <input type="text" name="phone"><br><br>

    <!-- Dropdown -->
    Experience Level:
    <select name="experience">
        <option value="Entry Level">Entry Level</option>
        <option value="Mid Level">Mid Level</option>
        <option value="Senior Level">Senior Level</option>
    </select><br><br>

    <!-- Checkbox -->
    Skills:<br>
    <input type="checkbox" name="skills" value="Java"> Java<br>
    <input type="checkbox" name="skills" value="Python"> Python<br>
    <input type="checkbox" name="skills" value="HTML"> HTML<br><br>

    <!-- Textarea -->
    Cover Letter:<br>
    <textarea name="coverLetter" rows="5" cols="30"></textarea><br><br>

    <input type="submit" value="Submit Application">

</form>

</body>
</html>