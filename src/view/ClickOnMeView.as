package view
{
    import flash.display.Sprite;

    import flash.events.Event;

    import flash.events.MouseEvent;

    import model.Model;

    import org.swizframework.core.Bean;
    import org.swizframework.core.mxml.Swiz;

    import signal.ClickedSignal;

    public class ClickOnMeView extends Sprite
    {
        public function ClickOnMeView()
        {
            graphics.beginFill(0xcc0000);
            graphics.drawCircle(50, 50, 50);
            graphics.endFill();

            addEventListener(MouseEvent.CLICK, clickHandler);
        }

        [Inject]
        public var clicked:ClickedSignal;

        private function clickHandler(event:MouseEvent):void
        {
            trace(clicked); // traces [object ClickedSignal]
            clicked.dispatch("that tickles!");
        }
    }
}