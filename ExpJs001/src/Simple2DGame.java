import javax.swing.JFrame;

public class Simple2DGame extends JFrame {

    public Simple2DGame() {
        initUI();
    }

    private void initUI() {
        // Tambahkan panel game
        add(new GamePanel());

        // Atur ukuran window dan judul
        setTitle("2D Game Sederhana");
        setSize(400, 300);
        setLocationRelativeTo(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

    public static void main(String[] args) {
        // Buat dan tampilkan game
        javax.swing.SwingUtilities.invokeLater(() -> {
            Simple2DGame game = new Simple2DGame();
            game.setVisible(true);
        });
    }
}
