///arg object
///arg grid
var _object = argument0;
var _grid = argument1;

var _top_right = _grid[# (_object.bbox_right-1) div CELL_WIDTH, _object.bbox_top div CELL_HEIGHT] == VOID;
var _top_left = _grid[# _object.bbox_left div CELL_WIDTH, _object.bbox_top div CELL_HEIGHT] == VOID;
var _bottom_right = _grid[# (_object.bbox_right-1) div CELL_WIDTH, (_object.bbox_bottom-1) div CELL_HEIGHT] == VOID;
var _bottom_left = _grid[# _object.bbox_left div CELL_WIDTH, (_object.bbox_bottom-1) div CELL_HEIGHT] == VOID;


return _top_right || _top_left || _bottom_right || _bottom_left;