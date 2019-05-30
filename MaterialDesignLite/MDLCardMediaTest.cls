"Filed out from Dolphin Smalltalk 7"!

MDLCardInnerDivTest subclass: #MDLCardMediaTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardMediaTest guid: (GUID fromString: '{43ab7c00-91db-49e9-b95d-17e4b0e6db32}')!
MDLCardMediaTest comment: ''!
!MDLCardMediaTest categoriesForClass!Material-Design-Lite-Components-Tests-Card! !
!MDLCardMediaTest methodsFor!

testBareBrush	self assert: [ :html | html mdlCardMedia ] generates: '<div class="mdl-card__media"></div>'!

testBorder	self assert: [ :html | html mdlCardMedia border ] generates: '<div class="mdl-card__media mdl-card--border"></div>'!

testExpand	self assert: [ :html | html mdlCardMedia expand ] generates: '<div class="mdl-card__media mdl-card--expand"></div>'!

testWithContent	self assert: [ :html | html mdlCardMedia: 'test' ] generates: '<div class="mdl-card__media">test</div>'! !
!MDLCardMediaTest categoriesFor: #testBareBrush!public!tests! !
!MDLCardMediaTest categoriesFor: #testBorder!public!tests! !
!MDLCardMediaTest categoriesFor: #testExpand!public!tests! !
!MDLCardMediaTest categoriesFor: #testWithContent!public!tests! !

