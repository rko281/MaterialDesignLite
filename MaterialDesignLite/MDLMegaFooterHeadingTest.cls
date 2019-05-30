"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLMegaFooterHeadingTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterHeadingTest guid: (GUID fromString: '{6e4c5420-1e02-4427-93db-3ae82817f338}')!
MDLMegaFooterHeadingTest comment: ''!
!MDLMegaFooterHeadingTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMegaFooterHeadingTest methodsFor!

testBareBrush	self assert: [ :html | html mdlFooterHeading ] generates: '<h1 class="mdl-mega-footer__heading"></h1>'!

testLevel1	self		assert: [ :html | 			html mdlFooterHeading				level1;				with: 'title' ]		generates: '<h1 class="mdl-mega-footer__heading">title</h1>'!

testLevel2	self		assert: [ :html | 			html mdlFooterHeading				level2;				with: 'title' ]		generates: '<h2 class="mdl-mega-footer__heading">title</h2>'!

testLevel3	self		assert: [ :html | 			html mdlFooterHeading				level3;				with: 'title' ]		generates: '<h3 class="mdl-mega-footer__heading">title</h3>'!

testLevel4	self		assert: [ :html | 			html mdlFooterHeading				level4;				with: 'title' ]		generates: '<h4 class="mdl-mega-footer__heading">title</h4>'!

testLevel5	self		assert: [ :html | 			html mdlFooterHeading				level5;				with: 'title' ]		generates: '<h5 class="mdl-mega-footer__heading">title</h5>'!

testLevel6	self		assert: [ :html | 			html mdlFooterHeading				level6;				with: 'title' ]		generates: '<h6 class="mdl-mega-footer__heading">title</h6>'!

testWithContent	self assert: [ :html | html mdlFooterHeading: 'title' ] generates: '<h1 class="mdl-mega-footer__heading">title</h1>'! !
!MDLMegaFooterHeadingTest categoriesFor: #testBareBrush!public!tests! !
!MDLMegaFooterHeadingTest categoriesFor: #testLevel1!public!tests! !
!MDLMegaFooterHeadingTest categoriesFor: #testLevel2!public!tests! !
!MDLMegaFooterHeadingTest categoriesFor: #testLevel3!public!tests! !
!MDLMegaFooterHeadingTest categoriesFor: #testLevel4!public!tests! !
!MDLMegaFooterHeadingTest categoriesFor: #testLevel5!public!tests! !
!MDLMegaFooterHeadingTest categoriesFor: #testLevel6!public!tests! !
!MDLMegaFooterHeadingTest categoriesFor: #testWithContent!public!tests! !

