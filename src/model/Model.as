package model
{
    public class Model
    {
        public var data:String = "Hello World";
        public var clicksCount:int = 0;

        [MediateSignal(type="ClickedSignal")]
        public function updateClickCount(message:String):void
        {
            //nothing happens :(
            trace("model clicked", message);
            clicksCount++;
        }
    }
}