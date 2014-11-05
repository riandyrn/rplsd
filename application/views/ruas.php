<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Toll Fare Calculator</title>

    <!-- Bootstrap core CSS -->
    <link href="<?=$assets;?>css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <style>
		body
		{
			padding-top: 50px;
		}
	</style>
	
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-random"></span></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <!--<li class="active"><a href="#">Home</a></li>-->
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<h1 class="text-center">Toll Fare Calculator</h1>
				<form action="<?=$base_path;?>setRuas_P" method="POST">
					<div class="form-group">
						<label for="gate_berangkat">Ruas Berangkat:</label>
						<select name="ruas_berangkat" id="" class="form-control">
							<?php foreach($ruas as $row) { ?>
								<option value="<?=$row->RUAS_TOL_ID;?>"><?=$row->RUAS_TOL;?></option>
							<?php } ?>
						</select>
					</div>
					<div class="form-group">
						<label for="gate_tujuan">Ruas Tujuan:</label>
						<select name="ruas_tujuan" id="" class="form-control">
							<?php foreach($ruas as $row) { ?>
								<option value="<?=$row->RUAS_TOL_ID;?>"><?=$row->RUAS_TOL;?></option>
							<?php } ?>
						</select>
					</div>
					
					<input type="submit" class="btn btn-lg btn-primary btn-block" value="Lanjutkan >>">
				</form>
			</div>
		</div>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<?=$assets;?>js/jquery-1.11.1.min.js"></script>
    <script src="<?=$assets;?>js/bootstrap.min.js"></script>

  </body>
</html>
