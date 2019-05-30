"Filed out from Dolphin Smalltalk 7"!

MDLAbstractSeasideTestCase subclass: #MDLFoldButtonTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLFoldButtonTest guid: (GUID fromString: '{9f1c127e-f575-45e5-9bce-2800d39c65c5}')!
MDLFoldButtonTest comment: ''!
!MDLFoldButtonTest categoriesForClass!Material-Design-Lite-Extensions-Tests-Panels! !
!MDLFoldButtonTest methodsFor!

testFold	self		assert: [ :html | 			html				render:					(MDLFoldButton new						divId: '#test';						fold;						yourself) ]		generatedIncludes: 'document.getElementById(''test'').style.width=''0'';'!

testOnCompleteScript	self		assert: [ :html | 			html				render:					(MDLFoldButton new						divId: '#test';						onCompleteScript: 'console.log(''test'')';						yourself) ]		generatedIncludes: 'console.log(''test'')'.	self		assert:			((MDLFoldButton new				divId: '#test';				onCompleteScript: 'console.log(''test'')';				yourself) showAndHide contents includesSubstring: 'console.log(''test'')')!

testUnfold	self		deny: [ :html | 			html				render:					(MDLFoldButton new						divId: '#test';						unfold;						yourself) ]		generatedIncludes: 'document.getElementById(''test'').style.width=''0'';'! !
!MDLFoldButtonTest categoriesFor: #testFold!public!tests! !
!MDLFoldButtonTest categoriesFor: #testOnCompleteScript!public!tests! !
!MDLFoldButtonTest categoriesFor: #testUnfold!public!tests! !

