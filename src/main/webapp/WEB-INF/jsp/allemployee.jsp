<%@ include file="common/header.jsp" %>
<%@ include file="common/navigation.jsp" %>
<div class="container">
<p>this is all employee page</p>
<br/><br/>
<div class="tabs">
  

  <div id="tab01" class="tab-contents">
   <div class="box">
       
        	<div class="row" id="abc">
            
   	
 <c:forEach items="${employees}" var="employee">
   		  <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

   					<div class="box-part text-center">

                          <img src="${pageContext.request.contextPath}/images/${employee.iNumber}.jpg" width="100" />

   						<div class="title">
                       I-Number : ${employee.iNumber}
   							<h4>Full Name:${employee.fullName}</h4>
   						</div>

   						<div class="text">
   						  <h6>Joined Date:${employee.joinedDate}</h6>
                <h6>Position:${employee.position}</h6>
                <h6>Job Type:${employee.jobType}</h6>
                <h6>Cubicle No:${employee.cubicleNo}</h6>
              
   						</div>

   						  <h6>Reports to:${employee.reportsTo}</h6>

   					 </div>
   				</div>
   				</c:forEach>
   		</div>
       
   </div>
  </div>
  <div id="tab02" class="tab-contents">
    <h2>Tab 2</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius quos aliquam consequuntur, esse provident impedit minima porro! Laudantium laboriosam culpa quis fugiat ea, architecto velit ab, deserunt rem quibusdam voluptatum.</p>
  </div>
  <div id="tab03" class="tab-contents">
    <h2>Tab 3</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius quos aliquam consequuntur, esse provident impedit minima porro! Laudantium laboriosam culpa quis fugiat ea, architecto velit ab, deserunt rem quibusdam voluptatum.</p>
  </div>
  <div id="tab04" class="tab-contents">
    <h2>Tab 4</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius quos aliquam consequuntur, esse provident impedit minima porro! Laudantium laboriosam culpa quis fugiat ea, architecto velit ab, deserunt rem quibusdam voluptatum.</p>
  </div>
  <div id="tab05" class="tab-contents">
    <h2>Tab 5</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius quos aliquam consequuntur, esse provident impedit minima porro! Laudantium laboriosam culpa quis fugiat ea, architecto velit ab, deserunt rem quibusdam voluptatum.</p>
  </div>
</div>
</div>
<%@ include file="common/footer.jsp" %>
<script>

  $(document).ready(function(){
  var $tabButtonItem = $('#tab-button li'),
      $tabSelect = $('#tab-select'),
      $tabContents = $('.tab-contents'),
      activeClass = 'is-active';

  $tabButtonItem.first().addClass(activeClass);
  $tabContents.not(':first').hide();

  $tabButtonItem.find('a').on('click', function(e) {
    var target = $(this).attr('href');

    $tabButtonItem.removeClass(activeClass);
    $(this).parent().addClass(activeClass);
    $tabSelect.val(target);
    $tabContents.hide();
    $(target).show();
    e.preventDefault();
  });

  $tabSelect.on('change', function() {
    var target = $(this).val(),
        targetSelectNum = $(this).prop('selectedIndex');

    $tabButtonItem.removeClass(activeClass);
    $tabButtonItem.eq(targetSelectNum).addClass(activeClass);
    $tabContents.hide();
    $(target).show();

});
  //   $.ajax({
  //           type: 'GET',
  //           url: A_PAGE_CONTEXT_PATH + "/getAllEmployees",
  //           success:function(data){
  //            var allList=[];
  //            allList=data;
  //            loopForData(allList);
  //          //  console.log(data);
  //           }
  //           });

  //   function loopForData(newDataList){
  //     console.log("new daa list");
  //     console.log(newDataList);
  //     var text="";
  // for (var i=0;i<newDataList.length;i++){
  //   var r = newDataList[i];
  //   console.log(r);
  //     text +="<div class='col-lg-4 col-md-4 col-sm-4 col-xs-12'>"+
  //           "<div class='box-part text-center'>"+
  //       "<img src='C:\\Users\\AshwinPC\\Desktop\\vemployee\\src\\main\\webapp\\upload\\"+r.iNumber+"'.jpg''>"+
  //             "<div class='title'>"+
  //               "<h4> Full Name :"+ r.fullName +"</h4>"+
  //             "</div>"+
  //             "<div class='text'>"+
  //               "<span>Inumner : '+newDataList[i].iNumber}+'</span></br>"+
  //               "<span>Joined Date : '+newDataList[i].joinedDate}+'</span></br>"+
  //               "<span>Position : '+newDataList[i].position}+'</span></br>"+
  //               "<span>Reports to: '+newDataList[i].reportsTo}+'</span></br>"+
  //               "<span>Cubicle No: '+newDataList[i].cubicleNo}+'</span></br>"+
  //                 "<span>Job Type:'+newDataList[i].jobType}+'</span></br>"+

  //             "</div>"+

  //             "<span>Reports to: newDataList[i].reportsTo}</span>"
  //                 +
  //            "</div>"
  //            }

  //            console.log(text);
  //             $("#abc").html(text);

  //   }
       });
</script>