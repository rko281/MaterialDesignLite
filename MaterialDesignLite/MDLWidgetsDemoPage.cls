"Filed out from Dolphin Smalltalk 7"!

MDLDemoPageWithList subclass: #MDLWidgetsDemoPage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLWidgetsDemoPage guid: (GUID fromString: '{69906ac4-ea0a-4efe-a899-2dba40084741}')!
MDLWidgetsDemoPage comment: 'Description--------------------Page containing all the MDL for seaside widgets examples.'!
!MDLWidgetsDemoPage categoriesForClass!Material-Design-Lite-Demo-Core! !
!MDLWidgetsDemoPage methodsFor!

renderPageDescriptionOn: html	html paragraph: 'The second part of Material Design Lite for Seaside is the Widgets. Widgets are Seaside components with behaviour at the difference of MDL components. They respect Material Design rules and provide to the developers predefined behaviour.'.	html paragraph: 'An exemple of widget is the nested list already containing features such as dynamic loading of elements, research, sorting...'!

screens	^ MDLWidgetDemo subclasses! !
!MDLWidgetsDemoPage categoriesFor: #renderPageDescriptionOn:!public!rendering! !
!MDLWidgetsDemoPage categoriesFor: #screens!accessing!public! !

!MDLWidgetsDemoPage class methodsFor!

pageName	^ 'Widgets'!

priority	^ 40! !
!MDLWidgetsDemoPage class categoriesFor: #pageName!accessing!public! !
!MDLWidgetsDemoPage class categoriesFor: #priority!accessing!public! !

