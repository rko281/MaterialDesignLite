"Filed out from Dolphin Smalltalk 7"!

MDLCardInnerDivTest subclass: #MDLCardTextContainerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardTextContainerTest guid: (GUID fromString: '{a78634df-2756-4196-8b10-9dffa7bc56cb}')!
MDLCardTextContainerTest comment: ''!
!MDLCardTextContainerTest categoriesForClass!Material-Design-Lite-Components-Tests-Card! !
!MDLCardTextContainerTest methodsFor!

testBareBrush	self assert: [ :html | html mdlCardTextContainer ] generates: '<div class="mdl-card__supporting-text"></div>'!

testBorder	self assert: [ :html | html mdlCardTextContainer border ] generates: '<div class="mdl-card__supporting-text mdl-card--border"></div>'!

testExpand	self assert: [ :html | html mdlCardTextContainer expand ] generates: '<div class="mdl-card__supporting-text mdl-card--expand"></div>'!

testWithContent	self assert: [ :html | html mdlCardTextContainer: 'test' ] generates: '<div class="mdl-card__supporting-text">test</div>'! !
!MDLCardTextContainerTest categoriesFor: #testBareBrush!public!tests! !
!MDLCardTextContainerTest categoriesFor: #testBorder!public!tests! !
!MDLCardTextContainerTest categoriesFor: #testExpand!public!tests! !
!MDLCardTextContainerTest categoriesFor: #testWithContent!public!tests! !

