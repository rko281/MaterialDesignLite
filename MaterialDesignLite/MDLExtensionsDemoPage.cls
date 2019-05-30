"Filed out from Dolphin Smalltalk 7"!

MDLDemoPageWithList subclass: #MDLExtensionsDemoPage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExtensionsDemoPage guid: (GUID fromString: '{a2e0e07e-2747-4378-bf77-bde25f2c0adc}')!
MDLExtensionsDemoPage comment: 'Description--------------------Page containing all the MDL for seaside extensions examples.'!
!MDLExtensionsDemoPage categoriesForClass!Material-Design-Lite-Demo-Core! !
!MDLExtensionsDemoPage methodsFor!

renderPageDescriptionOn: html	html		paragraph: [ html text: 'The last part of Material Design Lite for Seaside is the extensions. Extensions are brushes, components or even Traits helping with the development of web applications.'.			html strong: 'They are not necessarily described by Material Design.'.			html text: 'This is the reason they are packages in an "Extensions" package.' ].	html paragraph: 'They can be, for example, Traits to simplify the use of dialogs, or brushes to render a lateral resizable panel...'!

screens	^ MDLExtensionsDemo subclasses! !
!MDLExtensionsDemoPage categoriesFor: #renderPageDescriptionOn:!public!rendering! !
!MDLExtensionsDemoPage categoriesFor: #screens!accessing!public! !

!MDLExtensionsDemoPage class methodsFor!

pageName	^ 'Extensions'!

priority	^ 60! !
!MDLExtensionsDemoPage class categoriesFor: #pageName!accessing!public! !
!MDLExtensionsDemoPage class categoriesFor: #priority!accessing!public! !

