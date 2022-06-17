
document.getElementById("btn").addEventListener("click", () => {
    //document.getElementById("side-navbar").style.marginLeft = "0px";
    document.getElementById("side-navbar").classList.toggle('side-active')
    document.getElementById("btn").classList.toggle("btn-active")

});

function viewDropdown(){
    document.getElementById("drop").classList.toggle("showMenu");

}
