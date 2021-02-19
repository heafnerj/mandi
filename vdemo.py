from vpython import *

scene.width = 400
scene.height = 760
# constants and data
g = 9.8       # m/s^2
mball = 0.03  # kg
Lo = 0.26     # m
ks = 1.8      # N/m
deltat = 0.01 # s

# objects (origin is at ceiling)
ceiling = box(pos=vector(0,0,0), length=0.2, height=0.01,
              width=0.2)
ball = sphere(pos=vector(0,-0.3,0),radius=0.025,
              color=color.orange)
spring = helix(pos=ceiling.pos, axis=ball.pos-ceiling.pos,
               color=color.cyan,thickness=0.003,coils=40,
               radius=0.010)

# initial values
pball = mball * vector(0,0,0)      # kg m/s
Fgrav = mball * g * vector(0,-1,0) # N
t = 0

# improve the display
scene.autoscale = False        # turn off automatic camera zoom
scene.center = vector(0,-Lo,0) # move camera down
scene.waitfor('click')         # wait for a mouse click

# initial calculation loop
# calculation loop
while t < 10:
    rate(100)
    # we need the stretch
    s = mag(ball.pos) - Lo
    # we need the spring force
    Fspring = ks * s * -norm(spring.axis)
    Fnet = Fgrav + Fspring
    pball = pball + Fnet * deltat
    ball.pos = ball.pos + (pball / mball) * deltat
    spring.axis = ball.pos - ceiling.pos
    t = t + deltat
