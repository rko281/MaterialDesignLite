"Filed out from Dolphin Smalltalk 7"!

Trait subclass: #TRootDialogRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TRootDialogRenderer guid: (GUID fromString: '{47558814-868e-4d6f-b193-c12717553ba9}')!
TRootDialogRenderer comment: 'Description--------------------This Trait is part of the root dialog system. This system help to manage dialogs inside a MDL application. The principle is to have one empty dialog always rendered and to have helpers in HTMLTags to open it and show contents loaded via ajax.This trait need to be used by the root component of the application.'!
!TRootDialogRenderer categoriesForClass!Unclassified! !
!TRootDialogRenderer methodsFor!

renderEmptyGenericDialogOn: html	"This method need to be called at the end of the root #renderContentOn:"		html mdlDialog		id: self rootDialogId;		openButtonId: self rootDialogOpenId;		closeButtonId: self rootDialogCloseId!

rootDialogCloseId	"I am the id to put on a button to close the root dialog.	This is static information available on class side"	^ self class rootDialogCloseId!

rootDialogId	"I am the id of the root dialog.	This is static information available on class side"	^ self class rootDialogId!

rootDialogOpenId	"I am the Id to put on a button in order to open the root dialog."	^ self class rootDialogOpenId! !
!TRootDialogRenderer categoriesFor: #renderEmptyGenericDialogOn:!public!rendering! !
!TRootDialogRenderer categoriesFor: #rootDialogCloseId!accessing!public! !
!TRootDialogRenderer categoriesFor: #rootDialogId!accessing!public! !
!TRootDialogRenderer categoriesFor: #rootDialogOpenId!accessing!public! !

!TRootDialogRenderer class methodsFor!

rootDialogCloseId	"I am the id to put on a button to close the root dialog"	^ MDLDialog rootDialogCloseId!

rootDialogId	"I am the id of the root dialog."	^ MDLDialog rootDialogId!

rootDialogOpenId	"I am the Id to put on a button in order to open the root dialog."	^ MDLDialog rootDialogOpenId! !
!TRootDialogRenderer class categoriesFor: #rootDialogCloseId!accessing!public! !
!TRootDialogRenderer class categoriesFor: #rootDialogId!accessing!public! !
!TRootDialogRenderer class categoriesFor: #rootDialogOpenId!accessing!public! !

