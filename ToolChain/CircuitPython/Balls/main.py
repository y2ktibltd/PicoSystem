#CircuitPython
import ugame
import stage
from random import randint as rand

class Ball(stage.Sprite):
    def __init__(self, x, y):
        super().__init__(bank, 1, x, y)
        self.dx = 2
        self.dy = 1

    def update(self):
        super().update()
        self.set_frame(self.frame % 4 + 1)
        self.move(self.x + self.dx, self.y + self.dy)
        if not 0 < self.x < 224:
            self.dx = -self.dx
        if not 0 < self.y < 224:
            self.dy = -self.dy


bank = stage.Bank.from_bmp16("ball.bmp")
background = stage.Grid(bank, 15, 15)
text = stage.Text(12, 1)
text.move(60, 120)
text.text("Hello world!")
ball1 = Ball(rand(0,224), rand(0,224))
ball2 = Ball(rand(0,224), rand(0,224))
ball3 = Ball(rand(0,224), rand(0,224))
ball4 = Ball(rand(0,224), rand(0,224))
ball5 = Ball(rand(0,224), rand(0,224))
ball6 = Ball(rand(0,224), rand(0,224))
ball7 = Ball(rand(0,224), rand(0,224))
ball8 = Ball(rand(0,224), rand(0,224))
ball9 = Ball(rand(0,224), rand(0,224))
ball10 = Ball(rand(0,224), rand(0,224))
game = stage.Stage(ugame.display, 60)
sprites = [ball1, ball2, ball3, ball4, ball5, ball6, ball7, ball8, ball9, ball10]
game.layers = [text, ball1, ball2, ball3, ball4, ball5, ball6, ball7, ball8, ball9, ball10, background]
game.render_block()

while True:
    for sprite in sprites:
        sprite.update()
    game.render_sprites(sprites)
    game.tick()
