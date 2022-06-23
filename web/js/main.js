/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function viewPassword(){
    var password = document.getElementById("password");
    var changeIcon = document.getElementById("changeicon");

    if(password.type == "password"){
        password.type = "text";
        changeIcon.className = "fas fa-low-vision";
    }
    else{
        password.type = "password";
        changeIcon.className = "fas fa-eye";
    }
}

var acc = document.getElementsByClassName("accordin");
var i;

for(i = 0; i<= acc.length;i++){
    acc[i].addEventListener("click", function(){
        this.classList.toggle("active")

        var panel = this.nextElementSibling;
        if(panel.style.maxHeight){
            panel.style.maxHeight = null;
        }
        else{
            panel.style.maxHeight = panel.scrollHeight + "px";
        }
    })
}