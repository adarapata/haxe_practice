package;

import flash.display.MovieClip;
import flash.display.Sprite;
import flash.events.Event;
import openfl.Assets;
import format.SWF;
import openfl.display.FPS;

class Main extends Sprite {
 
 
 var cat:MovieClip; //To load MC from swf
 public function new () {
    super ();
    stage.frameRate = 24; //set frame  
    var swf = new SWF (Assets.getBytes ("assets/walk.swf"));      
    cat = swf.createMovieClip ("GuyWalk"); 
    cat.height = stage.stageHeight;
    cat.width = stage.stageWidth;
    stage.addEventListener(Event.RESIZE, stage_onResize); 
    addChild (cat);
    addChild (new FPS ()); 
 }

 private function stage_onResize (event:Event):Void {
    cat.width = stage.stageWidth;
    cat.height = stage.stageHeight;
 } 
 
 
}