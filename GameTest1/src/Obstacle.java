import java.awt.Graphics;
import java.awt.Color;

public class Obstacle extends GameObject {
    public Obstacle(int x, int y) {
        super(x, y);
    }

    @Override
    public void update() {
        // Tidak ada logika update untuk rintangan
    }

    @Override
    public void draw(Graphics g) {
        g.setColor(Color.BLUE);
        g.fillRect(x, y, 30, 30); // Menggambar rintangan sebagai persegi biru
    }
}
