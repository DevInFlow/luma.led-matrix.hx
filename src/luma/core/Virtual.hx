package luma.core;
import luma.core.device.Device;
import luma.core.Mixin.Capabilities;
import python.Tuple.Tuple2;
@:pythonImport('luma.core.virtual', 'sevensegment')
extern class SevenSegment{
    var device:Device;
    var undefined:Dynamic;
    var segment_mapper:Dynamic;
    var _bufsize:Dynamic;
    var text(default, default):String;
    function new(device:Device, undefined:String = "_", segment_mapper:Dynamic = null):Void;
    function _flush(buf:Dynamic):Void;
}
@:pythonImport('luma.core.virtual', 'viewport')
extern class Viewport extends Capabilities{
    function new(device:Device, width:Int, height:Int):Void;
    function set_position(xy:Tuple2<Dynamic, Dynamic>):Void;
}

