"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLTextFieldExpandableHolderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextFieldExpandableHolderTest guid: (GUID fromString: '{a11dca2c-0a59-4a4c-a6b8-6e3c0f1fe90b}')!
MDLTextFieldExpandableHolderTest comment: ''!
!MDLTextFieldExpandableHolderTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLTextFieldExpandableHolderTest methodsFor!

testBareBrush	self assert: [ :html | html mdlTextFieldExpandableHolder ] generates: '<div class="mdl-textfield__expandable-holder"></div>'!

testWithContent	self assert: [ :html | html mdlTextFieldExpandableHolder: 'test' ] generates: '<div class="mdl-textfield__expandable-holder">test</div>'! !
!MDLTextFieldExpandableHolderTest categoriesFor: #testBareBrush!public!tests! !
!MDLTextFieldExpandableHolderTest categoriesFor: #testWithContent!public!tests! !

