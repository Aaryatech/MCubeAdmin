
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- JavaScript-->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jcarousel.responsive.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.jcarousel.min.js"></script>
    
<script>
$(function() {
    $('.jcarousel')
        .jcarousel({
              interval: 3000,
            target: '+=1',
            autostart: true
        })
        .jcarouselAutoscroll({
            interval: 3000,
            target: '+=1',
            autostart: true
        })
		
		create: $('.jcarousel').hover(function() 
    {
        $(this).jcarouselAutoscroll('stop');
    },
    function() 
    {
        $(this).jcarouselAutoscroll('start');
    });
    ;
});
</script>


<script
	src="${pageContext.request.contextPath}/resources/js/ekko-lightbox.js"></script>

<c:url value="/visitorCount" var="visitorCount"></c:url>
<c:url value="/fixContrast" var="fixContrast"></c:url>
<script type="text/javascript">
	$(document)
			.ready(
					function($) {

						// delegate calls to data-toggle="lightbox"
						$(document)
								.delegate(
										'*[data-toggle="lightbox"]',
										'click',
										function(event) {
											event.preventDefault();
											return $(this)
													.ekkoLightbox(
															{
																onShown : function() {
																	if (window.console) {
																		return console
																				.log('Checking our the events huh?');
																	}
																},
																onNavigate : function(
																		direction,
																		itemIndex) {
																	if (window.console) {
																		return console
																				.log('Navigating '
																						+ direction
																						+ '. Current item: '
																						+ itemIndex);
																	}
																}
															});
										});

						//Programatically call
						$('#open-image').click(function(e) {
							e.preventDefault();
							$(this).ekkoLightbox();
						});
						$('#open-youtube').click(function(e) {
							e.preventDefault();
							$(this).ekkoLightbox();
						});

					});
</script>
<script>
	$(document).ready(
			function() {

				
				var $affectedElements = $("div,p,a,h5,h4,h3,h2, li.nav-link"); // Can be extended, ex. $("div, p, span.someClass")
				var rtext = 0;
				// Storing the original size in a data attribute so size can be reset
				$affectedElements.each(function() {
					var $this = $(this);
					$this.data("orig-size", $this.css("font-size"));
				});

				$(".increase").click(function() {
					if (rtext < 3) {
						rtext = rtext + 1;
						changeFontSize(1);
					}
				})

				$(".decrease").click(function() {
					if (rtext > -1) {
						rtext = rtext - 1;
						changeFontSize(-1);
					}
				})

				$(".reset").click(function() {
					$affectedElements.each(function() {
						var $this = $(this);
						$this.css("font-size", $this.data("orig-size"));
					});
				})

				function changeFontSize(direction) {

					$affectedElements.each(function() {
						var $this = $(this);
						//alert(parseInt($this.css("font-size"))+direction);
						$this.css("font-size", parseInt($this.css("font-size"))
								+ direction);
					});
				}

				// Function to change webpage background color

				$(".black").click(function() {
					$('body').addClass('black_act')
					fixContrast("black_act");
					
				})
			});
</script>
<script>
	// When the user scrolls down 20px from the top of the document, show the button
	window.onscroll = function() {
		scrollFunction()
	};

	function scrollFunction() {
		if (document.body.scrollTop > 20
				|| document.documentElement.scrollTop > 20) {
			document.getElementById("myBtn").style.display = "block";
		} else {
			document.getElementById("myBtn").style.display = "none";
		}
	}

	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
</script>

<script>
	function fixContrast(contrast) {

		$.getJSON('${fixContrast}', {

			contrast : contrast,
			ajax : 'true',

		}, function(data) {
			//alert(data);
			//location.reload(true);

		});

	}
</script>

<script>
	$(document).ready(function() {
				$.getJSON('${visitorCount}', {
			ajax : 'true',

		}, function(data) {
			$("#visitorCnt").html(data.msg);
			//document.getElementById('visitorCnt').innerHTML = data.msg;

		});
	});
</script>

<script>
window.onscroll = function() {myFunction()};

var header = document.getElementById("stick-menu");
var sticky = header.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    header.classList.add("sticky");
  } else {
    header.classList.remove("sticky");
  }
}
</script> 
