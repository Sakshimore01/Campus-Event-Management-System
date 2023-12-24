<!-- Connection for database -->
<?php

require_once('C:\xampp\htdocs\Login\config\db.php');
$query = "select * from eventslist";

$result = mysqli_query($con,$query);

?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=No">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/newcon.css">
        <!-- Title of the page -->
        <title>
              Events List
        </title>
    </head>   
    <!-- Table creation --> 
    <body class="bg-dark">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="card mt-5">
                        <div class="card-header">
                            <h2 class="display-6 text-center">Events List</h2>
                        </div>
                        <div class="card-body">
                            <table class="table table-bordered">
                                <tr class="bg-dark text-white">
                                    <td> Sr. No. </td>
                                    <td> Event Name </td>
                                    <td> Event Date </td>
                                    <td> Event Time </td>
                                    <td> Event Venue </td>
                                    <td> Event Coordinator </td>
                                    <td> Budget </td>
                                </tr>
                                <tr>
                                    <!-- fetching data from database entered by user -->
                                  <?php
                                    while($row = mysqli_fetch_assoc($result))
                                    {

                                    
                                  ?>
                                  <!-- Echoing the data -->
                                  <td><?php echo $row['Sr. No.']; ?></td>
                                  <td><?php echo $row['Event Name']; ?></td>
                                  <td><?php echo $row['Event Date']; ?></td>
                                  <td><?php echo $row['Event Time']; ?></td>
                                  <td><?php echo $row['Event Venue']; ?></td>
                                  <td><?php echo $row['Event Coordinator']; ?></td>
                                  <td><?php echo $row['Budget']; ?></td>
                                    </tr>
                                  <?php
                                    }
                                    ?>
                                    
                              </table> 
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>
