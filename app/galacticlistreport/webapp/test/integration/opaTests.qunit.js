sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/galacticlistreport/test/integration/FirstJourney',
		'ns/galacticlistreport/test/integration/pages/GalacticSpacefarerList',
		'ns/galacticlistreport/test/integration/pages/GalacticSpacefarerObjectPage'
    ],
    function(JourneyRunner, opaJourney, GalacticSpacefarerList, GalacticSpacefarerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/galacticlistreport') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheGalacticSpacefarerList: GalacticSpacefarerList,
					onTheGalacticSpacefarerObjectPage: GalacticSpacefarerObjectPage
                }
            },
            opaJourney.run
        );
    }
);