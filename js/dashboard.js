
let upload_button = document.querySelector("#upload_button");
let hide_upload_form = document.querySelector("#hide_button");

upload_button.addEventListener("click", (e) => {
let upload_form = document.querySelector("#upload_div");

upload_form.style.display = "block";
    
});

hide_upload_form.addEventListener("click", () => {
    let upload_form = document.querySelector("#upload_div");

    upload_form.style.display = "none";
});

var app = app || {};


(function(o){
    "use strict";

    // private methods
    var ajax, getFormData, setProgress;

    ajax = function(data) {
        var http = new XMLHttpRequest(), uploaded;
        o.options.bar.style.display = "block";
        http.addEventListener('readystatechange', () => {
            if(http.readyState === 4){
                if(http.status === 200){
                    uploaded = JSON.parse(http.response);

                    // console.log(uploaded);
                }
            }
            
        });

        http.upload.addEventListener("progress", (e) => {
            var percent;
             
            if(e.lengthComputable === true) {
                percent = Math.round(e.loaded / e.total * 100);
                setProgress(percent);
            }
        });
        
        http.open('post', o.options.processor);
        http.send(data);
    };


    getFormData = function(source) {
        var data = new FormData(), i;

        for(i = 0; i < source.length; i++){
            data.append('file', source[i]);
        }

        data.append('ajax', true);
        
        return data;
    };

    setProgress = function(value) {
        if(o.options.progressBar !== undefined){
            o.options.progressBar.style.width = value ? value + "%" : 0 ;
            
        }
    };

    o.uploader = function(options) {
        o.options = options;

        if(o.options.files !== undefined){
            ajax(getFormData(o.options.files.files));
            // console.log(o.options.files.files);
        }
        // console.log(o.options);
    }
}(app));

