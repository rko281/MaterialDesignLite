"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLDemoComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDemoComponent guid: (GUID fromString: '{99d8b492-3a8e-46c6-a033-b7826276b079}')!
MDLDemoComponent comment: 'Description--------------------Abstract superclass of all demo components. I provide some conveniance methods to be used during the redering of the demo.'!
!MDLDemoComponent categoriesForClass!Material-Design-Lite-Demo-Core! !
!MDLDemoComponent methodsFor!

display: aComponentInstance	"Set a component instance as the component to display by the root component."	self rootComponent componentToDisplay: aComponentInstance!

displayInstanceOf: aComponentClass	"Set a component class as the component to display by the root component."	self rootComponent displayInstanceOf: aComponentClass!

rootComponent	^ self session rootComponent!

version	^ self rootComponent version! !
!MDLDemoComponent categoriesFor: #display:!convenience!public! !
!MDLDemoComponent categoriesFor: #displayInstanceOf:!convenience!public! !
!MDLDemoComponent categoriesFor: #rootComponent!accessing!public! !
!MDLDemoComponent categoriesFor: #version!public!rendering! !

