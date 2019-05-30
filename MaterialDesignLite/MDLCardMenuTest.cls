"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLCardMenuTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardMenuTest guid: (GUID fromString: '{e70b3512-d095-4595-8f1d-6ea7198d395e}')!
MDLCardMenuTest comment: ''!
!MDLCardMenuTest categoriesForClass!Material-Design-Lite-Components-Tests-Card! !
!MDLCardMenuTest methodsFor!

testBareBrush	self assert: [ :html | html mdlCardMenu ] generates: '<div class="mdl-card__menu"></div>'!

testWithContent	self assert: [ :html | html mdlCardMenu: 'content' ] generates: '<div class="mdl-card__menu">content</div>'! !
!MDLCardMenuTest categoriesFor: #testBareBrush!public!tests! !
!MDLCardMenuTest categoriesFor: #testWithContent!public!tests! !

