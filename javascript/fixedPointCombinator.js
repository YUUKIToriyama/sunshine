const combinator = func => {
	return (x => {
		return func(y => {
			return x(x)(y)
		});
	})(x => {
		return func(y => {
			return x(x)(y)
		});
	});
}

const f = n => {
	return n == 0 ? 1 : n * f(n-1)
}

console.log(combinator(() => {return f})(5))
