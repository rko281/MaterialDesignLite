"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLCellTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCellTest guid: (GUID fromString: '{bf8c5880-b876-4921-b0bc-bdbc93ded850}')!
MDLCellTest comment: ''!
!MDLCellTest categoriesForClass!Material-Design-Lite-Components-Tests-Layouts! !
!MDLCellTest methodsFor!

testBareBrush	self assert: [ :html | html mdlCell ] generates: '<div class="mdl-cell"></div>'!

testBottom	self		assert: [ :html | 			html mdlCell				bottom;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--bottom">Test</div>'!

testDesktopOffset	self		assert: [ :html | 			html mdlCell				desktopOffset: 2;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--2-offset-desktop">Test</div>'!

testDesktopOrder	self		assert: [ :html | 			html mdlCell				desktopOrder: 2;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--order-2-desktop">Test</div>'!

testDesktopSize	self assert: [ :html | html mdlCell: 'Test' desktopSize: 2 ] generates: '<div class="mdl-cell mdl-cell--2-col-desktop">Test</div>'!

testDesktopTabletPhone	self assert: [ :html | html mdlCellDesktop: 4 tablet: 3 phone: 2 with: 'Test' ] generates: '<div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--3-col-tablet mdl-cell--2-col-phone">Test</div>'!

testDesktopTabletPhoneWith	self assert: [ :html | html mdlCellDesktop: 4 tablet: 3 phone: 2 with: 'Test' ] generates: '<div class="mdl-cell mdl-cell--4-col-desktop mdl-cell--3-col-tablet mdl-cell--2-col-phone">Test</div>'!

testHideDesktop	self		assert: [ :html | 			html mdlCell				hideDesktop;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--hide-desktop">Test</div>'!

testHidePhone	self		assert: [ :html | 			html mdlCell				hidePhone;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--hide-phone">Test</div>'!

testHideTablet	self		assert: [ :html | 			html mdlCell				hideTablet;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--hide-tablet">Test</div>'!

testMiddle	self		assert: [ :html | 			html mdlCell				middle;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--middle">Test</div>'!

testOffset	self		assert: [ :html | 			html mdlCell				offset: 2;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--2-offset">Test</div>'!

testOrder	self		assert: [ :html | 			html mdlCell				order: 2;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--order-2">Test</div>'!

testPhoneOffset	self		assert: [ :html | 			html mdlCell				phoneOffset: 2;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--2-offset-phone">Test</div>'!

testPhoneOrder	self		assert: [ :html | 			html mdlCell				phoneOrder: 2;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--order-2-phone">Test</div>'!

testPhoneSize	self assert: [ :html | html mdlCell: 'Test' phoneSize: 2 ] generates: '<div class="mdl-cell mdl-cell--2-col-phone">Test</div>'!

testSize	self assert: [ :html | html mdlCell: 'Test' size: 2 ] generates: '<div class="mdl-cell mdl-cell--2-col">Test</div>'!

testStretch	self		assert: [ :html | 			html mdlCell				stretch;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--stretch">Test</div>'!

testTabletOffset	self		assert: [ :html | 			html mdlCell				tabletOffset: 2;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--2-offset-tablet">Test</div>'!

testTabletOrder	self		assert: [ :html | 			html mdlCell				tabletOrder: 2;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--order-2-tablet">Test</div>'!

testTabletSize	self assert: [ :html | html mdlCell: 'Test' tabletSize: 2 ] generates: '<div class="mdl-cell mdl-cell--2-col-tablet">Test</div>'!

testTop	self		assert: [ :html | 			html mdlCell				top;				with: 'Test' ]		generates: '<div class="mdl-cell mdl-cell--top">Test</div>'!

testWithContent	self assert: [ :html | html mdlCell: 'Test' ] generates: '<div class="mdl-cell">Test</div>'! !
!MDLCellTest categoriesFor: #testBareBrush!public!tests! !
!MDLCellTest categoriesFor: #testBottom!public!tests! !
!MDLCellTest categoriesFor: #testDesktopOffset!public!tests! !
!MDLCellTest categoriesFor: #testDesktopOrder!public!tests! !
!MDLCellTest categoriesFor: #testDesktopSize!public!tests! !
!MDLCellTest categoriesFor: #testDesktopTabletPhone!public!tests! !
!MDLCellTest categoriesFor: #testDesktopTabletPhoneWith!public!tests! !
!MDLCellTest categoriesFor: #testHideDesktop!public!tests! !
!MDLCellTest categoriesFor: #testHidePhone!public!tests! !
!MDLCellTest categoriesFor: #testHideTablet!public!tests! !
!MDLCellTest categoriesFor: #testMiddle!public!tests! !
!MDLCellTest categoriesFor: #testOffset!public!tests! !
!MDLCellTest categoriesFor: #testOrder!public!tests! !
!MDLCellTest categoriesFor: #testPhoneOffset!public!tests! !
!MDLCellTest categoriesFor: #testPhoneOrder!public!tests! !
!MDLCellTest categoriesFor: #testPhoneSize!public!tests! !
!MDLCellTest categoriesFor: #testSize!public!tests! !
!MDLCellTest categoriesFor: #testStretch!public!tests! !
!MDLCellTest categoriesFor: #testTabletOffset!public!tests! !
!MDLCellTest categoriesFor: #testTabletOrder!public!tests! !
!MDLCellTest categoriesFor: #testTabletSize!public!tests! !
!MDLCellTest categoriesFor: #testTop!public!tests! !
!MDLCellTest categoriesFor: #testWithContent!public!tests! !

