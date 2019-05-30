"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLDivTagTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDivTagTest guid: (GUID fromString: '{e47a1ab1-8e7c-4999-9ffa-2b00c8943aa7}')!
MDLDivTagTest comment: ''!
!MDLDivTagTest categoriesForClass!Material-Design-Lite-Components-Tests-Core! !
!MDLDivTagTest methodsFor!

testBareBrush	self assert: [ :html | html mdlDiv ] generates: '<div></div>'!

testWithContent	self assert: [ :html | html mdlDiv: 'Test' ] generates: '<div>Test</div>'! !
!MDLDivTagTest categoriesFor: #testBareBrush!public!tests! !
!MDLDivTagTest categoriesFor: #testWithContent!public!tests! !

