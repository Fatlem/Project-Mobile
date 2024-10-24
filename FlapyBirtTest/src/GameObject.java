import java.awt.Graphics;

public abstract class GameObject {
    protected int x, y;

    public GameObject(int x, int y) {
        this.x = x;
        this.y = y;
    }

    public abstract void update();
    public abstract void draw(Graphics g);

    // Tambahkan metode untuk mendapatkan posisi Y jika diperlukan
    public int getY() {
        return y;
    }
}
