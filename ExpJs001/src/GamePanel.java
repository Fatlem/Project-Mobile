import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import javax.swing.JPanel;
import javax.swing.Timer;

public class GamePanel extends JPanel implements ActionListener {

    private int x = 50; // Posisi X karakter
    private int y = 50; // Posisi Y karakter
    private int speed = 2; // Kecepatan gerak karakter

    private Timer timer;

    public GamePanel() {
        initPanel();
    }

    private void initPanel() {
        setBackground(Color.BLACK);
        setPreferredSize(new Dimension(400, 300));
        setFocusable(true);
        addKeyListener(new TAdapter());

        timer = new Timer(10, this);
        timer.start();
    }

    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        drawCharacter(g);
    }

    private void drawCharacter(Graphics g) {
        // Menggambar karakter sebagai persegi
        g.setColor(Color.RED);
        g.fillRect(x, y, 30, 30);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        repaint(); // Menggambar ulang panel
    }

    private class TAdapter extends KeyAdapter {
        @Override
        public void keyPressed(KeyEvent e) {
            int key = e.getKeyCode();

            // Mengatur gerakan karakter
            if (key == KeyEvent.VK_LEFT) {
                x -= speed;
            }
            if (key == KeyEvent.VK_RIGHT) {
                x += speed;
            }
            if (key == KeyEvent.VK_UP) {
                y -= speed;
            }
            if (key == KeyEvent.VK_DOWN) {
                y += speed;
            }
        }
    }
}
