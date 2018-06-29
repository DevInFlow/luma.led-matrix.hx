package luma.core;
@:pythonImport('luma.core.mixin', 'capabilities')
extern class Capabilities {
    function capabilities(width:Int,height:Int,rotate:Int,size:Int):Void;
    function clear():Void;
    function preprocess(image:Dynamic):Void;
    function display(image:Dynamic):Void;
}
