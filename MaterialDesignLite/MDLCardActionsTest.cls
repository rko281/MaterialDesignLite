"Filed out from Dolphin Smalltalk 7"!

MDLCardInnerDivTest subclass: #MDLCardActionsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardActionsTest guid: (GUID fromString: '{7f6621d9-ba06-4560-8ee6-750c0248e378}')!
MDLCardActionsTest comment: ''!
!MDLCardActionsTest categoriesForClass!Material-Design-Lite-Components-Tests-Card! !
!MDLCardActionsTest methodsFor!

testBareBrush	self assert: [ :html | html mdlCardActions ] generates: '<div class="mdl-card__actions"></div>'!

testBorder	self assert: [ :html | html mdlCardActions border ] generates: '<div class="mdl-card__actions mdl-card--border"></div>'!

testExpand	self assert: [ :html | html mdlCardActions expand ] generates: '<div class="mdl-card__actions mdl-card--expand"></div>'!

testWithContent	self assert: [ :html | html mdlCardActions: 'test' ] generates: '<div class="mdl-card__actions">test</div>'! !
!MDLCardActionsTest categoriesFor: #testBareBrush!public!tests! !
!MDLCardActionsTest categoriesFor: #testBorder!public!tests! !
!MDLCardActionsTest categoriesFor: #testExpand!public!tests! !
!MDLCardActionsTest categoriesFor: #testWithContent!public!tests! !

