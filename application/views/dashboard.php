
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Dashboard
    
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <?php if($is_admin == true): ?>

        <div class="row">
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
              <div class="inner">
                <h3><?php echo $total_brands ?></h3>

                <h4><b>Total destination groups</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-cart-arrow-down"></i>
              </div>
              
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
              <div class="inner">
                <h3><?php echo $total_category ?></h3>

                <h4><b>Total category</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-cubes"></i>
              </div>
              
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
              <div class="inner">
                <h3><?php echo $total_attribures; ?></h3>

               <h4><b>Total property group</h4></b>
              </div>
              <div class="icon">
                <i class="fa fa-files-o"></i>
              </div>
              
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
              <div class="inner">
                <h3><?php echo '1' ?></h3>

                <h4><b>Company</b></h4>
              </div>
              <div class="icon">
                <i class="ion ion-android-home"></i>
              </div>
             
            </div>
          </div>
          <!-- ./col -->
        </div>


        <div class="row">
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-aqua">
              <div class="inner">
                <h3><?php echo $total_products ?></h3>

               <h4><b>Total products</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-cube"></i>
              </div>
              
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-green">
              <div class="inner">
                <h3><?php echo $total_paid_orders ?></h3>

               <h4><b>Total paid orders</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-dollar"></i>
              </div>
              
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-yellow">
              <div class="inner">
                <h3><?php echo $total_users; ?></h3>

                <h4><b>Total users</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-users"></i>
              </div>
              
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-xs-6">
            <!-- small box -->
            <div class="small-box bg-red">
              <div class="inner">
                <h3><?php echo $total_stores ?></h3>

               <h4><b>Total stores</b></h4>
              </div>
              <div class="icon">
                <i class="fa fa-institution"></i>
              </div>
              
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->


        
        <!-- /.row -->
      <?php endif; ?>
      

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <script type="text/javascript">
    $(document).ready(function() {
      $("#dashboardMainMenu").addClass('active');
    }); 
  </script>
