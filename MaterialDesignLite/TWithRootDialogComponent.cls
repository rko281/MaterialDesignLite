"Filed out from Dolphin Smalltalk 7"!

Trait subclass: #TWithRootDialogComponent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TWithRootDialogComponent guid: (GUID fromString: '{c0937c0d-07c0-4000-8b18-97cea36c142c}')!
TWithRootDialogComponent comment: 'Description--------------------This Trait is part of the root dialog system. This system help to manage dialogs inside a MDL application. The principle is to have one empty dialog always rendered and to have helpers in HTMLTags to open it and show contents loaded via ajax.This trait need to be used by components wanting to open/close/manage the dialog. '!
!TWithRootDialogComponent categoriesForClass!Unclassified! !
!TWithRootDialogComponent methodsFor!

rootDialogCloseId	"I am the id to put on a button to close the root dialog.	This is static information available on class side"	^ self class rootDialogCloseId!

rootDialogId	"I am the id of the root dialog.	This is static information available on class side"	^ self class rootDialogId!

rootDialogOpenId	"I am the Id to put on a button in order to open the root dialog."	^ self class rootDialogOpenId! !
!TWithRootDialogComponent categoriesFor: #rootDialogCloseId!accessing!public! !
!TWithRootDialogComponent categoriesFor: #rootDialogId!accessing!public! !
!TWithRootDialogComponent categoriesFor: #rootDialogOpenId!accessing!public! !

!TWithRootDialogComponent class methodsFor!

rootDialogCloseId	"I am the id to put on a button to close the root dialog"	^ MDLDialog rootDialogCloseId!

rootDialogId	"I am the id of the root dialog."	^ MDLDialog rootDialogId!

rootDialogOpenId	"I am the Id to put on a button in order to open the root dialog."	^ MDLDialog rootDialogOpenId! !
!TWithRootDialogComponent class categoriesFor: #rootDialogCloseId!accessing!public! !
!TWithRootDialogComponent class categoriesFor: #rootDialogId!accessing!public! !
!TWithRootDialogComponent class categoriesFor: #rootDialogOpenId!accessing!public! !

