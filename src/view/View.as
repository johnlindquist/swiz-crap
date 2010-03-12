package view
{
    import flash.display.Sprite;

    import model.Model;

    public class View extends Sprite
    {
        [Inject]
        public function set modelSetter(value:Model):void
        {
            trace(value.data);//traces "Hello World"
        }

        [Inject]
        public var modelVar:Model;

        public function View()
        {
            trace(modelVar.data); //null object reference
        }
    }
}