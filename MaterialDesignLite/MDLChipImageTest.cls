"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLChipImageTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLChipImageTest guid: (GUID fromString: '{f68af4f2-46ea-407b-acd8-5e6112fc6df1}')!
MDLChipImageTest comment: ''!
!MDLChipImageTest categoriesForClass!Material-Design-Lite-Components-Tests-Chips! !
!MDLChipImageTest methodsFor!

testAltText	self assert: [ :html | html mdlChipImage altText: 'A message' ] generatedIncludes: '<img alt="A message" class="mdl-chip__contact" id="id1"/>'!

testBareBrush	self assert: [ :html | html mdlChipImage ] generatedIncludes: '<img alt="" class="mdl-chip__contact" id="id1"/>'!

testUrl	self assert: [ :html | html mdlChipImage url: 'https://test.com/image.png' ] generatedIncludes: '<img alt="" src="https://test.com/image.png" class="mdl-chip__contact" id="id1"/>'!

testWithContent	"Should not implement it."! !
!MDLChipImageTest categoriesFor: #testAltText!public!tests! !
!MDLChipImageTest categoriesFor: #testBareBrush!public!tests! !
!MDLChipImageTest categoriesFor: #testUrl!public!tests! !
!MDLChipImageTest categoriesFor: #testWithContent!public!tests! !

