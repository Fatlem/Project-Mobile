import java.awt.Graphics;
import java.awt.Rectangle; // Tambahkan ini
import java.awt.event.KeyEvent; // Tambahkan ini
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import java.io.File;
import java.io.IOException;

public class Bird {
    private int x, y;
    private int velocity = 0; // Kecepatan jatuh
    private BufferedImage image;

    public Bird(int x, int y) {
        this.x = x;
        this.y = y;

        // Muat gambar burung
        try {
            image = ImageIO.read(new File("src/assets/bird.png")); // Sesuaikan path gambar
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void update() {
        velocity += 1; // Menambahkan gravitasi
        y += velocity; // Memperbarui posisi
    }

    public void flap() {
        velocity = -10; // Mengatur kecepatan saat flap
    }

    public void draw(Graphics g) {
        g.drawImage(image, x, y, 50, 50, null); // Ukuran burung
    }

    public int getY() {
        return y;
    }

    public Rectangle getBounds() {
        return new Rectangle(x, y, 50, 50); // Hitbox burung
    }

    public void keyPressed(KeyEvent e) {
        if (e.getKeyCode() == KeyEvent.VK_SPACE) {
            flap(); // Memanggil flap saat tombol spasi ditekan
        }
    }
}
