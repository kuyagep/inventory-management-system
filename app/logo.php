<a href="index3.html" class="brand-link" title="Property Inventory & Monitoring System">

    <img src="<?php if($_SESSION['role_id']==2 || $_SESSION['role_id']==1){
        echo "dist/img/inventory-management-software-yellow.png";
    }else{
        echo "dist/img/inventory-management-software.png";
    } ?>" alt="PIMOS Logo" class="brand-image img-circle elevation-0" style="opacity: .9">
    <span class="brand-text font-weight-light">PIMOS | </span>
    <?php 
        if($_SESSION['role_id'] == '1'){
            echo "Super Panel";
        }elseif($_SESSION['role_id'] == '2'){
            echo "Admin Panel";
        }elseif($_SESSION['role_id'] == '3'){
           echo "User Panel";
        } 
    ?>
</a>