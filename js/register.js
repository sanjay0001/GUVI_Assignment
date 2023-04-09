$(document).ready(()=>{
    if(localStorage.getItem("user_data")) window.location.href = 'profile.html';
    $("#register_btn_id").on("click",()=>{
        console.log("Pressed")
        const uname=$("#unameid").val()
        const email=$("#emailid").val()
        const pswd=$("#pswdid").val()
        const cpswd=$("#cpswdid").val()
        let f=true
        if(pswd!=cpswd){
            $("#psid").text("Password mismatch")
            f=false
        }
        if(f){
            console.log("ajax called")
            $.ajax({
                url: 'php/register.php',
                type: 'POST',
                data: { name: uname, email: email, password: pswd },
                dataType: 'json',
                success: function(response) {
                  // Check response status
                  if (response.status === 'success') {
                    // Redirect to login page
                     window.location.href = 'login.html'; 
                  } else {
                    // Registration failed
                    //alert(response.error);
                    $("#mesid").text(response.error)
                  }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                  // Handle AJAX error
                  //alert('AJAX error: ' + textStatus + ' - ' + errorThrown);
                  $("#mesid").text(errorThrown)
                }
            });
        }


    })
    function isValidEmail(email) {
        var emailRegex =/^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return emailRegex.test(email);
    }
})