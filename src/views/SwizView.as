package views
{
    import com.foomonger.swizframework.processors.MediateSignalProcessor;

    import flash.display.DisplayObject;
    import flash.display.Sprite;

    import models.Model;

    import org.swizframework.core.Bean;
    import org.swizframework.core.BeanFactory;
    import org.swizframework.core.BeanProvider;
    import org.swizframework.core.SwizConfig;
    import org.swizframework.core.mxml.Swiz;

    import processors.FlightBindingProcessor;

    import signal.ClickedSignal;

    public class SwizView extends Sprite
    {
        public var clickOnMeView:DisplayObject;

        public var showClicksView:DisplayObject;

        public function SwizView()
        {
//            SwizLogger.addLoggingTarget(new TraceTarget());

            //config
            var swizConfig:SwizConfig = new SwizConfig();
            swizConfig.viewPackages = ["views"];

            //bean factory
            var beanFactory:BeanFactory = new BeanFactory();

            //bean providers
            var modelBean:Bean = new Bean(new Model(), "simpleModel");
            var signalBean:Bean = new Bean(new ClickedSignal(), "siggy")

            var beans:Array = [modelBean, signalBean];

            var beanProvider:BeanProvider =  new BeanProvider(beans)
            var beanProviders:Array = [beanProvider]

            //custom processors
            var mediateSignalProcessor:MediateSignalProcessor = new MediateSignalProcessor();
            mediateSignalProcessor.signalPackages = ["signal"];
            mediateSignalProcessor.strictArgumentTypes = true;

            var flightBindingProcessor:FlightBindingProcessor = new FlightBindingProcessor();

            var customProcessors:Array = [mediateSignalProcessor, flightBindingProcessor];

            //init
            var swiz:Swiz = new Swiz(this, swizConfig, beanFactory, beanProviders, customProcessors);
            swiz.init();

            //bombs away!
            clickOnMeView = addChild(new ClickOnMeView());
            showClicksView = addChild(new ShowClicksView());

            showClicksView.x = 100;
        }
    }
}