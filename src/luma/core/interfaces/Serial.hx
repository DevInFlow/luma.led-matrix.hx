package luma.core.interfaces;
import python.KwArgs;
@:pythonImport('luma.core.interface.serial', 'i2c')
extern class I2C{
    function new(bus:Dynamic = null, port:Int = 1, adress:UInt = 0x3C):Void;
    function command(?cmd:KwArgs<{?arg2:Dynamic, ?arg3:Dynamic}>):Void;
    function data(data:Dynamic):Void;
    function cleanup():Void;
}

@:pythonImport('luma.core.interface.serial', 'bitbang')
extern class Bitbang{
    function new(gpio:Dynamic = null, transfer_size:Int = 4096, ?args:KwArgs<{?arg2:Dynamic, ?arg3:Dynamic}>):Void;
    function _configure(pin:Dynamic):Void;
    function command(cmd:KwArgs<{?arg2:Dynamic, ?arg3:Dynamic}>):Void;
    function data(data:Dynamic):Void;
    function _write_bytes(data:Dynamic):Void;
    function cleanup():Void;
}
@:pythonImport('luma.core.interface.serial', 'spi')
extern class SPI{
    function new(spi:Dynamic = null, gpio:Dynamic = null, port:Int = 0, device:Int = 0, bus_speed_hz:Int = 8000000, cs_high:Bool = false, transfer_size:Int = 4096, gpio_DC:Int = 24, gpio_RST:Int = 25):Void;
    function _write_bytes(data:Dynamic):Void;
    function cleanup():Void;
}
@:pythonImport('luma.core.interface.serial', 'noop')
extern class Noop{
    function __getattr__(attr:Dynamic):Void;
    function __setattr__(attr:Dynamic, val:Dynamic):Void;
    function __noop(args:Dynamic, ?kwargs:KwArgs<{?arg2:Dynamic, ?arg3:Dynamic}>):Void;
}
