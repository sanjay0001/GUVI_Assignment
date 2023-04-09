$(document).ready(()=>{
    if(!localStorage.getItem("user_data")) window.location.href = 'login.html';
    function getAge(dateOfBirth) {
        const dob = new Date(dateOfBirth);
        const today = new Date();
        let age = today.getFullYear() - dob.getFullYear();
        const monthDiff = today.getMonth() - dob.getMonth();
      
        if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < dob.getDate())) {
          age--;
        }
      
        return age;
    }
    const data=JSON.parse(localStorage.getItem('user_data'))
    $(".form-control").attr("disabled","disabled")
    const uname=data.name
    const email=data.email
    $("#usernameid").text(uname)
    $("#emailid").text(email)
    $("#emailfield").val(email)

    $.ajax({
        url: 'php/profile.php',
        type: 'POST',
        data: {email:email,status:"read"},
        dataType: 'json',
        success: function(response) {
            // Check response status
            if(response.staus=="no user"){
                localStorage.removeItem("user_data");
                window.location.href="login.html"
            }
            if (response.status === 'success') {
            // Redirect to login page
            $("#fnameid").val(response.first_name)
            $("#lnameid").val(response.last_name)
            $("#phonenumberid").val(response.mobile_number)
            $("#addressid").val(response.address)
            $("#countryid").val(response.country)
            $("#dobid").val(response.dob)
            $("#gender").val(response.gender)
            console.log("Got it")
            } else {
            // Registration failed
                console.log(response.message)
            }
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.log(errorThrown)
            console.log("error")
        }
    });




    $("#btnid").on("click",()=>{
        if($("#btnspan").text()=="Edit"){
            $("#btnspan").text("Save")
            $(".form-control").removeAttr('disabled')
            $("#emailfield").attr("disabled","disabled")
        }else{
            const fname=$("#fnameid").val()
            const lname=$("#lnameid").val()
            const number=$("#phonenumberid").val()
            const address=$("#addressid").val()
            const country=$("#countryid").val()
            const dob=$("#dobid").val()
            const gender=$("#gender").val()
            const age=getAge(dob)
            $.ajax({
                url: 'php/profile.php',
                type: 'POST',
                data: {fname: fname,status:"update",lname:lname,number:number,address:address,country:country,dob:dob,gender:gender,email:email,age:age},
                dataType: 'json',
                success: function(response) {
                    // Check response status
                    if(response.staus=="no user"){
                        localStorage.removeItem("user_data");
                        window.location.href="login.html"
                    }
                    if (response.status === 'success') {
                    // Redirect to login page
                      console.log(response.message)
                    } else {
                    // Registration failed
                        console.log("Error occured")
                    }
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log(errorThrown)
                    $("#mesid").text(errorThrown)
                }
            });
            $("#btnspan").text("Edit")
            $(".form-control").attr("disabled","disabled")
        }
        
    })
    $("#logoutid").on("click",()=>{
        localStorage.removeItem("user_data")
        window.location.href="login.html"
    })

})