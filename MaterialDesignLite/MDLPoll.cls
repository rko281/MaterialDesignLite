"Filed out from Dolphin Smalltalk 7"!

GRObject subclass: #MDLPoll
	instanceVariableNames: 'positiveCount negativeCount'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPoll guid: (GUID fromString: '{a699b7cd-798e-43d9-8791-3d6368bd6bc8}')!
MDLPoll comment: 'I am the model for MDLPollWidget.I just store the number of positive and negative count.'!
!MDLPoll categoriesForClass!Material-Design-Lite-Widgets-Poll! !
!MDLPoll methodsFor!

decreaseNegativeCount	negativeCount := negativeCount - 1!

decreasePositiveCount	positiveCount := positiveCount - 1!

increaseNegativeCount	negativeCount := negativeCount + 1!

increasePositiveCount	positiveCount := positiveCount + 1!

initialize	super initialize.	positiveCount := 0.	negativeCount := 0!

negativeCount	^ negativeCount!

negativeCount: anObject	negativeCount := anObject!

positiveCount	^ positiveCount!

positiveCount: anObject	positiveCount := anObject! !
!MDLPoll categoriesFor: #decreaseNegativeCount!accessing!public! !
!MDLPoll categoriesFor: #decreasePositiveCount!accessing!public! !
!MDLPoll categoriesFor: #increaseNegativeCount!accessing!public! !
!MDLPoll categoriesFor: #increasePositiveCount!accessing!public! !
!MDLPoll categoriesFor: #initialize!initialization!public! !
!MDLPoll categoriesFor: #negativeCount!accessing!public! !
!MDLPoll categoriesFor: #negativeCount:!accessing!public! !
!MDLPoll categoriesFor: #positiveCount!accessing!public! !
!MDLPoll categoriesFor: #positiveCount:!accessing!public! !

