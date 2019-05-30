"Filed out from Dolphin Smalltalk 7"!

TestCase subclass: #MDLPollWidgetTests
	instanceVariableNames: 'pollWidget'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPollWidgetTests guid: (GUID fromString: '{56842111-632b-49d1-a5a0-cea1151c7fba}')!
MDLPollWidgetTests comment: ''!
!MDLPollWidgetTests categoriesForClass!Material-Design-Lite-Widgets-Tests-Poll! !
!MDLPollWidgetTests methodsFor!

setUp	super setUp.	pollWidget := MDLPollWidget new!

testAddNegativeVote	self assert: pollWidget model negativeCount equals: 0.	pollWidget addNegativeVote.	self assert: pollWidget model negativeCount equals: 1.!

testAddPositiveVote	self assert: pollWidget model positiveCount equals: 0.	pollWidget addPositiveVote.	self assert: pollWidget model positiveCount equals: 1.! !
!MDLPollWidgetTests categoriesFor: #setUp!public!running! !
!MDLPollWidgetTests categoriesFor: #testAddNegativeVote!public!tests! !
!MDLPollWidgetTests categoriesFor: #testAddPositiveVote!public!tests! !

