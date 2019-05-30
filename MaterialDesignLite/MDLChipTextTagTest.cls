"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLChipTextTagTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLChipTextTagTest guid: (GUID fromString: '{db2470fb-55fe-4b7e-8e39-016afb6f214c}')!
MDLChipTextTagTest comment: ''!
!MDLChipTextTagTest categoriesForClass!Material-Design-Lite-Components-Tests-Chips! !
!MDLChipTextTagTest methodsFor!

testBareBrush	self assert: [ :html | html mdlChipText ] generates: '<span class="mdl-chip__text"></span>'!

testWithContent	self assert: [ :html | html mdlChipText: 'Example' ] generates: '<span class="mdl-chip__text">Example</span>'! !
!MDLChipTextTagTest categoriesFor: #testBareBrush!public!tests! !
!MDLChipTextTagTest categoriesFor: #testWithContent!public!tests! !

