abstract class Shape {
  double getArea();
  double getPerimeter();
}

class Rectangle implements Shape {
  double width;
  double height;
  Rectangle(this.width, this.height);
  @override
  double getArea() {
    return width * height;
  }

  @override
  double getPerimeter() {
    return 2 * (width + height);
  }
}

class Circle implements Shape {
  double radius;
  Circle(this.radius);
  @override
  double getArea() {
    return 3.14 * radius * radius;
  }

  @override
  double getPerimeter() {
    return 2 * 3.14 * radius;
  }
}

void main() {
  Shape rectangle = Rectangle(10, 5);
  Shape circle = Circle(7);

  print(
      'Rectangle: Area = ${rectangle.getArea()},perimeter = ${rectangle.getPerimeter()}');

  print(
      'circle: Area = ${circle.getArea()},perimeter = ${circle.getPerimeter()}');
}
