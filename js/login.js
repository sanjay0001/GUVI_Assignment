$(document).ready(()=>{
    if(localStorage.getItem("user_data")) window.location.href="profile.html"
    $("#login_btn_id").on("click",()=>{
        const email=$("#emailid").val()
        const pswd=$("#pswdid").val()
        
            $.ajax({
                url: 'php/login.php',
                type: 'POST',
                data: {email: email, password: pswd },
                dataType: 'json',
                success: function(response) {
                    // Check response status
                    if (response.status === 'success') {
                    // Redirect to login page
                        console.log(response.message)
                        localStorage.setItem('user_data', JSON.stringify(response.message))
                        window.location.href = 'profile.html'; 
                    } else {
                    // Registration failed
                       $("#mesid").text(response.error)
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log(errorThrown)
                    $("#mesid").text(errorThrown)
                }
            });
        


    })
})