var paper = new Raphael(document.getElementById('canvas_france'), 600, 600);
 var attr = {
    fill: "#f5f5f5",
    stroke: "#d5d5d5",
    "stroke-width": 1,
    "stroke-linejoin": "round"
  };

function drawSVG (id,pathSVG,get) {
 var current = null;

  var svg = paper.path(pathSVG).attr(attr);
  svg.node.style.cursor = "pointer";

  svg.node.onclick = function() {
    window.location="./mapsvg.php?"+get+"="+id+"";
  }

  svg.node.onmouseover = function () {
      svg.animate({fill: "#0493AB", stroke: "#d5d5d5"}, 300);
      paper.safari();
  };


  svg.node.onmouseout = function () {
      svg.animate({fill: "#f5f5f5", stroke: "#d5d5d5"}, 300);
      paper.safari();
  };

}



