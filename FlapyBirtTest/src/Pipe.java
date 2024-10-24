import java.awt.Color;
import java.awt.Graphics;
import java.awt.Rectangle;

public class Pipe {
    private int x, y, height;
    private boolean isTop; // true jika pipa atas

    public Pipe(int x, int y, int height, boolean isTop) {
        this.x = x;
        this.y = y;
        this.height = height;
        this.isTop = isTop;
    }

    public void draw(Graphics g) {
        g.setColor(Color.GREEN);
        if (isTop) {
            g.fillRect(x, y, 50, height); // Gambar pipa atas
        } else {
            g.fillRect(x, y, 50, height); // Gambar pipa bawah
        }
    }

    public void update() {
        x -= 5; // Pipa bergerak ke kiri
    }

    public int getX() {
        return x;
    }

    public Rectangle getBounds() {
        return new Rectangle(x, y, 50, height); // Hitbox untuk tabrakan
    }
}
