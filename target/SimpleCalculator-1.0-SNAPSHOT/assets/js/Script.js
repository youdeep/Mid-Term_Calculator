// clear all the values
 function clearScreen() {
    document.getElementById("display").value = "";
}

// display values
function updateDisplay(value) {
    var a = document.getElementById("display");
    a.setAttribute("value", a.value += value);
    }





