function drawMult(){
	var c =document.getElementById("mult");
	var ctx= c.getContext("2d");
	var origin = new vec2(c.width*.25,c.height*.85);
	var zero = new vec2(0,0);
	var arrowsz = 8;

	drawGrid(ctx,origin,c.width,c.height);

	ctx.save();
	ctx.translate(origin.x,origin.y);

	ctx.font = "9pt Courier";

	ctx.lineWidth = 2;
	ctx.strokeStyle= "#bb2765";

  ctx.lineCap = "round";

	  drawVector(ctx,zero,new vec2(314,0),arrowsz,"3.14*v1 (3.14,0,0)",new vec2(0,20));
	  drawVector(ctx,zero,new vec2(0,-171),arrowsz,"1.71*v2 (0,1.71,0)",new vec2(20,0));

	  drawVector(ctx,zero,new vec2(100*3.14,-50*3.14),arrowsz,"3.14*v3 (3.14,1.57,0)",new vec2(-20,40));

  ctx.strokeStyle= "#ee3987";
	ctx.strokeStyle= "rgb(238,57,135)";

	  drawVector(ctx,zero,new vec2(100,0),arrowsz,"v1 (1,0,0)",new vec2(0,20));
	  drawVector(ctx,zero,new vec2(-100,0),arrowsz,"-1*v1 (-1,0,0)",new vec2(-10,20));
	  drawVector(ctx,zero,new vec2(0,-100),arrowsz,"v2 (0,1,0)",new vec2(20,0));
	  drawVector(ctx,zero,new vec2(100,-50),arrowsz,"v3 (1,.5,0)",new vec2(0,20));

	ctx.restore();
}

function drawAdd(){
	var c =document.getElementById("add");
	var ctx= c.getContext("2d");
	var origin = new vec2(c.width*.05,c.height*.85);
	var zero = new vec2(0,0);
	var arrowsz = 8;

	drawGrid(ctx,origin,c.width,c.height);

	ctx.save();
	ctx.translate(origin.x,origin.y);

	ctx.font = "9pt Courier";
//    ctx.lineCap = "round";

	ctx.lineWidth = 2;
  ctx.globalAlpha = .5;
	ctx.strokeStyle= "rgb(238,57,135)";

	var pt4 = new vec2(314,0);
	  drawVector(ctx,zero,pt4,arrowsz,"pt1 (3.14,0,0)",new vec2(0,20));

	var pt2 = new vec2(0,-171);
	  drawVector(ctx,pt4,pt2,arrowsz,"pt2 (0,1.71,0)",new vec2(10,25));
	  drawVector(ctx,zero,pt2,arrowsz,"pt2 (0,1.71,0)",new vec2(10,25));
    ctx.globalAlpha = .2;
    ctx.lineWidth = 1;
    ctx.strokeStyle = "rgb(20,30,30)";
    drawVector(ctx,new vec2(0,-171*.25),new vec2(314,0),arrowsz,"",zero);
    drawVector(ctx,new vec2(0,-171*.75),new vec2(314,0),arrowsz,"",zero);

    ctx.lineWidth = 2;
	ctx.strokeStyle= "#bb2765";
  ctx.globalAlpha = 1.;

	var pt3 = new vec2(314,-171);
	  drawVector(ctx,zero,pt3,arrowsz,"v1 + v2 (3.14,1.71,0)", new vec2(5,-5));

	ctx.restore();
}