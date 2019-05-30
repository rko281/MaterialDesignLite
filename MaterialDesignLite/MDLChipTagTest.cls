"Filed out from Dolphin Smalltalk 7"!

MDLAbstractBrushTest subclass: #MDLChipTagTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLChipTagTest guid: (GUID fromString: '{10ce459b-55c1-4e5b-9968-66cb627dd16c}')!
MDLChipTagTest comment: 'A MDLChipTagTest is a test class for testing the behavior of MDLChipTag'!
!MDLChipTagTest categoriesForClass!Material-Design-Lite-Components-Tests-Chips! !
!MDLChipTagTest methodsFor!

testAjaxDeleteCallback	self		assert: [ :html | html mdlChip ajaxDeleteCallback: [ 'test' crLog ] ]		generatedIncludesAll: #('<span class="mdl-chip mdl-chip__deletable" id="id2"></span>' '<span onclick=\"$.ajax({' '.remove();' '<i class=\"material-icons\">cancel</i></span>')!

testAjaxDeleteCallbackSuccessHook	self		assert: [ :html | html mdlChip ajaxDeleteCallback: [ 'test' crLog ] successHook: 'console.log(this)' ]		generatedIncludesAll: #('<span class="mdl-chip mdl-chip__deletable" id="id2"></span>' '<span onclick=\"$.ajax({' '.remove();' '<i class=\"material-icons\">cancel</i></span>' 'console.log(this)')!

testBareBrush	self assert: [ :html | html mdlChip ] generates: '<span class="mdl-chip"></span>'!

testDeleteCallback	self		assert: [ :html | html mdlChip deleteCallback: [ 'test' crLog ] ]		generatedIncludesAll: #('<span class="mdl-chip mdl-chip__deletable" id="id2"></span>' '<a class=\"mdl-chip__action\"' '"><i class=\"material-icons\">cancel</i></a>')!

testWithContact	self		assert: [ :html | 			html				mdlChip: [ html mdlIcon						chipIcon;						with: #accessibility ] ]		generates:			'<span class="mdl-chip"><i class="material-icons mdl-chip__contact" id="id1">accessibility</i></span><script type="text/javascript">$("#id1").parent(".mdl-chip").addClass("mdl-chip--contact");</script>'!

testWithContent	self assert: [ :html | html mdlChip: [ html mdlChipText: 'test' ] ] generates: '<span class="mdl-chip"><span class="mdl-chip__text">test</span></span>'! !
!MDLChipTagTest categoriesFor: #testAjaxDeleteCallback!public!tests! !
!MDLChipTagTest categoriesFor: #testAjaxDeleteCallbackSuccessHook!public!tests! !
!MDLChipTagTest categoriesFor: #testBareBrush!public!tests! !
!MDLChipTagTest categoriesFor: #testDeleteCallback!public!tests! !
!MDLChipTagTest categoriesFor: #testWithContact!public!tests! !
!MDLChipTagTest categoriesFor: #testWithContent!public!tests! !

