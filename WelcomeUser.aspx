<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WelcomeUser.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Welcome Page</title>
</head>
<body>
    <?php if (isset($_POST['form_submitted'])): ?>

    <h2>Thank You <?php echo $_POST['fname']; ?> </h2>

    <p>
        You have been registered as
        <?php echo $_POST['email']; ?>
    </p>
    <?php else: ?>
    <h2>Sorry, Registration Unsuccessful</h2>
    <p>Go <a href="SignUpdsgn.aspx">back</a> to the form</p>
    <?php endif; ? >
</body>
</html>
