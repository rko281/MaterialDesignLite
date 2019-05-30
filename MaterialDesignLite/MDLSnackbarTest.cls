"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLSnackbarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSnackbarTest guid: (GUID fromString: '{7c3b5f5c-c858-46f9-9c6d-a8569f2b8070}')!
MDLSnackbarTest comment: ''!
!MDLSnackbarTest categoriesForClass!Material-Design-Lite-Components-Tests-Snackbar! !
!MDLSnackbarTest methodsFor!

testAction	self		assert: [ :html | 			html				mdlSnackbarButtonFor:					(html mdlSnackbar						action: 'console.log(''test'')';						yourself) ]		generatedIncludes: 'function(event){console.log(''test'')};'!

testActionText	self		assert: [ :html | 			html				mdlSnackbarButtonFor:					(html mdlSnackbar						action: 'console.log("test")';						actionText: 'Button name';						yourself) ]		generatedIncludes: 'Button name'!

testActionTextNotDisplayedIfNoAction	"If there is no action, we should not have a the action name in the result."		self		deny: [ :html | 			html				mdlSnackbarButtonFor:					(html mdlSnackbar						actionText: 'Button name';						yourself) ]		generatedIncludes: 'Button name'!

testBareBrush	self assert: [ :html | html mdlSnackbar ] generates: '<div class="mdl-js-snackbar mdl-snackbar" id="id1"><div class="mdl-snackbar__text"></div><button class="mdl-snackbar__action" type="submit"></button></div>'!

testMessage	self		assert: [ :html | 			html				mdlSnackbarButtonFor:					(html mdlSnackbar						message: 'Message for the user';						yourself) ]		generatedIncludes: 'Message for the user'!

testSnackbarButtonFor	self		assert: [ :html | html mdlSnackbarButtonFor: html mdlSnackbar ]		generatedIncludesAll:			#('<div class="mdl-js-snackbar mdl-snackbar" id="id1"><div class="mdl-snackbar__text"></div><button class="mdl-snackbar__action" type="submit"></button></div>' '<button class="mdl-button mdl-js-button"' 'snackbarContainer.MaterialSnackbar.showSnackbar(data)' '</button>')!

testTimeout	self		assert: [ :html | 			html				mdlSnackbarButtonFor:					(html mdlSnackbar						timeout: 14390;						yourself) ]		generatedIncludes: '14390'!

testWithContent	"Not with the snackbars."! !
!MDLSnackbarTest categoriesFor: #testAction!public!tests! !
!MDLSnackbarTest categoriesFor: #testActionText!public!tests! !
!MDLSnackbarTest categoriesFor: #testActionTextNotDisplayedIfNoAction!public!tests! !
!MDLSnackbarTest categoriesFor: #testBareBrush!public!tests! !
!MDLSnackbarTest categoriesFor: #testMessage!public!tests! !
!MDLSnackbarTest categoriesFor: #testSnackbarButtonFor!public!tests! !
!MDLSnackbarTest categoriesFor: #testTimeout!public!tests! !
!MDLSnackbarTest categoriesFor: #testWithContent!public!tests! !

