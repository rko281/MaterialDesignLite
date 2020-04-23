"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #SGTAbstractBrushTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
SGTAbstractBrushTest guid: (GUID fromString: '{724d3834-a53d-4180-9dd8-94efb2ec7fdc}')!
SGTAbstractBrushTest comment: 'Abstract class to test generated brushes'!
!SGTAbstractBrushTest categoriesForClass!SeasideGenerationTester! !
!SGTAbstractBrushTest methodsFor!

testBareBrush	self subclassResponsibility!

testWithContent	self subclassResponsibility! !
!SGTAbstractBrushTest categoriesFor: #testBareBrush!public!tests! !
!SGTAbstractBrushTest categoriesFor: #testWithContent!public!tests! !

!SGTAbstractBrushTest class methodsFor!

isAbstract	^ self = SGTAbstractBrushTest! !
!SGTAbstractBrushTest class categoriesFor: #isAbstract!public!testing! !

