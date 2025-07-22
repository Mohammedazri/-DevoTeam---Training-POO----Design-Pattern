// Pour tester nos classes
List<Shape> shapes = new List<Shape>{
    new Circle(5),
    new Square(4),
    new Triangle(5, 2)
};

for (Shape s : shapes) {
    String typeName;
    if (s instanceof Circle)      typeName = 'Circle';
    else if (s instanceof Square) typeName = 'Square';
    else                           typeName = 'Triangle';
    System.debug('Area of ' + typeName + ' = ' + s.calculateArea());
}
