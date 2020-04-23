"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLMegaFooterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMegaFooterTest guid: (GUID fromString: '{b280511a-fe43-47c1-8bf5-00292d739783}')!
MDLMegaFooterTest comment: ''!
!MDLMegaFooterTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMegaFooterTest methodsFor!

testBareBrush	self assert: [ :html | html mdlFooter ] generates: '<footer class="mdl-mega-footer"></footer>'!

testWithContent	self assert: [ :html | html mdlFooter: 'Test' ] generates: '<footer class="mdl-mega-footer">Test</footer>'! !
!MDLMegaFooterTest categoriesFor: #testBareBrush!public!tests! !
!MDLMegaFooterTest categoriesFor: #testWithContent!public!tests! !

