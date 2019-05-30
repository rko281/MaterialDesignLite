"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #MDLPollTests
	instanceVariableNames: 'poll'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPollTests guid: (GUID fromString: '{d2a98d23-2bfc-4879-bf4f-ed8023f82832}')!
MDLPollTests comment: ''!
!MDLPollTests categoriesForClass!Material-Design-Lite-Widgets-Tests-Poll! !
!MDLPollTests methodsFor!

setUp	super setUp.	poll := MDLPoll new!

testDecreaseNegativeCount	poll negativeCount: 10.	poll decreaseNegativeCount.	self assert: poll negativeCount equals: 9!

testDecreasePositiveCount	poll positiveCount: 10.	poll decreasePositiveCount.	self assert: poll positiveCount equals: 9!

testIncreaseNegativeCount	poll negativeCount: 10.	poll increaseNegativeCount.	self assert: poll negativeCount equals: 11!

testIncreasePositiveCount	poll positiveCount: 10.	poll increasePositiveCount.	self assert: poll positiveCount equals: 11! !
!MDLPollTests categoriesFor: #setUp!public!running! !
!MDLPollTests categoriesFor: #testDecreaseNegativeCount!public!tests! !
!MDLPollTests categoriesFor: #testDecreasePositiveCount!public!tests! !
!MDLPollTests categoriesFor: #testIncreaseNegativeCount!public!tests! !
!MDLPollTests categoriesFor: #testIncreasePositiveCount!public!tests! !

