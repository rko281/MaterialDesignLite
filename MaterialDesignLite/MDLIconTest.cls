"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLIconTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLIconTest guid: (GUID fromString: '{19b37769-f5db-4c17-b016-78922c9bcda3}')!
MDLIconTest comment: ''!
!MDLIconTest categoriesForClass!Material-Design-Lite-Components-Tests-Core! !
!MDLIconTest methodsFor!

testBareBrush	self assert: [ :html | html mdlIcon ] generates: '<i class="material-icons"></i>'!

testChipIcon	self		assert: [ :html | 			html mdlIcon				chipIcon;				with: 'mood' ]		generatedIncludes: '<i class="material-icons mdl-chip__contact" id="id1">mood</i>'!

testListItemAvatar	self		assert: [ :html | 			html mdlIcon				listItemAvatar;				with: 'mood' ]		generates: '<i class="material-icons mdl-list__item-avatar">mood</i>'!

testListItemIcon	self		assert: [ :html | 			html mdlIcon				listItemIcon;				with: 'mood' ]		generates: '<i class="material-icons mdl-list__item-icon">mood</i>'!

testToggle	self		assert: [ :html | 			html mdlIcon				toggle;				with: 'mood' ]		generates: '<i class="material-icons mdl-icon-toggle__label">mood</i>'!

testWithContent	self assert: [ :html | html mdlIcon: 'mood' ] generates: '<i class="material-icons">mood</i>'! !
!MDLIconTest categoriesFor: #testBareBrush!public!tests! !
!MDLIconTest categoriesFor: #testChipIcon!public!tests! !
!MDLIconTest categoriesFor: #testListItemAvatar!public!tests! !
!MDLIconTest categoriesFor: #testListItemIcon!public!tests! !
!MDLIconTest categoriesFor: #testToggle!public!tests! !
!MDLIconTest categoriesFor: #testWithContent!public!tests! !

