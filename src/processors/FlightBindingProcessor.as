package processors
{
    import flight.binding.Bind;

    import org.swizframework.core.Bean;
    import org.swizframework.processors.BaseMetadataProcessor;
    import org.swizframework.reflection.IMetadataTag;
    import org.swizframework.reflection.MetadataArg;

    public class FlightBindingProcessor extends BaseMetadataProcessor
    {
        public static const BIND:String = "Bind";

        public function FlightBindingProcessor()
        {
            super([BIND]);
        }

        override public function setUpMetadataTag(metadataTag:IMetadataTag, bean:Bean):void
        {
            /*
                Flight binding requires a reference to a target and a source
                as well as the properties which should be bound together

                For the target reference, the bean returns a reference to the target's parent,
                so we use the parent as the target reference then we combine metadata.host and targetProperty
                to create the targetPath
                                
                The source reference and property come from a string, such as
                "model.data", so we just split the string and fetch the source reference
                from the beanFactory by name
            */

            //target logic
            var targetParent:* = bean.source;

            var target:String = metadataTag.host.name;

            var targetPropertyArg:MetadataArg = metadataTag.getArg("targetProperty");
            var targetPropertyBeanName:String = targetPropertyArg.value;

            var targetPath:String = target + "." + targetPropertyBeanName;

            //source logic
            var sourceArg:MetadataArg = metadataTag.getArg("source");
            var sourceBeanName:String = sourceArg.value;

            var sourceInstanceName:String = sourceBeanName.split(".")[0];
            var source:* = beanFactory.getBeanByName(sourceInstanceName).source;
            var sourcePropertyName:String = sourceBeanName.split(".")[1];

            //Flight binding
            Bind.addBinding(targetParent, targetPath, source, sourcePropertyName);
        }
    }
}