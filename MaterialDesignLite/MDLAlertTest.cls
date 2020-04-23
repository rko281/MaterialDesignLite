"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLAlertTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAlertTest guid: (GUID fromString: '{4df1cc79-30ce-49bd-bc1d-5203316f9a70}')!
MDLAlertTest comment: ''!
!MDLAlertTest categoriesForClass!Material-Design-Lite-Extensions-Tests-Alerts! !
!MDLAlertTest methodsFor!

testBareBrush	self assert: [ :html | html mdlAlert ] generates: '<div class="mdl-alert"></div>'!

testBeDanger	self		assert: [ :html | 			html mdlAlert				beDanger;				with: 'Test' ]		generates: '<div class="mdl-alert mdl-alert__danger">Test</div>'!

testBeDefault	self		assert: [ :html | 			html mdlAlert				beDefault;				with: 'Test' ]		generates: '<div class="mdl-alert mdl-alert__default">Test</div>'!

testBeInfo	self		assert: [ :html | 			html mdlAlert				beInfo;				with: 'Test' ]		generates: '<div class="mdl-alert mdl-alert__info">Test</div>'!

testBeSuccess	self		assert: [ :html | 			html mdlAlert				beSuccess;				with: 'Test' ]		generates: '<div class="mdl-alert mdl-alert__success">Test</div>'!

testBeWarning	self		assert: [ :html | 			html mdlAlert				beWarning;				with: 'Test' ]		generates: '<div class="mdl-alert mdl-alert__warning">Test</div>'!

testWithContent	self assert: [ :html | html mdlAlert: 'Test' ] generates: '<div class="mdl-alert">Test</div>'! !
!MDLAlertTest categoriesFor: #testBareBrush!public!tests! !
!MDLAlertTest categoriesFor: #testBeDanger!public!tests! !
!MDLAlertTest categoriesFor: #testBeDefault!public!tests! !
!MDLAlertTest categoriesFor: #testBeInfo!public!tests! !
!MDLAlertTest categoriesFor: #testBeSuccess!public!tests! !
!MDLAlertTest categoriesFor: #testBeWarning!public!tests! !
!MDLAlertTest categoriesFor: #testWithContent!public!tests! !

