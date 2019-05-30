"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLGridTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLGridTest guid: (GUID fromString: '{456325a6-177c-4c43-ba98-b9a9269eaaf1}')!
MDLGridTest comment: ''!
!MDLGridTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLGridTest methodsFor!

testBareBrush	self assert: [ :html | html mdlGrid ] generates: '<div class="mdl-grid"></div>'!

testNoSpacing	self		assert: [ :html | 			html mdlGrid				noSpacing;				with: 'test' ]		generates: '<div class="mdl-grid mdl-grid--no-spacing">test</div>'!

testWithContent	self assert: [ :html | html mdlGrid: 'test' ] generates: '<div class="mdl-grid">test</div>'! !
!MDLGridTest categoriesFor: #testBareBrush!public!tests! !
!MDLGridTest categoriesFor: #testNoSpacing!public!tests! !
!MDLGridTest categoriesFor: #testWithContent!public!tests! !

