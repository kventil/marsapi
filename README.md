# marsapi
Let's go exploring!


![alt tag](http://imgs.xkcd.com/comics/spirit.png)

(c) by xkcd.org (https://xkcd.com/695/)


## Usage

Init with Coordinates (x,y) and direction (N,S,E,W) optional with planetSize
> rover = @rover.new(0,0,"N")
> rover = @rover.new(0,0,"N",9) #with planetSize


Move with List of commands:
f - forward one unit
b - backward one unit
r - rotate right
l - rotate left
> @rover.commands(["r","f","f","f"])

Get position (0,0 - planetSize,planetSize):
> @rover.position # returns [x,y]

Get orientation
> @rover.orientation #returns orientation
> @rover.orientation.name # returns orientation as String => "N"
