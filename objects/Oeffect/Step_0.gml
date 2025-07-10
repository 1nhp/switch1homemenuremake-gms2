timer += 7

if (timer < 155){
	size += 0.5;
	alpha += 0.03
}

if (timer > 50){
	alpha -= 0.05;
}

if (timer > 170){
	instance_destroy(self);
}