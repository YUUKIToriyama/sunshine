process.stdin.resume();
process.stdin.setEncoding('utf8');

var lines = [];
var reader = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});
reader.on('line', (line) => {
  lines.push(line);
});
reader.on('close', () => {
  var n = parseInt(lines[0]);
  var words = lines.slice(1);
  
  words.forEach(word => {
      singleToPlural(word);
  })
});

const singleToPlural = (w) => {
    //末尾が s, sh, ch, o, x のいずれかである英単語の末尾に es を付ける
    var regExp = /s$|sh$|ch$|o$|x$/;
    if (regExp.test(w)) {
        console.log(w + "es");
    } else {
        //末尾が f, fe のいずれかである英単語の末尾の f, fe を除き、末尾に ves を付ける
        var regExp = /f$|fe$/;
        if (regExp.test(w)) {
            console.log(w.replace(regExp, "ves"));
        } else {
            //末尾の1文字が y で、末尾から2文字目が a, i, u, e, o のいずれでもない英単語の末尾の y を除き、末尾に ies を付ける
            var regExp = /[^aiueo]y$/;
            if (regExp.test(w)) {
                console.log(w.replace(/y$/, "ies"));
            } else {
                //上のいずれの条件にも当てはまらない英単語の末尾には s を付ける
                console.log(w + "s");
            }
        }
        
    }
    
};
