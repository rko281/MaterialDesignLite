"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLCardSubtitleTextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardSubtitleTextTest guid: (GUID fromString: '{6f96c3fb-8e6a-4236-a2da-e2a1b5681f64}')!
MDLCardSubtitleTextTest comment: ''!
!MDLCardSubtitleTextTest categoriesForClass!Material-Design-Lite-Components-Tests-Card! !
!MDLCardSubtitleTextTest methodsFor!

testBareBrush	self assert: [ :html | html mdlCardSubtitleText ] generates: '<div class="mdl-card__subtitle-text"></div>'!

testWithContent	self assert: [ :html | html mdlCardSubtitleText: 'content' ] generates: '<div class="mdl-card__subtitle-text">content</div>'! !
!MDLCardSubtitleTextTest categoriesFor: #testBareBrush!public!tests! !
!MDLCardSubtitleTextTest categoriesFor: #testWithContent!public!tests! !

