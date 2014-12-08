window.onload = rotate;

var adImages = new Array("images/1.jpg","images/2.jpg","images/3.jpg","images/4.png");
var thisAd = 0;

function rotate() {
	thisAd++;
	if (thisAd == adImages.length) {
		thisAd = 0;
	}
	document.getElementById("adBanner").src = adImages[thisAd];

	setTimeout("rotate()", 3 * 1000);
}