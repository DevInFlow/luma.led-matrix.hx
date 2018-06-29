package luma.core.device;
import luma.core.Mixin.Capabilities;
import python.KwArgs;
@:pythonImport('luma.core.device', 'device')
extern class Device extends Capabilities {
    function new(const:Dynamic=null,serial_interface:Dynamic=null):Void;
    function command(?cmd:KwArgs<{?arg2:Dynamic, ?arg3:Dynamic}>):Void;
    function data(data:Dynamic):Void;
    function show():Void;
    function hide():Void;
    function contrast(level:Dynamic):Void;
    function cleanup():Void;
}


@:pythonImport('luma.core.device', 'dummy')

extern class Dummy extends Device{
    function new(width:Int=128,height:Int=64,rotate:Int=0,mode:String="RGB",?kwargs:KwArgs<{?arg2:Dynamic, ?arg3:Dynamic}>):Void;
}
