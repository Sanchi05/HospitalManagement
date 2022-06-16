document.getElementById("btn").addEventListener("click", () => {
    //document.getElementById("side-navbar").style.marginLeft = "0px";
    document.getElementById("btn").classList.toggle("btn-active");
    document.getElementById("side-navbar").classList.toggle("sidebar-active");
    document.getElementById("prescription").classList.toggle("prescription-slide");


});
function printPrescription(){
    let pres_content = document.getElementById("presct").innerHTML;
    let win = window.open("","",'height=500, width = 500');
    win.document.write('<html>');
    win.document.write('<body><h1>Prescription</h1>');
    win.document.write(pres_content);
    win.document.write('</body></html>');
    win.document.close();
    win.print();
}

function viewDropdown(){
    document.getElementById("drop").classList.toggle("showMenu");

}