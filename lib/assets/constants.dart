import 'dart:math';
import 'dart:ui';

// Game ui settings
const Size gridSize = Size(100000, 100000);
const double cellSize = 10;

const double minorLineStrokeWidth = 0.6;
const double majorLineStrokeWidth = 1.0;

final int _maxX = (gridSize.width ~/ cellSize);
final int _maxY = (gridSize.height ~/ cellSize);

bool inBounds(int gx, int gy) => gx >= 0 && gy >= 0 && gx < _maxX && gy < _maxY;

// Game back settings
const int littleGrid = 10;
const int chunkSize = 128;
int getLog2 = log(chunkSize) ~/ log(2);

const int livingCell = 8;
const int deadCell = 0;
