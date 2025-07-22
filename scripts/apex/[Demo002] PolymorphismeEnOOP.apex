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

22:59:32.53 (55244452)|USER_DEBUG|[13]|DEBUG|Area of Circle = 78.539816339744825
22:59:32.53 (55331868)|USER_DEBUG|[13]|DEBUG|Area of Square = 16
22:59:32.53 (55407786)|USER_DEBUG|[13]|DEBUG|Area of Triangle = 5.0