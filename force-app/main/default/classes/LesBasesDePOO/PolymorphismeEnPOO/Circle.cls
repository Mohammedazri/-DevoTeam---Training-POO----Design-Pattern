// 2. Implémentation pour le cercle
public class Circle implements Shape {
    public Decimal radius;
    public Circle(Decimal r) { 
        this.radius = r; 
    }
    public Decimal calculateArea() {
        return Math.PI * radius * radius;
    }
}