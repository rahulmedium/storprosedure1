 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<?php
include 'config/config.php';
$stmt = $conn->prepare("SELECT *  FROM category"); 
 $stmt->execute();
 $res=$stmt->fetchALL(PDO::FETCH_OBJ);


?>
<div class="container">
<h2>List of category</h2>
 <!-- Trigger the modal with a button -->
<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">+ New Category</button>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
     
      <div class="modal-body">
       <h4 class="page-header">Add Category</h4>
                <form role="form" id="cat">
                    <div class="form-group float-label-control">
                        <label for="">Category Name</label>
                        <input type="tect" class="form-control" name="cat_name" placeholder="Enter Category Name" required>
                    </div>
                    <input type="submit" value="submit">
                </form>
      </div>
      <div class="modal-footer">
      
      </div>
    </div>

  </div>
</div>
        
       

        <hr />

        <div class="row">
            <div class="col-sm-12">

               

	<table class="table">
    <thead>
      <tr>
        <th>#</th>
        <th>Name</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
	<?php $i=1;foreach($res as $value) {?>
      <tr>
        <td><?php echo $i; ?></td>
        <td><?php echo $value->cat_name; ?></td>
        <td><a href="" class="btn btn-success" onclick="edit">Edit</a>/<a href="" class="btn btn-success" onclick="delete_cat('$value->cat_name')">Delete</a></td>
      </tr>
	<?php $i++;} ?>
	</tbody>
  </table>
   
                


                

            </div>
        
		
	
   </div>
</div>
<script>
$(function(){
	
	
	$("#cat").submit(function(e){
		e.preventDefault();
		alert('sfd');
		    $.ajax({
                            type: "POST",
                            url: "cat_insert.php",
                            data: $('#cat').serialize(),
                            success: function (data) {
                              alert(data);
							   if ($.trim(data) === "yes") {
								   alert('Category Add Successfully');
                                    window.location.href = "index.php";
                                } else {
                                   // $("#sbcrbmsg").text(" Someone already registered with this email id. Try another email id").css("color", "red");
                                    //$('#users')[0].reset();
alert(data);
                                }
                            }
                        });
		
		
	});
});
</script>