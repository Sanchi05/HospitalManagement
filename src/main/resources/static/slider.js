

document.getElementById("btn").addEventListener("click", () => {
    //document.getElementById("side-navbar").style.marginLeft = "0px";
    document.getElementById("side-navbar").classList.toggle('side-active')
    document.getElementById("btn").classList.toggle("btn-active")
    document.getElementById("appointment").classList.toggle("slide-table")
    document.getElementById("prescription").classList.toggle("prescription-slide")

});

function viewDropdown(){
    document.getElementById("drop").classList.toggle("showMenu");

}
