
function vec2(x,y){
  this.x = x;
  this.y = y;

  this.plus = function(v){
    return new vec2(x+v.x,y+v.y);
  }

  this.minus = function(v){
    return new vec2(x-v.x,y-v.y);
  }

  this.times = function(a){
    return new vec2(x*a,y*a);
  }
  this.dot = function(v){
   return x*v.x+y+v.y;
  }

  this.length = function(){
    return Math.sqrt(x*x + y*y);
  }

  this.normalize = function(){
    this.x *= 1./this.length();
    this.y *= 1./this.length();
  }
}

function drawGrid(ctx, origin, wid, ht){
//lazy
var i = 0;
var j = 0;
ctx.lineWidth = 1;
ctx.strokeStyle = "#ceffe1";
for(i = origin.x; i <= wid; i+=10){
  ctx.beginPath();
  ctx.moveTo(i,0);
  ctx.lineTo(i,ht);
  ctx.stroke();
}

for(j = origin.y; j <= ht; j+=10){
  ctx.beginPath();
  ctx.moveTo(0,j);
  ctx.lineTo(wid,j);
  ctx.stroke();
}

for(i = origin.x; i > 0; i-=10){
  ctx.beginPath();
  ctx.moveTo(i,0);
  ctx.lineTo(i,ht);
  ctx.stroke();
}

for(j = origin.y; j >0; j-=10){
  ctx.beginPath();
  ctx.moveTo(0,j);
  ctx.lineTo(wid,j);
  ctx.stroke();
}

ctx.lineWidth = 2;
ctx.strokeStyle = "#aaccc1";
ctx.beginPath();
ctx.moveTo(0,origin.y);
ctx.lineTo(wid,origin.y);
ctx.stroke();

ctx.beginPath();
ctx.moveTo(origin.x,0);
ctx.lineTo(origin.x,ht);
ctx.stroke();


}

function drawVector(ctx,origin,v,arrow_len,label, labeloff){
  ctx.beginPath();
  ctx.save();
  ctx.translate(origin.x,origin.y);
  ctx.moveTo(0,0);
  ctx.lineTo(v.x,v.y);
  ctx.stroke();

  ctx.beginPath();
  var diff = new vec2(v.x,v.y);
  diff = diff.times(-1);
  diff.normalize();
  console.log(diff);
  var norm = new vec2(v.y,-v.x);
  norm.normalize();
  var sz = v.length() < 2*arrow_len ? v.length()*.5 : arrow_len;
  ctx.moveTo(v.x + sz*norm.x + sz*diff.x, v.y + sz*norm.y + sz*diff.y);
  ctx.lineTo(v.x, v.y);
  ctx.lineTo(v.x - sz*norm.x + sz*diff.x, v.y - sz*norm.y + sz*diff.y);
  ctx.stroke();

  if(label.length){
    ctx.fillText(label,v.x+labeloff.x,v.y+labeloff.y);
  }

  ctx.restore();
}