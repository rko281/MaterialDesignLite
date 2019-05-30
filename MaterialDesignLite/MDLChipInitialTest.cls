"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLChipInitialTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLChipInitialTest guid: (GUID fromString: '{6998e896-d720-479c-87d3-bae6c81602b0}')!
MDLChipInitialTest comment: ''!
!MDLChipInitialTest categoriesForClass!Material-Design-Lite-Components-Tests-Chips! !
!MDLChipInitialTest methodsFor!

testBareBrush	self assert: [ :html | html mdlChipContact ] generatedIncludes: '<span class="mdl-color-text--white mdl-chip__contact" id="id1"></span>'!

testColor	"Teal in hex is currently #009587"		self assert: [ :html | html mdlChipContact color: MDLColor teal ] generatedIncludes: '<span class="mdl-color-text--white mdl-chip__contact" style="background-color: #009587" id="id1"></span>'!

testHexColor	self assert: [ :html | html mdlChipContact hexColor: '009587' ] generatedIncludes: '<span class="mdl-color-text--white mdl-chip__contact" style="background-color: #009587" id="id1"></span>'!

testWithContent	self assert: [ :html | html mdlChipContact: 'Test' ] generatedIncludes: '<span class="mdl-color-text--white mdl-chip__contact" id="id1">Test</span>'! !
!MDLChipInitialTest categoriesFor: #testBareBrush!public!tests! !
!MDLChipInitialTest categoriesFor: #testColor!public!tests! !
!MDLChipInitialTest categoriesFor: #testHexColor!public!tests! !
!MDLChipInitialTest categoriesFor: #testWithContent!public!tests! !

