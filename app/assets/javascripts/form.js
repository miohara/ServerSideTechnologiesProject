function emailValidator() {
    //get the email address tag from the DOM
    var userEmail = document.getElementById('email').value;
    var firstname = document.getElementById('fname').value;
    var lastname = document.getElementById('lname').value;
    var message = document.getElementById('message').value;
    // Define Email Regex based on RFC 5322 Standard 
    var emailRegex = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+(?:[A-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum|ie|uk)\b$/;
    var inputPassword = document.getElementById('password').value;
    //any Uppercase/Lowercase letters & numbers, between 6-10 characters
    var passwordRegex = /^[A-Za-z\d]{6,10}$/;
    //Check Email not empty AND address is valid based on Email Regex 

    if (userEmail !== "" && emailRegex.test(userEmail) && inputPassword !== "" && passwordRegex.test(inputPassword) && firstname !== ""
            && lastname !== "" && message !== "") {
        //outputInfoTag.innerHTML = "Email Address is valid";
        window.alert("We will get back to you shortly!");
        window.location = "index.html";
    } else if (userEmail === "") {
        //outputInfoTag.innerHTML = "You did not enter an Email Address!"; 
        window.alert("You did not enter an Email Address!");
        document.getElementById('email').focus();
    } else if (inputPassword === "") {
        // empty password
        window.alert("You did not enter a Password!");
        document.getElementById('password').focus();
    } else if (firstname === "") {
        // empty password
        window.alert("You did not enter a First Name!");
        document.getElementById('fname').focus();
    } else if (lastname === "") {
        // empty password
        window.alert("You did not enter a Last Name!");
        document.getElementById('lname').focus();
    } else if (message === "") {
        // empty password
        window.alert("You did not enter a Message!");
        document.getElementById('message').focus();
    } else {
        //password was invalid
        window.alert("Not Valid Input!");
        document.getElementById('password').focus();
    }
}