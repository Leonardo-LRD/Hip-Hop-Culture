let btn = document.querySelector("#btn");
let sidebar = document.querySelector(".sidebar");
let searchBtn = document.querySelector(".fa-magnifying-glass");


btn.addEventListener("click", () => {
    sidebar.classList.toggle("active");
    menuBtnChange();
});

searchBtn.addEventListener("click", () => {
    sidebar.classList.toggle("active");
    menuBtnChange();
});


function menuBtnChange() {
    if (sidebar.classList.contains("active")) {
        btn.classList.replace("fa-bars", "fa-angle-left");
    } 
    else {
        btn.classList.replace("fa-angle-left", "fa-bars");
    }
}