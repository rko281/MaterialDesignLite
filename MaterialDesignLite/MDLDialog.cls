"Filed out from Dolphin Smalltalk 7"!

WATagBrush subclass: #MDLDialog
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDialog guid: (GUID fromString: '{82d7d0cb-e3d6-4292-8534-e42d0b4a210c}')!
MDLDialog comment: 'Description--------------------Modal windows for dedicated user input.Example--------------------	html mdlButton		id: html nextId;		raised;		rippleEffect;		with: ''Show second dialog''.			html mdlDialog		openButtonId: html lastId;		with: [ 			html mdlDialogTitle: ''Good job !!''.			html mdlDialogContent: [ html paragraph: ''You managed to open the dialog'' ] ]'!
!MDLDialog categoriesForClass!Material-Design-Lite-Components-Dialog! !
!MDLDialog methodsFor!

closeButtonId: id   self id ifNil: [ self id: id, '-dialog' ].   self attributeAt: 'data-closebtnid' put: id. !

initialize	super initialize.	self class: 'mdl-dialog'.!

openButtonId: id	self id ifNil: [ self id: id , '-dialog' ].	self attributeAt: 'data-openbtnid' put: id.	self script: ('newDialog("' , self id , '")') js!

tag	^ 'dialog'! !
!MDLDialog categoriesFor: #closeButtonId:!javascript generation!public! !
!MDLDialog categoriesFor: #initialize!initialization!public! !
!MDLDialog categoriesFor: #openButtonId:!javascript generation!public! !
!MDLDialog categoriesFor: #tag!accessing!public! !

