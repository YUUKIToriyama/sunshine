/* lineNotify.js */

var request = require("request")

const accessToken = "***************************";

var headers = {
	'Content-Type': "application/x-www-form-urlencoded",
	'Authorization': `Bearer ${accessToken}`
}

var options = {
	url: "https://notify-api.line.me/api/notify",
	method: "POST",
	headers: headers,
	json: true,
	form: {
		"message": "send a picture",
		"imageThumbnail": "https://torisfactory.com", // imageFullsizeを指定する際にはデタラメでであってもパラメータimageThumbnailが必要な模様
		"imageFullsize": "https://upload.wikimedia.org/wikipedia/ja/thumb/6/61/Wataraseriver.jpg/300px-Wataraseriver.jpg"
	}
}

request(options, function(err, res, body) {
	if (err) {
		console.log(`Error: ${err.message}`);
		return "";
	}
	console.log(body);
})
