// 4. Implémentation pour le triangle
public class Triangle implements Shape {
    public Decimal base, height;
    public Triangle(Decimal b, Decimal h) {
        this.base = b;
        this.height = h;
    }
    public Decimal calculateArea() {
        return 0.5 * base * height;
    }
}