package views
{
    import flash.display.Sprite;
    import flash.text.TextField;

    public class ShowClicksView extends Sprite
    {
        [Bind(source="simpleModel.data", targetProperty="text")]
        public var clicksDisplay:TextField;

        [Bind(source="simpleModel.clicksCount", targetProperty="text")]        
        public var helloWorldDisplay:TextField;

        public function ShowClicksView()
        {
            clicksDisplay = new TextField();
            helloWorldDisplay = new TextField();

            clicksDisplay.y = 15;

            addChild(clicksDisplay);
            addChild(helloWorldDisplay);
        }
    }
}