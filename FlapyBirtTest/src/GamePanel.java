import javax.swing.JPanel;
import java.awt.Graphics;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import javax.swing.Timer;
import java.util.ArrayList;
import java.awt.image.BufferedImage;
import javax.imageio.ImageIO;
import java.io.File;
import java.io.IOException;

public class GamePanel extends JPanel implements ActionListener, KeyListener {
    private Bird bird;
    private ArrayList<Pipe> pipes;
    private Timer timer;
    private int score = 0;
    private boolean gameOver = false;
    private BufferedImage backgroundImage;

    public GamePanel() {
        bird = new Bird(100, 300);
        pipes = new ArrayList<>();
        timer = new Timer(16, this); // Sekitar 60 FPS

        this.addKeyListener(this);
        this.setFocusable(true);
        this.requestFocusInWindow();

        // Tambahkan beberapa pipa awal
        addPipe();

        // Muat gambar latar belakang
        try {
            backgroundImage = ImageIO.read(new File("src/assets/background.png")); // Sesuaikan path gambar
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void startGame() {
        score = 0; // Reset skor
        bird = new Bird(100, 300); // Reset burung ke posisi awal
        pipes.clear(); // Hapus semua pipa
        addPipe(); // Tambah pipa awal
        gameOver = false; // Set gameOver menjadi false
        timer.start(); // Mulai timer
    }

    private void addPipe() {
        int pipeHeight = (int) (Math.random() * 200 + 100);
        pipes.add(new Pipe(800, 0, pipeHeight, true)); // Pipa atas
        pipes.add(new Pipe(800, pipeHeight + 150, 600 - pipeHeight - 150, false)); // Pipa bawah
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (!gameOver) {
            bird.update();
            for (Pipe pipe : pipes) {
                pipe.update();
            }

            // Tambahkan pipa baru setiap beberapa waktu
            if (pipes.size() > 0 && pipes.get(0).getX() < -100) {
                pipes.remove(0);
                pipes.remove(0);
                addPipe();
                score++;
            }

            // Cek tabrakan
            checkCollision();
            repaint();
        }
    }

    private void checkCollision() {
        for (Pipe pipe : pipes) {
            if (pipe.getBounds().intersects(bird.getBounds())) {
                gameOver = true; // Set gameOver menjadi true
                timer.stop(); // Menghentikan game jika tabrakan
                return;
            }
        }

        // Jika burung jatuh ke tanah atau keluar dari atas
        if (bird.getY() > 600 || bird.getY() < 0) {
            gameOver = true; // Set gameOver menjadi true
            timer.stop(); // Menghentikan game jika burung keluar dari batas
        }
    }

    @Override
    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        g.drawImage(backgroundImage, 0, 0, getWidth(), getHeight(), null); // Gambar latar belakang

        bird.draw(g);
        for (Pipe pipe : pipes) {
            pipe.draw(g);
        }

        // Gambar skor
        g.setColor(Color.BLACK);
        g.drawString("Score: " + score, 10, 20);

        // Jika permainan selesai, tampilkan pesan
        if (gameOver) {
            g.setColor(Color.RED);
            g.drawString("Game Over! Press R to Restart", 250, 300);
        }
    }

    @Override
    public void keyPressed(KeyEvent e) {
        if (gameOver && e.getKeyCode() == KeyEvent.VK_R) {
            startGame(); // Mengulang permainan saat tombol R ditekan
        } else {
            bird.keyPressed(e);
        }
    }

    @Override
    public void keyReleased(KeyEvent e) {
        // Tidak digunakan
    }

    @Override
    public void keyTyped(KeyEvent e) {
        // Tidak digunakan
    }
}
