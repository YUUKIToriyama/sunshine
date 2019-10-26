/* apiAccess.js */
/* node apiAccess.js > result.html */

var result = null;
var data = null;
var keyword = "出雲";

var XMLHttpRequest = require("xmlhttprequest").XMLHttpRequest;
var httpObj = new XMLHttpRequest();
httpObj.open("GET", "https://jpsearch.go.jp/api/item/search/jps-cross?keyword=" + encodeURIComponent(keyword), true);

httpObj.onload = function() {
	data = JSON.parse(this.responseText);
	//console.log(data);
	console.log("<p>Success</p>");
	showResult(data);
}

httpObj.send(null);

function showResult(data) {
	var tag = "";
	data.list.forEach(x => {
		tag = tag + `<tr><td><img src="${x.common.thumbnailUrl}"></td><td>${x.id}</td><td>${x.common.title}</td><td>${x.common.linkUrl}</td></tr>`;
	});
	//result.innerHTML = tag;
	console.log("<table>" + tag + "</table>");
}


/*
window.onload = function() {
	result = document.getElementById("result");
}
*/
