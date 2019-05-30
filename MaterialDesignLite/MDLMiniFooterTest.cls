"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLMiniFooterTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMiniFooterTest guid: (GUID fromString: '{f106f4c8-bbfa-4816-80f7-130a1bad098f}')!
MDLMiniFooterTest comment: ''!
!MDLMiniFooterTest categoriesForClass!Material-Design-Lite-Components-Tests-Footer! !
!MDLMiniFooterTest methodsFor!

testBareBrush	self assert: [ :html | html mdlMiniFooter ] generates: '<footer class="mdl-mini-footer"></footer>'!

testWithContent	self assert: [ :html | html mdlMiniFooter: 'Test' ] generates: '<footer class="mdl-mini-footer">Test</footer>'! !
!MDLMiniFooterTest categoriesFor: #testBareBrush!public!tests! !
!MDLMiniFooterTest categoriesFor: #testWithContent!public!tests! !

