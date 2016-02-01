
library(lattice)

harm_summary <- summarise(storm_data_by_event, 
                           FATALITIES.total = sum(FATALITIES), 
                           INJURIES.total = sum(INJURIES))
 

damage_summary <- summarise(storm_data_by_event,
                           CROP_DAMAGE.total = sum(CROP_DAMAGE),
                           PROPERTY_DAMAGE.total = sum(PROPERTY_DAMAGE))


damage_summary$TOTAL <- damage_summary$CROP_DAMAGE.total + damage_summary$PROPERTY_DAMAGE.total



harm_summary <- arrange(harm_summary, desc(FATALITIES.total))

ggplot(harm_summary, aes(factor(EVTYPE.clean), FATALITIES.total))+ 
        geom_bar(stat="identity", position = "dodge") +
        scale_fill_brewer(palette = "Set1")+
        coord_flip()

ggplot(harm_summary, aes(x = factor(EVTYPE.clean), y = INJURIES.total))+ 
        geom_bar(stat="identity", position = "dodge") +
        scale_fill_brewer(palette = "Set1")+
        coord_flip()
