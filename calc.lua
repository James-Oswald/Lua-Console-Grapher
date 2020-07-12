function getx(x)
    return -x * math.tan(0.2 * x)
end
width = 50
height = 50
a = {}
for i = 0, height do
    a[i] = {}
    for j = 0, width do
       a[i][j] = " "
    end
end
for t = -100, 100, 0.01 do
    x = math.floor(t) + (width / 2)
    y = -math.floor(getx(t)) + (height / 2)
    if x < height and x > 0 and y > 0 and y < width then
        a[y][x] = "@"
    end
end
for i = 0, height do
    for j = 0, width do
        io.write(a[i][j])
    end  
print()
end