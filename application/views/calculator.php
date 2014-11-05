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
				<form action="<?=$base_path;?>calculate_P" method="POST">
					<div class="form-group">
						<label for="gate_berangkat">Gate Berangkat:</label>
						<!--<input id="gate_berangkat" name="gate_berangkat" type="text" class="form-control" placeholder="Ketik nama gate berangkat disini..." autocomplete="off">-->
						<select name="gate_berangkat" id="" class="form-control">
							<?php foreach($gate_berangkat as $row) { ?>
								<option value="<?=$row->GERBANG_TOL_NAME;?>"><?=$row->GERBANG_TOL_NAME;?></option>
							<?php } ?>
						</select>
					</div>
					<div class="form-group">
						<label for="gate_tujuan">Gate Tujuan:</label>
						<!--<input id="gate_tujuan" name="gate_tujuan" type="text" class="form-control" placeholder="Ketik nama gate tujuan disini..." autocomplete="off">-->
						<select name="gate_tujuan" id="" class="form-control">
							<?php foreach($gate_tujuan as $row) { ?>
								<option value="<?=$row->GERBANG_TOL_NAME;?>"><?=$row->GERBANG_TOL_NAME;?></option>
							<?php } ?>
						</select>						
					</div>
					<div class="form-group">
						<label for="">Gol. Kendaraan</label>
						<select name="gol_kendaraan" id="" class="form-control">
							<option value="GOL1">Golongan 1</option>
							<option value="GOL2">Golongan 2</option>
							<option value="GOL3">Golongan 3</option>
							<option value="GOL4">Golongan 4</option>
							<option value="GOL5">Golongan 5</option>
						</select>
					</div>
					
					<input type="hidden" name="ruas_berangkat" value="<?=$ruas_berangkat;?>">
					<input type="hidden" name="ruas_tujuan" value="<?=$ruas_tujuan;?>">
					
					<input type="submit" class="btn btn-lg btn-primary btn-block" value="Hitung Biaya!">
					<p style="margin-top: 8px;" class="text-center"><a href="<?=$base_path;?>setRuas">&laquo;Kembali ke set ruas</a></p>				
				</form>
			</div>
		</div>
		
		<?php if(isset($fare_data)) { ?>
			<!-- Modal -->
			<div class="modal fade" id="modal_fare" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
				<div class="modal-content">
				  <div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
					<h4 class="modal-title" id="myModalLabel">Biaya Perjalanan</h4>
				  </div>
				  <div class="modal-body">
					Biaya perjalanan <?=$fare_data['gol_kendaraan']?> dari <?=$fare_data['gate_berangkat']?> ke <?=$fare_data['gate_tujuan']?>: <?=$fare_data['fare']?>
				  </div>
				  <div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				  </div>
				</div>
			  </div>
			</div>
		<?php } ?>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<?=$assets;?>js/jquery-1.11.1.min.js"></script>
    <script src="<?=$assets;?>js/bootstrap.min.js"></script>
    <script src="<?=$assets;?>js/bootstrap3-typeahead.min.js"></script>
	
	<script>
	
		var gate_berangkat =
		[
			<?php foreach($gate_berangkat as $gate) { ?>
				'<?=$gate->GERBANG_TOL_NAME;?>',
			<?php } ?>
		]
		
		var gate_tujuan =
		[
			<?php foreach($gate_tujuan as $gate) { ?>
				'<?=$gate->GERBANG_TOL_NAME;?>',
			<?php } ?>
		]		
		
		$('#gate_berangkat').typeahead({source:gate_berangkat});
		$('#gate_tujuan').typeahead({source:gate_tujuan});
	</script>
	
	<?php if(isset($fare_data)) { ?>
		<script>
			$('#modal_fare').modal('show');
		</script>
	<?php } ?>

  </body>
</html>
