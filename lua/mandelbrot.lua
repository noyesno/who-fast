
function mandelbrot(x, y, BAILOUT, MAX_ITERATIONS)
  local cr = y - 0.5  
  local ci = x
  local zi = 0.0 
  local zr = 0.0 

  for i=0, MAX_ITERATIONS do
    temp = zr*zi
    zr2  = zr*zr
    zi2  = zi*zi
    zr   = zr2-zi2+cr 
    zi   = temp+temp+ci
    if (zi2+zr2) > BAILOUT then
      return i    
    end
  end
  return 0
end

BAILOUT = 16
MAX_ITERATIONS = 1000

for y=-39, 39 do
  for x=-39, 39 do
    i = mandelbrot(x/40.0, y/40.0, BAILOUT, MAX_ITERATIONS)
    if i == 0 then
      io.write("*")
    else
      io.write(" ")
    end
  end
  io.write("\n")
end
