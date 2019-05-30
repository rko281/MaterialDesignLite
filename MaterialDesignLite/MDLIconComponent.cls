"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLIconComponent
	instanceVariableNames: 'iconName'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLIconComponent guid: (GUID fromString: '{94dac688-ad36-4dc5-b3c9-26167a99c891}')!
MDLIconComponent comment: 'Description--------------------I am a brush to create a '!
!MDLIconComponent categoriesForClass!Material-Design-Lite-Widgets! !
!MDLIconComponent methodsFor!

iconName	^ iconName!

iconName: anObject	iconName := anObject!

renderContentOn: html	iconName ifNotNil: [ html mdlIcon: iconName ] ifNil: [ html text: 'No icon name set' ]! !
!MDLIconComponent categoriesFor: #iconName!accessing!public! !
!MDLIconComponent categoriesFor: #iconName:!accessing!public! !
!MDLIconComponent categoriesFor: #renderContentOn:!public!rendering! !

