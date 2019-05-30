"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLExampleRootDialogUser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExampleRootDialogUser guid: (GUID fromString: '{f6d067a8-14f2-4d70-9a9d-6ccf38c80a20}')!
MDLExampleRootDialogUser comment: 'Description--------------------I am a component to illustrate the use of the root dialog. '!
!MDLExampleRootDialogUser categoriesForClass!Material-Design-Lite-Demo-Utils! !
!MDLExampleRootDialogUser methodsFor!

renderButtonExampleOn: html	html		preformatted: [ html code				class: 'smalltalk';				with:					'html mdlButton	raised;	accentColor;	openDialogWithId: self rootDialogOpenId;	onClickUpdateRootDialogWith: [ :r | self renderDialogOn: r ];	with: ''Open dialog''' ].	html mdlButton		raised;		accentColor;		openDialogWithId: self rootDialogOpenId;		onClickUpdateRootDialogWith: [ :r | self renderDialogOn: r ];		with: 'Open dialog'!

renderChipExampleOn: html	html		preformatted: [ html code				class: 'smalltalk';				with:					'html mdlChip	onClickOpenAndUpdateRootDialogWith: [ :r | self renderDialogOn: r ];	with: [ html mdlChipContact			hexColor: ''009587'';			with: ''C''.		html mdlChipText: ''Click me'' ]' ].	html mdlChip		onClickOpenAndUpdateRootDialogWith: [ :r | self renderDialogOn: r ];		with: [ html mdlChipContact				hexColor: '009587';				with: 'C'.			html mdlChipText: 'Click me' ]!

renderContentOn: html	html		mdlGrid: [ html mdlCell: [ self renderButtonExampleOn: html ] size: 6.			html mdlCell: [ self renderChipExampleOn: html ] size: 6 ]!

renderDialogOn: html	html mdlDialogTitle: 'Good job !!'.	html mdlDialogContent: [ html paragraph: 'You have not managed to click the button' ].	html		mdlDialogActions: [ html mdlButton: 'Agree'.			html mdlButton				id: self rootDialogCloseId;				with: 'Disagree' ]!

rootDialogCloseId	"I am the id to put on a button to close the root dialog.	This is static information available on class side"	^ self class rootDialogCloseId!

rootDialogId	"I am the id of the root dialog.	This is static information available on class side"	^ self class rootDialogId!

rootDialogOpenId	"I am the Id to put on a button in order to open the root dialog."	^ self class rootDialogOpenId! !
!MDLExampleRootDialogUser categoriesFor: #renderButtonExampleOn:!public!rendering! !
!MDLExampleRootDialogUser categoriesFor: #renderChipExampleOn:!public!rendering! !
!MDLExampleRootDialogUser categoriesFor: #renderContentOn:!public!rendering! !
!MDLExampleRootDialogUser categoriesFor: #renderDialogOn:!public!rendering! !
!MDLExampleRootDialogUser categoriesFor: #rootDialogCloseId!accessing!public! !
!MDLExampleRootDialogUser categoriesFor: #rootDialogId!accessing!public! !
!MDLExampleRootDialogUser categoriesFor: #rootDialogOpenId!accessing!public! !

!MDLExampleRootDialogUser class methodsFor!

rootDialogCloseId	"I am the id to put on a button to close the root dialog"	^ MDLDialog rootDialogCloseId!

rootDialogId	"I am the id of the root dialog."	^ MDLDialog rootDialogId!

rootDialogOpenId	"I am the Id to put on a button in order to open the root dialog."	^ MDLDialog rootDialogOpenId! !
!MDLExampleRootDialogUser class categoriesFor: #rootDialogCloseId!accessing!public! !
!MDLExampleRootDialogUser class categoriesFor: #rootDialogId!accessing!public! !
!MDLExampleRootDialogUser class categoriesFor: #rootDialogOpenId!accessing!public! !

