function _init()
	ship={x=60, y=60}
	bullets={}
end

function _draw()
	cls()
	spr(1, ship.x, ship.y)
	for b in all(bullets) do
		spr(3, b.x, b.y)
	end
end

function _update()
    if btn(0) then ship.x-=1 end
	if btn(1) then ship.x+=1 end
	if btn(2) then ship.y-=1 end
	if btn(3) then ship.y+=1 end
	if btnp(4) then fire() end
	
	for b in all(bullets) do
		b.y+=b.dy
	end
end

function fire()
	local b = {
		x=ship.x, y=ship.y,
		dy=-3
	}
	add(bullets, b)
end