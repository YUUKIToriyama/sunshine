// map関数
function map(func, arr) {
  var result = [];
  for (var i = 0; i != arr.length; i++) {
    result[i] = func(arr[i]);
  }
  return result;
}

// 使用例
(function() {
  var g = function f(x) {return x == 0 ? 1 : x * f(x-1)}
  console.log(map(g, [1,2,3,4]))
})()
