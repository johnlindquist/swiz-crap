package view
{
    import flash.display.Sprite;

    import model.Model;

    import org.swizframework.core.Bean;
    import org.swizframework.core.BeanProvider;
    import org.swizframework.core.mxml.Swiz;

    public class SwizView extends Sprite
    {
        private var bp:BeanProvider;
        private var swiz:Swiz;

        public function SwizView()
        {
            var model:Model = new Model();
            var modelDescription:String = "someUniqueString"

            var modelBean:Bean = new Bean(model, modelDescription);
            var beans:Array = [modelBean];

            bp = new BeanProvider(beans);

            swiz = new Swiz(this, null, null, [bp]);
            swiz.init();

            addChild(new View());
        }
    }
}