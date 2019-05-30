"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLMockRootDialogRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMockRootDialogRenderer guid: (GUID fromString: '{a7c6c267-14c5-4106-af49-647d2f4ae77c}')!
MDLMockRootDialogRenderer comment: ''!
!MDLMockRootDialogRenderer categoriesForClass!Material-Design-Lite-Extensions-Tests-RootDialog! !
!MDLMockRootDialogRenderer methodsFor!

renderEmptyGenericDialogOn: html	"This method need to be called at the end of the root #renderContentOn:"		html mdlDialog		id: self rootDialogId;		openButtonId: self rootDialogOpenId;		closeButtonId: self rootDialogCloseId!

rootDialogCloseId	"I am the id to put on a button to close the root dialog.	This is static information available on class side"	^ self class rootDialogCloseId!

rootDialogId	"I am the id of the root dialog.	This is static information available on class side"	^ self class rootDialogId!

rootDialogOpenId	"I am the Id to put on a button in order to open the root dialog."	^ self class rootDialogOpenId! !
!MDLMockRootDialogRenderer categoriesFor: #renderEmptyGenericDialogOn:!public!rendering! !
!MDLMockRootDialogRenderer categoriesFor: #rootDialogCloseId!accessing!public! !
!MDLMockRootDialogRenderer categoriesFor: #rootDialogId!accessing!public! !
!MDLMockRootDialogRenderer categoriesFor: #rootDialogOpenId!accessing!public! !

!MDLMockRootDialogRenderer class methodsFor!

rootDialogCloseId	"I am the id to put on a button to close the root dialog"	^ MDLDialog rootDialogCloseId!

rootDialogId	"I am the id of the root dialog."	^ MDLDialog rootDialogId!

rootDialogOpenId	"I am the Id to put on a button in order to open the root dialog."	^ MDLDialog rootDialogOpenId! !
!MDLMockRootDialogRenderer class categoriesFor: #rootDialogCloseId!accessing!public! !
!MDLMockRootDialogRenderer class categoriesFor: #rootDialogId!accessing!public! !
!MDLMockRootDialogRenderer class categoriesFor: #rootDialogOpenId!accessing!public! !

