function zeroOrOne() {
	let v = Math.random();
	if (v > 0.5) {
		return 1;
	} else {
		return 0;
	}
}

for (let i = 1; i < 20; i = i + 1) {
	console.log(zeroOrOne());
}
