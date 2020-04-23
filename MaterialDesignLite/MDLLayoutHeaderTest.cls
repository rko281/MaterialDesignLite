"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLLayoutHeaderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutHeaderTest guid: (GUID fromString: '{fe3abecc-345b-463c-9619-61c23b895753}')!
MDLLayoutHeaderTest comment: ''!
!MDLLayoutHeaderTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLLayoutHeaderTest methodsFor!

testBareBrush	self assert: [ :html | html mdlLayoutHeader ] generates: '<header class="mdl-layout__header"></header>'!

testScroll	self assert: [ :html | html mdlLayoutHeader scroll ] generates: '<header class="mdl-layout__header mdl-layout__header--scroll"></header>'!

testSeamed	self assert: [ :html | html mdlLayoutHeader seamed ] generates: '<header class="mdl-layout__header mdl-layout__header--seamed"></header>'!

testTransparent	self assert: [ :html | html mdlLayoutHeader transparent ] generates: '<header class="mdl-layout__header mdl-layout__header--transparent"></header>'!

testWaterfall	self assert: [ :html | html mdlLayoutHeader waterfall ] generates: '<header class="mdl-layout__header mdl-layout__header--waterfall"></header>'!

testWaterfallHideTop	self assert: [ :html | html mdlLayoutHeader waterfallHideTop ] generates: '<header class="mdl-layout__header mdl-layout__header--waterfall-hide-top"></header>'!

testWithContent	self assert: [ :html | html mdlLayoutHeader: 'test' ] generates: '<header class="mdl-layout__header">test</header>'! !
!MDLLayoutHeaderTest categoriesFor: #testBareBrush!public!tests! !
!MDLLayoutHeaderTest categoriesFor: #testScroll!public!tests! !
!MDLLayoutHeaderTest categoriesFor: #testSeamed!public!tests! !
!MDLLayoutHeaderTest categoriesFor: #testTransparent!public!tests! !
!MDLLayoutHeaderTest categoriesFor: #testWaterfall!public!tests! !
!MDLLayoutHeaderTest categoriesFor: #testWaterfallHideTop!public!tests! !
!MDLLayoutHeaderTest categoriesFor: #testWithContent!public!tests! !

