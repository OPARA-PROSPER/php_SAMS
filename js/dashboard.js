var form = document.forms["assignment_form"];
var assignment = document.getElementById("file");
var post = document.getElementById("post");

form.addEventListener("submit", function(e){
// var val = document.getElementById("file");
// e.preventDefault();
console.log(assignment.value);


    // if(assignment.value){
        // create elements
        // var p = document.createElement("div");
        // p.textContent = assignment.value;
        // post.appendChild(p);
// 
        // Add class attribute
        // p.setAttribute('class', 'post');
    // }else if(val.value){
        // console.log(val.value);
    // }

    var http = new XMLHttpRequest();

    http.onreadystatechange = function () {
        if( http.readyState == 4 && http.status == 200){
            alert(http.responseText);
        }
    };

    http.open("POST", "../dbConfig/upload.php", true);
    http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    http.send("img=" + assignment );

    
});


