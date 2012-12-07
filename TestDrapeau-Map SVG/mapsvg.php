<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Carte de France cliquable en HTML5 / SVG</title>
		<style type="text/css">
		  #canvas_france {
		    width: 600px;
		    border: 1px solid #aaa;
		  }
		</style>
		
	</head>
	<body>
		<?php
			include "connexion.php";
		?>
		<div id="canvas_france"></div>
		<script src="js/raphael-min.js" charset="utf-8" ></script>
		<script src="js/script.js" charset="utf-8" ></script>
		<?php
			if(isset($_GET["reg"])) {
				$request = "SELECT id, pathSVG FROM departement WHERE idRegion = ".$_GET["reg"].";";
				$request = mysql_query($request) OR DIE(mysql_error());
					
				while($row = mysql_fetch_assoc($request))
				{
				  echo '<script type="text/javascript">
				  drawSVG("'.$row["id"].'","'.$row["pathSVG"].'","dept");
				  </script>';
				}
			}else if(isset($_GET["dept"]))
			{
				$request = "SELECT id,pathSVG FROM departement WHERE id = ".$_GET["dept"].";";
				$request = mysql_query($request) OR DIE(mysql_error());
					
				while($row = mysql_fetch_assoc($request))
				{
				  echo '<script type="text/javascript">
				  drawSVG("'.$row["id"].'","'.$row["pathSVG"].'","dept");
				  </script>';
				}
			}else
			{
				$request = "SELECT id, pathSVG FROM region";
				$request = mysql_query($request) OR DIE(mysql_error());
					
				while($row = mysql_fetch_assoc($request))
				{
				  echo '<script type="text/javascript">
				  drawSVG("'.$row["id"].'","'.$row["pathSVG"].'","reg");
				  </script>';
				}
			}
		?>
	</body>
</html>