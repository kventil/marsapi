# marsapi
Let's go exploring!


![alt tag](http://imgs.xkcd.com/comics/spirit.png)

(c) by xkcd.org (https://xkcd.com/695/)


## Usage

Init with Coordinates (x,y) and direction (N,S,E,W)
> rover = @rover.new(0,0,"N")

Move with List of commands:
f - forward
b - backwards
r - rotate right
l - rotate left
> @rover.commands(["r","f","f","f"])
