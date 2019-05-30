"Filed out from Dolphin Smalltalk 7"!

WASession subclass: #MDLDemoSession
	instanceVariableNames: 'rootComponent'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDemoSession guid: (GUID fromString: '{4e55f982-b330-4bc7-a21b-5a8828e4f68d}')!
MDLDemoSession comment: 'Description--------------------Simple session for the demo application. I save the root component to help with the application management.Internal Representation and Key Implementation Points.--------------------    Instance Variables	rootComponent:		<aComponent>	The root component of the demo. Should be a MDLDemo instance.'!
!MDLDemoSession categoriesForClass!Material-Design-Lite-Demo-Core! !
!MDLDemoSession methodsFor!

rootComponent	^ rootComponent!

rootComponent: anObject	rootComponent := anObject! !
!MDLDemoSession categoriesFor: #rootComponent!accessing!public! !
!MDLDemoSession categoriesFor: #rootComponent:!accessing!public! !

