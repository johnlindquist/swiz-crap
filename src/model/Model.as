package model
{
    public class Model
    {
        public var data:String = "Hello World";

        [MediateSignal(type="ClickedSignal")]
        public function udpateClicksDisplay(message:String):void
        {
            //nothing happens :(
            trace("model clicked", message);
        }
    }
}