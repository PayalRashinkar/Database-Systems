import math

t=0.0
R = 6.0/10000
r = 1.0/10000
a = 8.0/10000
with open("spiro_lat_long.txt", 'w') as f:
    while t < 16*math.pi:
        x=(R + r) * math.cos((r / R) * t) - a * math.cos((1 + r / R) * t) -118.2852
        y = (R + r) * math.sin((r / R) * t) - a * math.sin((1 + r / R) * t) + 34.0204
        f.write("{\n")
        f.write("\"loc\": " + "[" + str(x) + "," + str(y) + "]\n")
        f.write("},\n")
        t=t+0.1
    f.write("]\n")
    f.close()
