import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup() {
	// 画面の設定
	background(0,0,0); // 背景を黒にします
	frameRate(60); // 1秒に60回画面を更新します
	size(displayWidth,displayHeight); // 定数displayWidth,displayHeightはそれぞれ画面の幅、高さを表します

	// 音声ファイルを再生するための手続き
	minim = new Minim(this);
	player = minim.loadFile("song.mp3");
	player.loop();
}

void draw() {
	// 各時間における音声ファイルの音量を調べる
	float volL = player.left.level();
	float volR = player.right.level();

	noFill();
	fill(200,200,0);

	// 音量に比例した円を表示する
	ellipse(width/3, height/3, 300*volL, 300*volL);
	ellipse(2*width/3, 2*height/3, 300*volR, 300*volR);
}
