package
{
    import flash.display.Sprite;
    import view.SwizView;

    [SWF(backgroundColor="0xffffff", frameRate="31", width="600", height="800")]
    public class SwizHelloWorld extends Sprite
    {
        public function SwizHelloWorld()
        {
            var swizView:SwizView = new SwizView();
            addChild(swizView);
        }
    }
}