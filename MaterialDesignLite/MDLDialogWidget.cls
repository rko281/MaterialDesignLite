"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLDialogWidget
	instanceVariableNames: 'title content actions buttonName closeButtonName buttonBrush dialogBrush'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDialogWidget guid: (GUID fromString: '{45464c73-0b4c-4e5c-9ee3-361e5897296f}')!
MDLDialogWidget comment: 'I represent a dialog widget'!
!MDLDialogWidget categoriesForClass!Material-Design-Lite-Widgets-Dialog! !
!MDLDialogWidget methodsFor!

actions	^ actions!

actions: anObject	actions := anObject!

buttonBrush	^ buttonBrush!

buttonBrush: anObject	buttonBrush := anObject!

buttonName	^ buttonName!

buttonName: anObject	buttonName := anObject!

closeButtonName	^ closeButtonName!

closeButtonName: anObject	closeButtonName := anObject!

content	^ content!

content: anObject	content := anObject!

dialogBrush	^ dialogBrush!

dialogBrush: anObject	dialogBrush := anObject!

initialize	super initialize.	closeButtonName := 'Close'.	buttonBrush := MDLButton new.	dialogBrush := MDLDialog new!

renderContentOn: html	| closeButtonId |	self ensureId: html.	(html brush: self buttonBrush)		id: self id;		bePush;		raised;		rippleEffect;		with: self buttonName.	(html brush: self dialogBrush)		id: html nextId;		openButtonId: self id;		closeButtonId: (closeButtonId := html nextId);		with: [ self title ifNotNil: [ :t | html mdlDialogTitle: t ].			html mdlDialogContent: self content.			html				mdlDialogActions: [ self actions ifNotNil: [ :acts | html render: acts ].					html mdlButton						id: closeButtonId;						bePush;						with: self closeButtonName ] ]!

title	^ title!

title: anObject	title := anObject! !
!MDLDialogWidget categoriesFor: #actions!accessing!public! !
!MDLDialogWidget categoriesFor: #actions:!accessing!public! !
!MDLDialogWidget categoriesFor: #buttonBrush!accessing!public! !
!MDLDialogWidget categoriesFor: #buttonBrush:!accessing!public! !
!MDLDialogWidget categoriesFor: #buttonName!accessing!public! !
!MDLDialogWidget categoriesFor: #buttonName:!accessing!public! !
!MDLDialogWidget categoriesFor: #closeButtonName!accessing!public! !
!MDLDialogWidget categoriesFor: #closeButtonName:!accessing!public! !
!MDLDialogWidget categoriesFor: #content!accessing!public! !
!MDLDialogWidget categoriesFor: #content:!accessing!public! !
!MDLDialogWidget categoriesFor: #dialogBrush!accessing!public! !
!MDLDialogWidget categoriesFor: #dialogBrush:!accessing!public! !
!MDLDialogWidget categoriesFor: #initialize!initialization!public! !
!MDLDialogWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLDialogWidget categoriesFor: #title!accessing!public! !
!MDLDialogWidget categoriesFor: #title:!accessing!public! !

!MDLDialogWidget class methodsFor!

content: aBlock actions: aSecondBlock buttonName: aString	^ (self content: aBlock buttonName: aString)		actions: aSecondBlock;		yourself!

content: aBlock actions: aSecondBlock buttonName: aString closeButtonName: aSecondString	^ (self new content: aBlock actions: aSecondBlock buttonName: aString) 		closeButtonName: aSecondString;		yourself!

content: aBlock actions: aSecondBlock closeButtonName: aString 	^ (self content: aBlock buttonName: aString)		closeButtonName: aSecondBlock;		yourself!

content: aBlock buttonName: aString	^ self new		content: aBlock;		buttonName: aString;		yourself!

title: aString content: aBlock actions: aSecondBlock buttonName: aSecondString	^ (self content: aBlock actions: aSecondBlock buttonName: aSecondString)		title: aString;		yourself!

title: aString content: aBlock actions: aSecondBlock buttonName: aSecondString closeButtonName: aThirdString	^ (self title: aString content: aBlock actions: aSecondBlock buttonName: aSecondString)		closeButtonName: aThirdString;		yourself!

title: aString content: aBlock buttonName: aSecondString	^ (self content: aBlock buttonName: aSecondString)		title: aString;		yourself!

title: aString content: aBlock buttonName: aSecondString closeButtonName: aThirdString	^ (self title: aString content: aBlock buttonName: aSecondString)		closeButtonName: aThirdString;		yourself! !
!MDLDialogWidget class categoriesFor: #content:actions:buttonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #content:actions:buttonName:closeButtonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #content:actions:closeButtonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #content:buttonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #title:content:actions:buttonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #title:content:actions:buttonName:closeButtonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #title:content:buttonName:!instance creation!public! !
!MDLDialogWidget class categoriesFor: #title:content:buttonName:closeButtonName:!instance creation!public! !

