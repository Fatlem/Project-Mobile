import java.awt.Graphics;
import java.util.ArrayList;

public class Level {
    private ArrayList<GameObject> objects;
    private Player player;

    public Level(Player player) {
        this.player = player;
        objects = new ArrayList<>();
        // Tambahkan beberapa rintangan sebagai contoh
        objects.add(new Obstacle(200, 200));
        objects.add(new Obstacle(400, 300));
        objects.add(new Obstacle(600, 100));
    }

    public void update() {
        for (GameObject obj : objects) {
            obj.update();
        }
    }

    public void draw(Graphics g) {
        for (GameObject obj : objects) {
            obj.draw(g);
        }
    }
}
