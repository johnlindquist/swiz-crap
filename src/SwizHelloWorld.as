package
{
    import flash.display.Sprite;
    import views.SwizView;

    [SWF(backgroundColor="0xffffff", frameRate="31", width="600", height="800")]
    public class SwizHelloWorld extends Sprite
    {
        public var swizView:SwizView;

        public function SwizHelloWorld()
        {
            swizView = new SwizView();
            addChild(swizView);
        }
    }
}