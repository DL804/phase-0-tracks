

$(function(){

   // jQuery methods go here...
   
	$("#h1id").remove(); // this will remove the H1 element
	
	$(".h3class").hide(); //this hides the H3 element
	$("#hideid").click(function(){ //clicking the paragraph will hide it
		$(this).hide();
	});
	$("button").click(function(){
		$("#setcontent").text("Boooooo");
	});
	$("img:eq(1)").fadeOut(2500).delay(1500).fadeIn(3000);  //find the img tag equal to 1 using index
	$("img:gt(1)").fadeOut(5000) //find img tag greater than 1 and fade out


});
