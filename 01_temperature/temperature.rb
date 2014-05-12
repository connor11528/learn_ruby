def ftoc(far)
	cel = (far - 32) *5/9.0
	return cel
end

def ctof(cel)
	far = 9.0 * cel / 5 + 32
	return far
end