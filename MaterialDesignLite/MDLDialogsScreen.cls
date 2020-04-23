"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLDialogsScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDialogsScreen guid: (GUID fromString: '{6f6c40a8-19c9-45cc-b006-9ed830345ab2}')!
MDLDialogsScreen comment: 'Modal windows for dedicated user input.'!
!MDLDialogsScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLDialogsScreen methodsFor!

complexDialog	^ OrderedDictionary new		add: 'Dialog with buttons' -> #renderComplexDialogOn:;		yourself!

renderComplexDialogOn: html	| idButtonOpen idButtonClose |	html mdlButton		openDialogWithId: (idButtonOpen := html nextId); "This will not generate an id on the button and allow you to have multiple buttons to open the same dialog."		bePush;		raised;		rippleEffect;		with: 'Show dialog'.			html mdlDialog		openButtonId: idButtonOpen;		closeButtonId: (idButtonClose := html nextId);		with: [ 			html mdlDialogTitle: 'Good job !!'.			html mdlDialogContent: [ html paragraph: 'You have not managed to click the button' ].			html				mdlDialogActions: [ html mdlButton: 'Agree'.					html mdlButton						id: idButtonClose;						bePush;						with: 'Disagree' ] ]!

renderScreenContentOn: html	self		render: self simpleDialog on: html;		render: self complexDialog on: html!

renderSimpleDialogOn: html	html mdlButton		id: html nextId;		bePush;		raised;		rippleEffect;		with: 'Show second dialog'.			html mdlDialog		openButtonId: html lastId;		with: [ 			html mdlDialogTitle: 'Good job !!'.			html mdlDialogContent: [ html paragraph: 'You managed to open the dialog' ] ]!

simpleDialog	^ OrderedDictionary new		add: 'Simple Dialog' -> #renderSimpleDialogOn:;		yourself! !
!MDLDialogsScreen categoriesFor: #complexDialog!public!sections! !
!MDLDialogsScreen categoriesFor: #renderComplexDialogOn:!demos!public! !
!MDLDialogsScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLDialogsScreen categoriesFor: #renderSimpleDialogOn:!demos!public! !
!MDLDialogsScreen categoriesFor: #simpleDialog!public!sections! !

!MDLDialogsScreen class methodsFor!

icon		^ 'compdialogPng'!

title	^ 'Dialog'! !
!MDLDialogsScreen class categoriesFor: #icon!accessing!public! !
!MDLDialogsScreen class categoriesFor: #title!accessing!public! !

