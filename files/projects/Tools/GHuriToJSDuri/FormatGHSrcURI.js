//JavaScript Document
//change "//github.com/*" into jsdelivr URI
function forghlink(URI){
	if(URI.match("//github.com/").length == 1 && URI.match("/blob/").length == 1 ){
		URI = URI.replace("github.com/","cdn.jsdelivr.net/gh/").replace("/blob/","@");
		return URI;
	}
	if(URI.match("//www.github.com/").length == 1 && URI.match("/blob/").length == 1 ){
		URI = URI.replace("www.github.com/","cdn.jsdelivr.net/gh/").replace("/blob/","@");
		return URI;
	}
}