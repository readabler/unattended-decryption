function checkAll() {
for (var j = 0; j < document.getElementsByName("chtitle").length; j++) {
box = eval("document.form1.chtitle[" + j+"]"); 
if (box.checked == false) box.checked = true;
   }
}

function uncheckAll() {
for (var j = 0; j < document.getElementsByName("chtitle").length; j++) {
box = eval("document.form1.chtitle[" + j+"]"); 
if (box.checked == true) box.checked = false;
   }
}

function switchAll() {
for (var j = 0; j < document.getElementsByName("chtitle").length; j++) {
box = eval("document.form1.chtitle[" + j+"]"); 
box.checked = !box.checked;
   }
}
