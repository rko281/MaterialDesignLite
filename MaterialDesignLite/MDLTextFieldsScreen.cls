"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLTextFieldsScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextFieldsScreen guid: (GUID fromString: '{ee706199-af1e-4968-b2a6-f0441d13e83f}')!
MDLTextFieldsScreen comment: 'Textual input components.'!
!MDLTextFieldsScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLTextFieldsScreen methodsFor!

floatingLabelTextFields	^ OrderedDictionary new		add: 'Text with floating label' -> #renderFloatingLabelTextFieldOn:;		add: 'Numeric with floating label' -> #renderFloatingLabelNumberTextFieldOn:;		add: 'Input number' -> #renderInputNumberOn:;		yourself!

renderExpandingTextFieldOn: html	html mdlTextFieldContainer		expandable;		style: 'width: 200px;';		with: [ html mdlButton				labelIcon;				for: html nextId;				with: [ html mdlIcon: 'search' ].			html				mdlTextFieldExpandableHolder: [ html mdlTextFieldInput id: html lastId.					html mdlTextFieldLabel						for: html lastId;						with: 'Expandable Input' ] ]!

renderFloatingLabelNumberTextFieldOn: html	html mdlTextFieldContainer		floatingLabel;		with: [ html mdlTextFieldLabel				for: html nextId;				with: 'Number...'.			html mdlTextFieldInput				id: html lastId;				pattern: '-?[0-9]*(\.[0-9]+)?'.			html mdlTextFieldError: 'Input is not a number !!' ]!

renderFloatingLabelTextFieldOn: html	html mdlTextFieldContainer		floatingLabel;		with: [ html mdlTextFieldLabel				for: html nextId;				with: 'Text...'.			html mdlTextFieldInput id: html lastId ]!

renderInputNumberOn: html	html mdlTextFieldContainer		floatingLabel;		expandable;		with: [ html mdlTextFieldLabel				for: html nextId;				with: 'Number...'.			html mdlTextFieldInput				id: html lastId;				type: 'number' ]!

renderMultiLineTextFieldOn: html	html		mdlTextFieldContainer: [ html mdlTextFieldLabel				for: html nextId;				with: 'Text lines...'.			html mdlTextArea				id: html lastId;				rows: 3 ]!

renderNumberTextFieldOn: html	html		mdlTextFieldContainer: [ html mdlTextFieldLabel				for: html nextId;				with: 'Number...'.			html mdlTextFieldInput				id: html lastId;				pattern: '-?[0-9]*(\.[0-9]+)?'.			html mdlTextFieldError: 'Input is not a number !!' ]!

renderScreenContentOn: html	self		render: self simpleTextFields on: html;		render: self floatingLabelTextFields on: html;		render: self specialTextFields on: html!

renderTextFieldOn: html	html		mdlTextFieldContainer: [ html mdlTextFieldLabel				for: html nextId;				with: 'Text...'.			html mdlTextFieldInput id: html lastId ]!

simpleTextFields	^ OrderedDictionary new		add: ' Text' -> #renderTextFieldOn:;		add: 'Numeric' -> #renderNumberTextFieldOn:;		yourself!

specialTextFields	^ OrderedDictionary new		add: 'Multiple line' -> #renderMultiLineTextFieldOn:;		add: 'Expanding' -> #renderExpandingTextFieldOn:;		yourself! !
!MDLTextFieldsScreen categoriesFor: #floatingLabelTextFields!public!sections! !
!MDLTextFieldsScreen categoriesFor: #renderExpandingTextFieldOn:!demos!public! !
!MDLTextFieldsScreen categoriesFor: #renderFloatingLabelNumberTextFieldOn:!demos!public! !
!MDLTextFieldsScreen categoriesFor: #renderFloatingLabelTextFieldOn:!demos!public! !
!MDLTextFieldsScreen categoriesFor: #renderInputNumberOn:!demos!public! !
!MDLTextFieldsScreen categoriesFor: #renderMultiLineTextFieldOn:!demos!public! !
!MDLTextFieldsScreen categoriesFor: #renderNumberTextFieldOn:!demos!public! !
!MDLTextFieldsScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLTextFieldsScreen categoriesFor: #renderTextFieldOn:!demos!public! !
!MDLTextFieldsScreen categoriesFor: #simpleTextFields!public!sections! !
!MDLTextFieldsScreen categoriesFor: #specialTextFields!public!sections! !

!MDLTextFieldsScreen class methodsFor!

icon	^'comptextfieldsPng'!

title	^ 'Text Fields'! !
!MDLTextFieldsScreen class categoriesFor: #icon!accessing!public! !
!MDLTextFieldsScreen class categoriesFor: #title!accessing!public! !

