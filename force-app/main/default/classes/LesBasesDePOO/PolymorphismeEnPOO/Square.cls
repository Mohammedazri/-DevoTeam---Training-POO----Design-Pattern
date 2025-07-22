public class Square implements Shape {
    public Decimal side;
    public Square(Decimal s) { 
        this.side = s; 
    }
    public Decimal calculateArea() {
        return side * side;
    }
}