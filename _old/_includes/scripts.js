<script>

	var title = document.getElementById('title');
	var skyline = document.getElementById('skyline');
	var titleOffset = parseInt(window.getComputedStyle(title, null).top)
	titleOffset = titleOffset ? titleOffset : 0
	var skylineOffset = parseInt(window.getComputedStyle(skyline, null).top)
	skylineOffset = skylineOffset ? skylineOffset : 0
	
	function parallax(){
	  title.style.top = -(window.pageYOffset / 8 - titleOffset)+'px';
	  skyline.style.top = -(window.pageYOffset / 4 - skylineOffset)+'px'; 
	}
	window.addEventListener("scroll", parallax, false);

</script>