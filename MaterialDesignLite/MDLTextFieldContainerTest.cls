"Filed out from Dolphin Smalltalk 7"!

SGTAbstractBrushTest subclass: #MDLTextFieldContainerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextFieldContainerTest guid: (GUID fromString: '{55ac50bd-b846-4220-a22f-70880a9c48a5}')!
MDLTextFieldContainerTest comment: ''!
!MDLTextFieldContainerTest categoriesForClass!Material-Design-Lite-Components-Tests-Forms! !
!MDLTextFieldContainerTest methodsFor!

testBareBrush	self assert: [ :html | html mdlTextFieldContainer ] generates: '<div class="mdl-textfield mdl-js-textfield"></div>'!

testBeExpandableIf	self assert: [ :html | html mdlTextFieldContainer beExpandableIf: true ] generates: '<div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable"></div>'.	self assert: [ :html | html mdlTextFieldContainer beExpandableIf: false ] generates: '<div class="mdl-textfield mdl-js-textfield"></div>'!

testBeFloatingLabelIf	self assert: [ :html | html mdlTextFieldContainer beFloatingLabelIf: true ] generates: '<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label"></div>'.	self assert: [ :html | html mdlTextFieldContainer beFloatingLabelIf: false ] generates: '<div class="mdl-textfield mdl-js-textfield"></div>'!

testExpandable	self assert: [ :html | html mdlTextFieldContainer expandable ] generates: '<div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable"></div>'!

testFloatingLabel	self assert: [ :html | html mdlTextFieldContainer floatingLabel ] generates: '<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label"></div>'!

testWithContent	self assert: [ :html | html mdlTextFieldContainer: 'test' ] generates: '<div class="mdl-textfield mdl-js-textfield">test</div>'! !
!MDLTextFieldContainerTest categoriesFor: #testBareBrush!public!tests! !
!MDLTextFieldContainerTest categoriesFor: #testBeExpandableIf!public!tests! !
!MDLTextFieldContainerTest categoriesFor: #testBeFloatingLabelIf!public!tests! !
!MDLTextFieldContainerTest categoriesFor: #testExpandable!public!tests! !
!MDLTextFieldContainerTest categoriesFor: #testFloatingLabel!public!tests! !
!MDLTextFieldContainerTest categoriesFor: #testWithContent!public!tests! !

