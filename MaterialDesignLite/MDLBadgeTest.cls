"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLBadgeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLBadgeTest guid: (GUID fromString: '{9766e3c5-8787-4562-801a-93cda1dd8c1d}')!
MDLBadgeTest comment: ''!
!MDLBadgeTest categoriesForClass!Material-Design-Lite-Components-Tests-Badge! !
!MDLBadgeTest methodsFor!

testBareBrush	self assert: [ :html | html mdlBadge ] generates: '<span class="mdl-badge"></span>'!

testComplexe	self		assert: [ :html | 			html mdlBadge				overlap;				noBackground;				dataBadge: 3;				with: 'Test' ]		generates: '<span class="mdl-badge mdl-badge--overlap mdl-badge--no-background" data-badge="3">Test</span>'!

testDataBadge	self assert: [ :html | html mdlBadge dataBadge: '1' ] generates: '<span class="mdl-badge" data-badge="1"></span>'!

testDataBadgeWithNumber	self assert: [ :html | html mdlBadge dataBadge: 1 ] generates: '<span class="mdl-badge" data-badge="1"></span>'!

testNoBackground	self assert: [ :html | html mdlBadge noBackground ] generates: '<span class="mdl-badge mdl-badge--no-background"></span>'!

testOverlap	self assert: [ :html | html mdlBadge overlap ] generates: '<span class="mdl-badge mdl-badge--overlap"></span>'!

testWithContent	self		assert: [ :html | 			html mdlBadge				dataBadge: '1';				with: 'Test' ]		generates: '<span class="mdl-badge" data-badge="1">Test</span>'! !
!MDLBadgeTest categoriesFor: #testBareBrush!public!tests! !
!MDLBadgeTest categoriesFor: #testComplexe!public!tests! !
!MDLBadgeTest categoriesFor: #testDataBadge!public!tests! !
!MDLBadgeTest categoriesFor: #testDataBadgeWithNumber!public!tests! !
!MDLBadgeTest categoriesFor: #testNoBackground!public!tests! !
!MDLBadgeTest categoriesFor: #testOverlap!public!tests! !
!MDLBadgeTest categoriesFor: #testWithContent!public!tests! !

