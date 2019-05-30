"Filed out from Dolphin Smalltalk 7"!

MDLDemoPageWithList subclass: #MDLComponentsDemoPage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLComponentsDemoPage guid: (GUID fromString: '{34a9238f-05e7-4041-8948-137629a1f39b}')!
MDLComponentsDemoPage comment: 'Description--------------------Page containing all the MDL for seaside components examples.'!
!MDLComponentsDemoPage categoriesForClass!Material-Design-Lite-Demo-Core! !
!MDLComponentsDemoPage methodsFor!

renderPageDescriptionOn: html	html		paragraph:			'The first part of Material Design Lite for Seaside is the components. The MDL components are created with CSS, JavaScript, and HTML. You can use the components to construct web pages and web apps that are attractive, consistent, and functional. Pages developed with MDL will adhere to modern web design principles like browser portability, device independence, and graceful degradation. Most of them are based on Google''s MDL implementation and provides a binding for Seaside.'.	html paragraph: 'The components are made available in the form of Seaside''s brushes.'!

screens	^ MDLComponentDemo subclasses! !
!MDLComponentsDemoPage categoriesFor: #renderPageDescriptionOn:!public!rendering! !
!MDLComponentsDemoPage categoriesFor: #screens!accessing!public! !

!MDLComponentsDemoPage class methodsFor!

pageName	^ 'Components'!

priority	^ 30! !
!MDLComponentsDemoPage class categoriesFor: #pageName!accessing!public! !
!MDLComponentsDemoPage class categoriesFor: #priority!accessing!public! !

