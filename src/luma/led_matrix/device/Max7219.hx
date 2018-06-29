package luma.led_matrix.device;

import luma.core.device.Device;
import python.KwArgs;
@:pythonImport('luma.led_matrix.device', 'max7219')
extern class Max7219 extends Device{
    function new(serial_interface:Dynamic = null, width:Int = 8, height:Int = 8, cascaded:Dynamic = null, rotate:Int = 0,
    block_orientation:Int = 0, ?kwargs:KwArgs<{?arg2:Dynamic, ?arg3:Dynamic}>):Void;
}
