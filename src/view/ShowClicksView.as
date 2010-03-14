package view
{
    import flash.display.Sprite;
    import flash.text.TextField;

    import flight.binding.Bind;

    import model.Model;

    public class ShowClicksView extends Sprite
    {

        public var clicksDisplay:TextField;
        public var helloWorldDisplay:TextField;

        public function ShowClicksView()
        {
            clicksDisplay = new TextField();
            helloWorldDisplay = new TextField();

            clicksDisplay.y = 15;

            addChild(clicksDisplay);
            addChild(helloWorldDisplay);
        }

        [Inject]
        public var crapModel:Model;

        [PostConstruct]
        public function construct():void
        {
            Bind.addBinding(helloWorldDisplay, "text", crapModel, "data");
            Bind.addBinding(clicksDisplay, "text", crapModel, "clicksCount");
        }
    }
}