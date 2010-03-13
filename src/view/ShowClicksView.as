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
        public function set model(value:Model):void
        {
            helloWorldDisplay.text = value.data;
            Bind.addBinding(clicksDisplay, "text", value, "clicksCount");
        }
    }
}