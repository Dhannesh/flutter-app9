# app9

Introducting the Row Widget

## create images folder 
create a folder named images parallel to lib folder

## set the path to pubspec.yaml in Flutter assets

assets:
- images/

row and column widget is bydefault fixed sized
we can make view scroabble to maintain the widget

row widget by default not wrap
## Row widget main axis alignment
mainAxisAlignment: MainAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.end,
mainAxisAlignment: MainAxisAlignment.spaceBetween,
mainAxisAlignment: MainAxisAlignment.spaceAround,

## Row Widget Cross Axis alignment
crossAxisAlignment: CrossAxisAlignment.center,

## Text Direction Alignment - move alignment of children as in flexbox
textDirection: TextDirection.rtl for main axis
verticalDirection : for cross axis

## cross axis and main axis alignment will work only if we set
width: MediaQuery.of(context).size.width,
height: MediaQuery.of(context).size.height,


## height and width of widget
it can managed by expanded widget, automatically fixed the height and width of widget