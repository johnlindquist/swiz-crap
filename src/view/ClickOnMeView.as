package view
{
    import flash.display.Sprite;
    import flash.events.MouseEvent;

    import signal.ClickedSignal;

    public class ClickOnMeView extends Sprite
    {
        [Inject]
        public var clicked:ClickedSignal;

        public function ClickOnMeView()
        {
            graphics.beginFill(0xcc0000);
            graphics.drawCircle(50, 50, 50);
            graphics.endFill();

            addEventListener(MouseEvent.CLICK, clickHandler);
        }

        private function clickHandler(event:MouseEvent):void
        {
            trace(clicked); // traces [object ClickedSignal], so clicks are being recognized and the signal is not null
            clicked.dispatch("that tickles!");
        }
    }
}