%area and primeter of a square
square(Side, Area, Primeter):-
    Area is Side * Side,
    Primeter is 4 * Side.

%area and primeter of a rectangle
rectangle(Length, Width, Area, Primeter):-
    Area is Length * Width,
    Primeter is (2 * Length) + (2 * Width).

%area and primeter of a triangle
triangle(Base, Height, Side1, Side2, Area, Primeter):-
    Area is (Base * Height) / 2,
    Primeter is Base + Side1 + Side2.
