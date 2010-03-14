package model
{
    public class Model
    {
        [Bindable]
        public var data:String = "Hello World";
        [Bindable]
        public var clicksCount:int = 0;

        [MediateSignal(type="ClickedSignal")]
        public function updateClickCount(message:String):void
        {
            data = message;
            clicksCount++;
        }
    }
}