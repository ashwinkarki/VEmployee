 var imgObject;
  var solution ;
$(document).ready(function () {

//     $("#imgInp").change(function() {
//       readURL(this);
//     });

//     function readURL(input) {
//       if (input.files && input.files[0]) {
//         var reader = new FileReader();
//          reader.onload = function(e) {
//           $('#blah').attr('src', e.target.result);
//           console.log("aaaa");
//          imgObject=e.target.result;
//           solution = imgObject.split("base64,")[1];
//          console.log(solution);
//         }
//
//         reader.readAsDataURL(input.files[0]);
//       }
//     }


        $('#btnSubmit').on('click',function() {

        //stop submit the form, we will post it manually.
        event.preventDefault();
         console.log("hitted");
        fire_ajax_submit();

    });

});

function fire_ajax_submit() {

var form = $('#fileUploadForm')[0];
console.log(form);
  var data = new FormData(form);
console.log(data);
 data.append("CustomField", "This is some extra data, testing");
 console.log(data);
var employee={
      "iNumber":$("#iNumber").val(),
       "fullName":$("#fullName").val(),
       "joinedDate":$("#joinedDate").val(),
         "position":$("#position").val(),
       "reportsTo":$("#reportsTo").val(),
        "cubicleNo":$("#cubicleNo").val(),
      "jobType":$("#jobType").val(),
      "files":data
};

    console.log(employee);

  $.ajax({
  				    url: A_PAGE_CONTEXT_PATH + "/insert-emp",
  			        method: "post",
  			        contentType: "application/json",
  			        dataType: "json",
  			        data: JSON.stringify(employee),
  			          success: function(response) {
					     console.log(response);
                         alert("Successfully Saved!");
                         window.location.reload(true);
  					        }, error: function(response){
  			        	switch(response.status){
  			        		case 409:
  			        		alert("error");
  			        	}
  			        }
  			    });

}
