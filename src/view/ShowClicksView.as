package view
{
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.text.TextField;

    import model.Model;

    public class ShowClicksView extends Sprite
    {

        private var clicksDisplay:TextField;

        public function ShowClicksView()
        {
            clicksDisplay = new TextField();
            addChild(clicksDisplay);
            
        }

        [Inject]
        public var modelVar:Model;

        [PostConstruct]
        public function displayHelloWorld():void
        {
            clicksDisplay.text += modelVar.data;
        }

        [MediateSignal(type="ClickedSignal")]
        public function udpateClicksDisplay(message:String):void
        {
            //nothing happens :(
            trace(message);
            clicksDisplay.text += message;
        }
    }
}