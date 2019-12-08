<%@ include file="common/header.jsp" %>
    <%@ include file="common/navigation.jsp" %>
        <div class="container">
            <p>page to add new employee</p>
            <div class="container">

               <form:form modelAttribute="employee" method="POST" enctype="multipart/form-data">
                    

                   <label>iNumber</label>
                    <form:input path="iNumber"  id="iNumber" type="text" class="form-control" required="required" />

                     <label>Full Name:</label>
                    <form:input path="fullName" id="fullName" type="text" class="form-control" required="required" />


                    <label>Joined Date</label>
                    <form:input path="joinedDate" id="joinedDate" type="text" class="form-control" required="required" />

                    <label>Position</label>
                    <form:input path="position" id="position" type="text" class="form-control" required="required" />

                    <label>Reports To</label>
                    <form:input path="reportsTo" id="reportsTo" type="text" class="form-control" required="required" />

                    <label>Cubicle No</label>
                    <form:input path="cubicleNo" id="cubicleNo" type="text" class="form-control" required="required" />

                    <label>Job type</label>
                    <form:input path="jobType" id="jobType" type="text" class="form-control" required="required" />


                      <td>Upload Image</td>
                                    <td><form:input type="file" path="fileData"/></td>
                                    <td> </td>
                    
                  <input type="submit" value="Submit" /> <input type="reset"
                                     value="Reset" />

                    
                </form:form>
                 <a href="/admin" class="btn btn-danger">Back
                                        </a>
            </div>

        </div> 




        <%@ include file="common/footer.jsp" %>
    <script type="text/javascript"  src="js/toaster.js"></script>
  <!--  <script type="text/javascript" src="js/main.js"></script> -->
