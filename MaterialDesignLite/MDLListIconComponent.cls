"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLListIconComponent
	instanceVariableNames: 'label helpText'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLListIconComponent guid: (GUID fromString: '{edd6bd2c-453a-4f7b-aaef-ce9468396256}')!
MDLListIconComponent comment: 'I am a simple component to display a MDL icon with an help text. My main purpose is to serve in a MDLNestedList to display a MDL icon.'!
!MDLListIconComponent categoriesForClass!Material-Design-Lite-Widgets-List! !
!MDLListIconComponent methodsFor!

helpText	^ helpText!

helpText: anObject	helpText := anObject!

label	^ label!

label: anObject	label := anObject!

renderContentOn: html	| id |	id := html nextId.	html mdlIcon		id: id;		with: self label.			(self helpText isNil or: [ self helpText isEmpty ])		ifTrue: [ ^ self ].			html mdlTooltip		large;		for: id;		with: [ html text: self helpText ]! !
!MDLListIconComponent categoriesFor: #helpText!accessing!public! !
!MDLListIconComponent categoriesFor: #helpText:!accessing!public! !
!MDLListIconComponent categoriesFor: #label!accessing!public! !
!MDLListIconComponent categoriesFor: #label:!accessing!public! !
!MDLListIconComponent categoriesFor: #renderContentOn:!public!rendering! !

!MDLListIconComponent class methodsFor!

named: aString helpText: aTranslatedString	^ self new		label: aString;		helpText: aTranslatedString;		yourself! !
!MDLListIconComponent class categoriesFor: #named:helpText:!instance creation!public! !

