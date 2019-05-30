"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLExampleRootDialogRoot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExampleRootDialogRoot guid: (GUID fromString: '{1b710df1-fd52-4696-9c58-598c64164d8e}')!
MDLExampleRootDialogRoot comment: 'Description--------------------I am a component to illustrate the use of the root dialog. '!
!MDLExampleRootDialogRoot categoriesForClass!Material-Design-Lite-Demo-Utils! !
!MDLExampleRootDialogRoot methodsFor!

renderContentOn: html	html div		style: 'width: 100%; height: 100%; background-color: #ECEFF1;';		with: MDLExampleRootDialogUser new.	self renderEmptyGenericDialogOn: html!

renderEmptyGenericDialogOn: html	"This method need to be called at the end of the root #renderContentOn:"		html mdlDialog		id: self rootDialogId;		openButtonId: self rootDialogOpenId;		closeButtonId: self rootDialogCloseId!

rootDialogCloseId	"I am the id to put on a button to close the root dialog.	This is static information available on class side"	^ self class rootDialogCloseId!

rootDialogId	"I am the id of the root dialog.	This is static information available on class side"	^ self class rootDialogId!

rootDialogOpenId	"I am the Id to put on a button in order to open the root dialog."	^ self class rootDialogOpenId! !
!MDLExampleRootDialogRoot categoriesFor: #renderContentOn:!public!rendering! !
!MDLExampleRootDialogRoot categoriesFor: #renderEmptyGenericDialogOn:!public!rendering! !
!MDLExampleRootDialogRoot categoriesFor: #rootDialogCloseId!accessing!public! !
!MDLExampleRootDialogRoot categoriesFor: #rootDialogId!accessing!public! !
!MDLExampleRootDialogRoot categoriesFor: #rootDialogOpenId!accessing!public! !

!MDLExampleRootDialogRoot class methodsFor!

rootDialogCloseId	"I am the id to put on a button to close the root dialog"	^ MDLDialog rootDialogCloseId!

rootDialogId	"I am the id of the root dialog."	^ MDLDialog rootDialogId!

rootDialogOpenId	"I am the Id to put on a button in order to open the root dialog."	^ MDLDialog rootDialogOpenId! !
!MDLExampleRootDialogRoot class categoriesFor: #rootDialogCloseId!accessing!public! !
!MDLExampleRootDialogRoot class categoriesFor: #rootDialogId!accessing!public! !
!MDLExampleRootDialogRoot class categoriesFor: #rootDialogOpenId!accessing!public! !

