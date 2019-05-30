"Filed out from Dolphin Smalltalk 7"!

MDLTextFieldWidget subclass: #MDLTextAreaWidget
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextAreaWidget guid: (GUID fromString: '{e71783da-0a89-4232-bfeb-455084549751}')!
MDLTextAreaWidget comment: 'I represent a text area with material design style.You can use all methods of MDLTextFieldWidget on me.'!
!MDLTextAreaWidget categoriesForClass!Material-Design-Lite-Widgets-Form! !
!MDLTextAreaWidget methodsFor!

columns: aNumber	self propertiesAt: #columns: put: (Array with: aNumber)!

initialize	super initialize.	brush := MDLTextArea new!

rows: aNumber	self propertiesAt: #rows: put: (Array with: aNumber)! !
!MDLTextAreaWidget categoriesFor: #columns:!options!public! !
!MDLTextAreaWidget categoriesFor: #initialize!initialization!public! !
!MDLTextAreaWidget categoriesFor: #rows:!options!public! !

