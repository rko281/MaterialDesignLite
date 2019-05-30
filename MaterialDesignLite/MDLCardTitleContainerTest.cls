"Filed out from Dolphin Smalltalk 7"!

MDLCardInnerDivTest subclass: #MDLCardTitleContainerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardTitleContainerTest guid: (GUID fromString: '{1522bc2d-47de-46f3-b3bb-d0ca75dae109}')!
MDLCardTitleContainerTest comment: ''!
!MDLCardTitleContainerTest categoriesForClass!Material-Design-Lite-Components-Tests-Card! !
!MDLCardTitleContainerTest methodsFor!

testBareBrush	self		assert: [ :html | html mdlCardTitleContainer ]		generates: '<div class="mdl-card__title"></div>'!

testBorder	self		assert: [ :html | html mdlCardTitleContainer border ]		generates: '<div class="mdl-card__title mdl-card--border"></div>'!

testExpand	self		assert: [ :html | html mdlCardTitleContainer expand ]		generates: '<div class="mdl-card__title mdl-card--expand"></div>'!

testWithContent	self		assert: [ :html | html mdlCardTitleContainer: [ html mdlCardTitleText: 'test' ] ]		generates:			'<div class="mdl-card__title"><h1 class="mdl-card__title-text">test</h1></div>'! !
!MDLCardTitleContainerTest categoriesFor: #testBareBrush!public!tests! !
!MDLCardTitleContainerTest categoriesFor: #testBorder!public!tests! !
!MDLCardTitleContainerTest categoriesFor: #testExpand!public!tests! !
!MDLCardTitleContainerTest categoriesFor: #testWithContent!public!tests! !

