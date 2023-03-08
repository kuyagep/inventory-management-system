<!-- Add Modal -->
<div class="modal fade" id="addItems">
    <div class="modal-dialog">
        <div class="modal-content">
            <form class="form-horizontal" action="action/admin/add-item.php" method="POST">
                <div class="modal-header">
                    <h4 class="modal-title">Add Property/Item</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <!-- form -->
                    <div class="form-group row">
                        <label for="item_name" class="col-sm-3 col-form-label">Name <span class="text-danger">
                                *</span> </label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="item_name" name="item_name"
                                placeholder="Item name" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="item_desc" class="col-sm-3 col-form-label">Description</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="item_desc" name="item_desc"
                                placeholder="Description">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="item_serial" class="col-sm-3 col-form-label">Serial # <span class="text-danger">
                                *</span></label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="item_serial" name="item_serial"
                                placeholder="Enter Serial No." required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="item_model" class="col-sm-3 col-form-label">Model</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="item_model" name="item_model"
                                placeholder="Enter model">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="item_brand" class="col-sm-3 col-form-label">Brand <span class="text-danger">
                                *</span></label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="item_brand" name="item_brand"
                                placeholder="Enter Brand" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="unit" class="col-sm-3 col-form-label">Unit <span class="text-danger">
                                *</span></label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="unit" name="unit"
                                placeholder="Enter Unit ex. pc, unit" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="amount" class="col-sm-3 col-form-label">Amount <span class="text-danger">
                                *</span></label>
                        <div class="col-sm-9">
                            <input type="number" class="form-control" id="amount" name="item_amount"
                                placeholder="Amount" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="item_purdate" class="col-sm-3 col-form-label">Aquired <span class="text-danger">
                                *</span></label>
                        <div class="col-sm-9">
                            <input type="date" class="form-control" id="item_purdate" name="item_purdate"
                                placeholder="Date of Aquired" required>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="supplier" class="col-sm-3 col-form-label">Supplier <span class="text-danger">
                                *</span></label>
                        <div class="col-sm-9">
                            <select class="custom-select" id="supplier" name="supplier" required>
                                <option value="" selected>Choose Supplier...</option>
                                <?php
                                    $result = mysqli_query($con,"SELECT * FROM suppliers;");
                                    $rowCount = mysqli_num_rows($result);
                                    if($rowCount > 0){
                                        while($row = mysqli_fetch_assoc($result)){ ?>
                                <option value="<?php echo $row['supplier_id']; ?>">
                                    <?php echo $row['supplier_name']; ?>
                                </option>

                                <?php   }
                                    }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="category" class="col-sm-3 col-form-label">Category <span class="text-danger">
                                *</span></label>
                        <div class="col-sm-9">
                            <select class="custom-select" id="category" name="category" required>
                                <option value="" selected>Choose Category...</option>
                                <?php
                                    $result = mysqli_query($con,"SELECT * FROM category;");
                                    $rowCount = mysqli_num_rows($result);
                                    if($rowCount > 0){
                                        while($row = mysqli_fetch_assoc($result)){ ?>
                                <option value="<?php echo $row['category_id']; ?>">
                                    <?php echo $row['category_name']; ?>
                                </option>

                                <?php   }
                                    }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="condtion" class="col-sm-3 col-form-label">Condition <span class="text-danger">
                                *</span></label>
                        <div class="col-sm-9">
                            <select class="custom-select" id="condtion" name="condition" required>
                                <option value="" selected>Choose Condition...</option>
                                <?php
                                    $result = mysqli_query($con,"SELECT * FROM con;");
                                    $rowCount = mysqli_num_rows($result);
                                    if($rowCount > 0){
                                        while($row = mysqli_fetch_assoc($result)){ ?>
                                <option value="<?php echo $row['con_id']; ?>">
                                    <?php echo $row['con_desc']; ?>
                                </option>

                                <?php   }
                                    }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="status" class="col-sm-3 col-form-label">Status <span class="text-danger">
                                *</span></label>
                        <div class="col-sm-9">
                            <select class="custom-select" id="status" name="status" required>
                                <option value="" selected>Choose Status...</option>
                                <?php
                                    $result = mysqli_query($con,"SELECT * FROM item_status;");
                                    $rowCount = mysqli_num_rows($result);
                                    if($rowCount > 0){
                                        while($row = mysqli_fetch_assoc($result)){ ?>
                                <option value="<?php echo $row['status_id']; ?>">
                                    <?php echo $row['status_desc']; ?>
                                </option>

                                <?php   }
                                    }
                                ?>
                            </select>
                        </div>
                    </div>


                </div>
                <div class="modal-footer justify-content-right">
                    <button type="button" class="btn btn-danger " data-dismiss="modal">Cancel</button>
                    <button type="submit" name="add-employee" class="btn btn-primary addEmployeeAlert">Create</button>
                </div>

            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- Add Modal -->
<div class="modal fade" id="issuance">
    <div class="modal-dialog">
        <div class="modal-content">
            <form class="form-horizontal" action="action/admin/add-issuance.php" method="POST">
                <div class="modal-header">
                    <h4 class="modal-title">Issuance</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <!-- form -->
                    <div class="form-group row">
                        <label for="item" class="col-sm-3 col-form-label">Item Name <span class="text-danger">
                                *</span></label>
                        <div class="col-sm-9">
                            <select class="custom-select" id="item" name="item" required>
                                <option value="" selected>Choose Item...</option>
                                <?php
                                    $result = mysqli_query($con,"SELECT * FROM items;");
                                    $rowCount = mysqli_num_rows($result);
                                    if($rowCount > 0){
                                        while($row = mysqli_fetch_assoc($result)){ ?>
                                <option value="<?php echo $row['item_id']; ?>">
                                    <?php echo $row['item_name']; ?>
                                </option>

                                <?php   }
                                    }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="employee" class="col-sm-3 col-form-label">Employee <span class="text-danger">
                                *</span></label>
                        <div class="col-sm-9">
                            <select class="custom-select" id="employee" name="employee" required>
                                <option value="" selected>Choose Employee...</option>
                                <?php
                                    $result = mysqli_query($con,"SELECT * FROM employee;");
                                    $rowCount = mysqli_num_rows($result);
                                    if($rowCount > 0){
                                        while($row = mysqli_fetch_assoc($result)){ ?>
                                <option value="<?php echo $row['employee_id']; ?>">
                                    <?php echo $row['firstname']." ".$row['lastname']; ?>
                                </option>

                                <?php   }
                                    }
                                ?>
                            </select>
                        </div>
                    </div>



                </div>
                <div class="modal-footer justify-content-right">
                    <button type="button" class="btn btn-danger " data-dismiss="modal">Cancel</button>
                    <button type="submit" name="add-employee" class="btn btn-primary addEmployeeAlert">Create</button>
                </div>

            </form>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>