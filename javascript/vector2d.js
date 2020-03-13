/* vector2d.js */

const vector2d = (x,y) => {
	const vec = {
		vx: x,
		vy: y,

		scale: (scale) => {
			vec.vx = vec.vx * scale;
			vec.vy = vec.vy * scale;
		},

		add: (vec2) => {
			vec.vx = vec.vx + vec2.vx;
			vec.vy = vec.vy + vec2.vy;
		},

		sub: (vec2) => {
			vec.vx = vec.vx - vec2.vx;
			vec.vy = vec.vy - vec2.vy;
		},

		negate: () => {
			vec.vx = 0 - vec.vx;
			vec.vy = 0 - vec.vy;
		},

		length: () => {
			return Math.sqrt(vec.vx**2 + vec.vy**2)
		},

		lengthSquared: () => {
			return vec.vx**2 + vec.vy**2
		},

		normalize: () => {
			const len = vec.length();
			vec.vx = vec.vx / len;
			vec.vy = vec.vy / len;
			return len;
		}
	}
	return vec;
}


const v = vector2d(1,1);
console.log(v);

v.add(vector2d(3,4));
console.log(v);
