"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLIconBadgeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLIconBadgeTest guid: (GUID fromString: '{d3116f2b-d588-4395-8012-dbd9b593589a}')!
MDLIconBadgeTest comment: ''!
!MDLIconBadgeTest categoriesForClass!Material-Design-Lite-Components-Tests-Badge! !
!MDLIconBadgeTest methodsFor!

testBareBrush	self assert: [ :html | html mdlIconBadge ] generates: '<div class="mdl-badge material-icons"></div>'!

testComplexe	self		assert: [ :html | 			html mdlIconBadge				overlap;				noBackground;				dataBadge: 3;				with: 'account_box' ]		generates: '<div class="mdl-badge material-icons mdl-badge--overlap mdl-badge--no-background" data-badge="3">account_box</div>'!

testDataBadge	self		assert: [ :html | 			html mdlIconBadge				dataBadge: '1';				with: 'account_box' ]		generates: '<div class="mdl-badge material-icons" data-badge="1">account_box</div>'!

testDataBadgeWithNumber	self		assert: [ :html | 			html mdlIconBadge				dataBadge: 1;				with: 'account_box' ]		generates: '<div class="mdl-badge material-icons" data-badge="1">account_box</div>'!

testNoBackground	self		assert: [ :html | 			html mdlIconBadge				noBackground;				with: 'account_box' ]		generates: '<div class="mdl-badge material-icons mdl-badge--no-background">account_box</div>'!

testOverlap	self		assert: [ :html | 			html mdlIconBadge				overlap;				with: 'account_box' ]		generates: '<div class="mdl-badge material-icons mdl-badge--overlap">account_box</div>'!

testWithContent	self assert: [ :html | html mdlIconBadge: 'account_box' ] generates: '<div class="mdl-badge material-icons">account_box</div>'! !
!MDLIconBadgeTest categoriesFor: #testBareBrush!public!tests! !
!MDLIconBadgeTest categoriesFor: #testComplexe!public!tests! !
!MDLIconBadgeTest categoriesFor: #testDataBadge!public!tests! !
!MDLIconBadgeTest categoriesFor: #testDataBadgeWithNumber!public!tests! !
!MDLIconBadgeTest categoriesFor: #testNoBackground!public!tests! !
!MDLIconBadgeTest categoriesFor: #testOverlap!public!tests! !
!MDLIconBadgeTest categoriesFor: #testWithContent!public!tests! !

