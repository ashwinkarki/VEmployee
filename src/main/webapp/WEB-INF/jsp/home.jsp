<%@ include file="common/header.jsp" %>
<%@ include file="common/navigation.jsp" %>
<div class="containier">
<p>this is home page</p>
<br/><br/>
<div class="tabs">
  <div class="tab-button-outer">
    <ul id="tab-button">
      <li><a href="#tab01">A-E</a></li>
      <li><a href="#tab02">F-I</a></li>
      <li><a href="#tab03">J-M</a></li>
      <li><a href="#tab04">N-R</a></li>
      <li><a href="#tab05">S-Z</a></li>
    </ul>
  </div>
  <div class="tab-select-outer">
    <select id="tab-select">
      <option value="#tab01">Tab 1</option>
      <option value="#tab02">Tab 2</option>
      <option value="#tab03">Tab 3</option>
      <option value="#tab04">Tab 4</option>
      <option value="#tab05">Tab 5</option>
    </select>
  </div>

  <div id="tab01" class="tab-contents">
   <div class="box">
       <div class="container">
        	<div class="row">

   			    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

   					<div class="box-part text-center">

                           <i class="fa fa-instagram fa-3x" aria-hidden="true"></i>

   						<div class="title">
   							<h4>Instagram</h4>
   						</div>

   						<div class="text">
   							<span>Lorem ipsum dolor sit amet, id quo eruditi eloquentiam. Assum decore te sed. Elitr scripta ocurreret qui ad.</span>
   						</div>

   						<a href="#">Learn More</a>

   					 </div>
   				</div>

   				 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

   					<div class="box-part text-center">

   					    <i class="fa fa-twitter fa-3x" aria-hidden="true"></i>

   						<div class="title">
   							<h4>Twitter</h4>
   						</div>

   						<div class="text">
   							<span>Lorem ipsum dolor sit amet, id quo eruditi eloquentiam. Assum decore te sed. Elitr scripta ocurreret qui ad.</span>
   						</div>

   						<a href="#">Learn More</a>

   					 </div>
   				</div>

   				 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

   					<div class="box-part text-center">

                           <i class="fa fa-facebook fa-3x" aria-hidden="true"></i>

   						<div class="title">
   							<h4>Facebook</h4>
   						</div>

   						<div class="text">
   							<span>Lorem ipsum dolor sit amet, id quo eruditi eloquentiam. Assum decore te sed. Elitr scripta ocurreret qui ad.</span>
   						</div>

   						<a href="#">Learn More</a>

   					 </div>
   				</div>

   				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

   					<div class="box-part text-center">

                           <i class="fa fa-pinterest-p fa-3x" aria-hidden="true"></i>

   						<div class="title">
   							<h4>Pinterest</h4>
   						</div>

   						<div class="text">
   							<span>Lorem ipsum dolor sit amet, id quo eruditi eloquentiam. Assum decore te sed. Elitr scripta ocurreret qui ad.</span>
   						</div>

   						<a href="#">Learn More</a>

   					 </div>
   				</div>

   				 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

   					<div class="box-part text-center">

   					    <i class="fa fa-google-plus fa-3x" aria-hidden="true"></i>

   						<div class="title">
   							<h4>Google</h4>
   						</div>

   						<div class="text">
   							<span>Lorem ipsum dolor sit amet, id quo eruditi eloquentiam. Assum decore te sed. Elitr scripta ocurreret qui ad.</span>
   						</div>

   						<a href="#">Learn More</a>

   					 </div>
   				</div>

   				 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

   					<div class="box-part text-center">

                           <i class="fa fa-github fa-3x" aria-hidden="true"></i>

   						<div class="title">
   							<h4>Github</h4>
   						</div>

   						<div class="text">
   							<span>Lorem ipsum dolor sit amet, id quo eruditi eloquentiam. Assum decore te sed. Elitr scripta ocurreret qui ad.</span>
   						</div>

   						<a href="#">Learn More</a>

   					 </div>
   				</div>

   		</div>
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
$(function() {
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
});
</script>