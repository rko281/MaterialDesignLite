"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLCardTitleTextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardTitleTextTest guid: (GUID fromString: '{a6a12308-f1c3-4171-bb2a-2fca07279bca}')!
MDLCardTitleTextTest comment: 'A MDLCardTitleTextTest is a test class for testing the behavior of MDLCardTitleText'!
!MDLCardTitleTextTest categoriesForClass!Material-Design-Lite-Components-Tests-Card! !
!MDLCardTitleTextTest methodsFor!

testBareBrush	self assert: [ :html | html mdlCardTitleText ] generates: '<h1 class="mdl-card__title-text"></h1>'!

testLevel1	self		assert: [ :html | 			html mdlCardTitleText				level1;				with: 'title' ]		generates: '<h1 class="mdl-card__title-text">title</h1>'!

testLevel2	self		assert: [ :html | 			html mdlCardTitleText				level2;				with: 'title' ]		generates: '<h2 class="mdl-card__title-text">title</h2>'!

testLevel3	self		assert: [ :html | 			html mdlCardTitleText				level3;				with: 'title' ]		generates: '<h3 class="mdl-card__title-text">title</h3>'!

testLevel4	self		assert: [ :html | 			html mdlCardTitleText				level4;				with: 'title' ]		generates: '<h4 class="mdl-card__title-text">title</h4>'!

testLevel5	self		assert: [ :html | 			html mdlCardTitleText				level5;				with: 'title' ]		generates: '<h5 class="mdl-card__title-text">title</h5>'!

testLevel6	self		assert: [ :html | 			html mdlCardTitleText				level6;				with: 'title' ]		generates: '<h6 class="mdl-card__title-text">title</h6>'!

testWithContent	self assert: [ :html | html mdlCardTitleText: 'title' ] generates: '<h1 class="mdl-card__title-text">title</h1>'! !
!MDLCardTitleTextTest categoriesFor: #testBareBrush!public!tests! !
!MDLCardTitleTextTest categoriesFor: #testLevel1!public!tests! !
!MDLCardTitleTextTest categoriesFor: #testLevel2!public!tests! !
!MDLCardTitleTextTest categoriesFor: #testLevel3!public!tests! !
!MDLCardTitleTextTest categoriesFor: #testLevel4!public!tests! !
!MDLCardTitleTextTest categoriesFor: #testLevel5!public!tests! !
!MDLCardTitleTextTest categoriesFor: #testLevel6!public!tests! !
!MDLCardTitleTextTest categoriesFor: #testWithContent!public!tests! !

