<!-- Content Header -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Dashboard</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- End Content Header -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-6">
                        <!-- small box -->
                        <div class="small-box bg-danger callout callout-danger">
                            <div class="inner">
                                <h3>
                                    <?php
                                            $sql = "SELECT * from issuance WHERE issued_to='".$_SESSION['id']."'";
                                            if ($result = mysqli_query($con, $sql)) {
                                                // Return the number of rows in result set
                                                $rowcount = mysqli_num_rows( $result );
                                                echo $rowcount;
                                            }
                                    ?>
                                </h3>

                                <p>Owned Items</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-md-6">
                        <!-- small box -->
                        <div class="small-box bg-warning callout callout-warning">
                            <div class="inner">
                                <h3>
                                    <?php
                                        $result = mysqli_query($con,"SELECT issuance.issued_id, issuance.issuance_code, issuance.issued_date, items.item_amount, employee.firstname, employee.lastname, office.office_name, category.category_name, con.con_desc, item_status.status_desc FROM issuance INNER JOIN items ON issuance.issued_item=items.item_id LEFT JOIN employee ON issuance.issued_to=employee.employee_id INNER JOIN office ON employee.office_id=office.office_id INNER JOIN con ON items.con_id=con.con_id INNER JOIN category ON items.category_id=category.category_id  INNER JOIN item_status ON items.status_id=item_status.status_id  WHERE issued_to ='".$_SESSION["id"]."' ORDER BY `issuance`.`issued_id` DESC;");
                                            if ($result) {
                                                // Return the number of rows in result set
                                                $rowcount = mysqli_num_rows( $result );
                                                $amount = 0;
                                                while($row = mysqli_fetch_assoc($result)){
                                                    $amount = $amount + $row['item_amount'];

                                                }
                                                echo $amount;
                                            }
                                        ?>

                                    <sup style="font-size: 20px"></sup>
                                </h3>

                                <p>Total Amount of Accountability </p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
                        </div>
                    </div>
                    <!-- ./col -->
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <!-- small box -->
                        <div class="small-box bg-white callout callout-success">
                            <div class="inner">
                                <h3>44</h3>

                                <p>Employee</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person-add"></i>
                            </div>
                            <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-md-6">
                        <!-- small box -->
                        <div class="small-box bg-white callout callout-info">
                            <div class="inner">
                                <h3>65</h3>

                                <p>Return</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-pie-graph"></i>
                            </div>
                            <!-- <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a> -->
                        </div>
                    </div>
                    <!-- ./col -->
                </div>
            </div>
            <div class="col-md-4">
                <!-- Application buttons -->
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Action Section</h3>
                    </div>
                    <div class="card-body">
                        <p>Quick Access</p>
                        <a href="index.php?page=owned-items" class="btn btn-app bg-success">
                            <span class="badge bg-success">New</span>
                            <i class="fas fa-boxes"></i> Owned Items
                        </a>
                        <a class="btn btn-app bg-secondary">
                            <span class="badge bg-success"><?php echo $amount; ?></span>
                            <i class="fas fa-barcode"></i> Total Amount
                        </a>

                    </div>
                    <!-- /.card-body -->
                </div>
            </div>
        </div>
        <!-- /.row (main row) -->
    </div><!-- /.container-fluid -->
</section>