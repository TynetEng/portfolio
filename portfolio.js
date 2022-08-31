

function showMuseum(){
    window.location.href ="http://royalmuseum.herokuapp.com"
}

// ======= Scroll To Top Desktop =============
let scrollTop = document.getElementById('scrollTop');

window.onload=()=>{
    scrollTop.style.visibility = "hidden";
    scrollTop.style.opacity = 0;
}

window.onscroll=()=>{
    if(window.scrollY>200){
        scrollTop.style.visibility = "visible";
        scrollTop.style.opacity = 1;
    }else{
        scrollTop.style.visibility = "hidden";
        scrollTop.style.opacity = 0;
    }
}

scrollTopButton=()=>{
    window.scrollBy(0, -1600);
}

scrollAbout=()=>{
    window.scrollTo(0, 1200);
}

scrollProject=()=>{
    window.scrollTo(0, 680);
}

scrollContact=()=>{
    window.scrollTo(0, 1700);
}

// ======= End Of Scroll To Top Desktop =============


// ======= Scroll To Top Mobile Top =============
let scrollTopMobile = document.getElementById('scrollTopMobile');

window.onload=()=>{
    scrollTopMobile.style.visibility = "hidden";
    scrollTopMobile.style.opacity = 0;
}

window.onscroll=()=>{
    if(window.scrollY>200){
        scrollTopMobile.style.visibility = "visible";
        scrollTopMobile.style.opacity = 1;
    }else{
        scrollTopMobile.style.visibility = "hidden";
        scrollTopMobile.style.opacity = 0;
    }
}

scrollTopButtonMobile=()=>{
    window.scrollBy(0, -2500);
}

scrollProjectMobile=()=>{
    window.scrollTo(0, 750);
}
scrollAboutMobile=()=>{
    window.scrollTo(0, 2000);
}
scrollContactMobile=()=>{
    window.scrollTo(0, 2500);
}

// ======= End Of Scroll To Top Mobile View =============



