$(document).ready(function(){
    $(window ).scroll(function(){
        console.log('scrolling')
        var header = document.getElementById("myHeader");
        var sticky = header.offsetTop;
        if (window.pageYOffset > sticky) {
            header.classList.add("sticky");
        } else {
            header.classList.remove("sticky");
        }

    });
});
