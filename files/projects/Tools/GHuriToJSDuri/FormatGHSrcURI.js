//JavaScript Document
//change "//github.com/*" into jsdelivr URI
function forghlink(URI){
	var sURI = window.location.href;
	if(URI != undefined){
		sURI = URI;
	}
	else{}

	if(sURI.match("//github.com/").length == 1 && sURI.match("/blob/").length == 1 ){
		sURI = sURI.replace("github.com/","cdn.jsdelivr.net/gh/").replace("/blob/","@");
		return sURI;
	}
	if(sURI.match("//www.github.com/").length == 1 && sURI.match("/blob/").length == 1 ){
		sURI = sURI.replace("www.github.com/","cdn.jsdelivr.net/gh/").replace("/blob/","@");
		return sURI;
	}
}