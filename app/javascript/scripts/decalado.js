var element=document.getElementsByClassName("randomize");
  for(var i=0;i<element.length;i++)
  {
    randomize(element[i]);
  }
  function randomize(ele)
  {
    var marginValue=Math.floor(Math.random()*50);
    ele.style.margin=marginValue+"px";
  }

function show(id) {
  document.getElementById(id).style.visibility = "visible";
}
function hide(id) {
  document.getElementById(id).style.visibility = "hidden";
}
