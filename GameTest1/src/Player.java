import java.awt.Graphics;
import java.awt.Color;
import java.awt.event.KeyEvent;

public class Player extends GameObject {
    private int speedX = 0;
    private int speedY = 0;

    public Player(int x, int y) {
        super(x, y);
    }

    @Override
    public void update() {
        x += speedX;
        y += speedY;
    }

    @Override
    public void draw(Graphics g) {
        g.setColor(Color.RED);
        g.fillRect(x, y, 50, 50); // Menggambar pemain sebagai persegi merah
    }

    public void keyPressed(KeyEvent e) {
        int key = e.getKeyCode();

        if (key == KeyEvent.VK_LEFT) {
            speedX = -5;
        }
        if (key == KeyEvent.VK_RIGHT) {
            speedX = 5;
        }
        if (key == KeyEvent.VK_UP) {
            speedY = -5;
        }
        if (key == KeyEvent.VK_DOWN) {
            speedY = 5;
        }
    }

    public void keyReleased(KeyEvent e) {
        int key = e.getKeyCode();

        if (key == KeyEvent.VK_LEFT || key == KeyEvent.VK_RIGHT) {
            speedX = 0;
        }
        if (key == KeyEvent.VK_UP || key == KeyEvent.VK_DOWN) {
            speedY = 0;
        }
    }
}
