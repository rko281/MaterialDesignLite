"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLTextFieldWidget
	instanceVariableNames: 'label brush isExpandable isFloatingLabel patternErrorMessage errorMessage'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextFieldWidget guid: (GUID fromString: '{fdf2281b-e2bc-4d7c-a9c8-9c7337bbf3d7}')!
MDLTextFieldWidget comment: 'I represent a text input field widget'!
!MDLTextFieldWidget categoriesForClass!Material-Design-Lite-Widgets-Form! !
!MDLTextFieldWidget methodsFor!

beExpandable	isExpandable := true!

beFloatingLabel	isFloatingLabel := true!

callback: aBlock	self propertiesAt: #callback: put: (Array with: aBlock)!

errorMessage	^ errorMessage ifNil: [ errorMessage := '' ]!

errorMessage: aString	errorMessage := aString!

errorMessage: aString if: aBoolean	aBoolean		ifTrue: [ errorMessage := aString ]!

expandableIf: aBoolean	aBoolean		ifTrue: [ self beExpandable ]!

floatingLabelIf: aBoolean	aBoolean		ifTrue: [ self beFloatingLabel ]!

initialize	super initialize.	brush := MDLTextFieldInput new.	isExpandable := false.	isFloatingLabel := false.	patternErrorMessage := ''!

label	^ label!

label: aString	label := aString!

on: aSymbol of: anObject	self propertiesAt: #on:of: put: (Array with: aSymbol with: anObject)!

onChange: anObject	self propertiesAt: #onChange: put: (Array with: anObject)!

onEnter: anObject	self propertiesAt: #onEnter: put: (Array with: anObject)!

onKeyUp: anObject	self propertiesAt: #onKeyUp: put: (Array with: anObject)!

onSubmit: anObject	self propertiesAt: #onSubmit: put: (Array with: anObject)!

pattern: anObject	self propertiesAt: #pattern: put: (Array with: anObject)!

pattern: aPattern errorMessage: aString	"patternsDictionary at: anObject put: aString"	self pattern: aPattern.	patternErrorMessage := aString!

readonly: aBoolean	self propertiesAt: #readonly: put: (Array with: aBoolean)!

renderContentOn: html	| inputId |	self id ifNotNil: [ :aString | inputId := aString ] ifNil: [ inputId := html nextId ].	html mdlTextFieldContainer		class: (self properties at: #class: ifAbsent: [ '' ]);		beFloatingLabelIf: isFloatingLabel;		beExpandableIf: isExpandable;		with: [ 					label						ifNotNil: [ 							html mdlTextFieldLabel								for: inputId;								with: label ].					html						brush:							(brush								id: inputId;								yourself).					self addPropertiesToBrush: brush.					patternErrorMessage ifNotEmpty: [ html mdlTextFieldError: patternErrorMessage ].					self errorMessage ifNotEmpty: [ :message | html mdlTextFieldError: message ] ]!

required	self propertiesAt: #required put: Array new!

size: anObject	self propertiesAt: #size: put: (Array with: anObject)!

type: anObject	self propertiesAt: #type: put: (Array with: anObject)!

value: anObject	self propertiesAt: #value: put: (Array with: anObject)! !
!MDLTextFieldWidget categoriesFor: #beExpandable!options!public! !
!MDLTextFieldWidget categoriesFor: #beFloatingLabel!options!public! !
!MDLTextFieldWidget categoriesFor: #callback:!options!public! !
!MDLTextFieldWidget categoriesFor: #errorMessage!accessing!public! !
!MDLTextFieldWidget categoriesFor: #errorMessage:!accessing!public! !
!MDLTextFieldWidget categoriesFor: #errorMessage:if:!accessing!public! !
!MDLTextFieldWidget categoriesFor: #expandableIf:!options!public! !
!MDLTextFieldWidget categoriesFor: #floatingLabelIf:!options!public! !
!MDLTextFieldWidget categoriesFor: #initialize!initialization!public! !
!MDLTextFieldWidget categoriesFor: #label!accessing!public! !
!MDLTextFieldWidget categoriesFor: #label:!accessing!public! !
!MDLTextFieldWidget categoriesFor: #on:of:!options!public! !
!MDLTextFieldWidget categoriesFor: #onChange:!options!public! !
!MDLTextFieldWidget categoriesFor: #onEnter:!options!public! !
!MDLTextFieldWidget categoriesFor: #onKeyUp:!options!public! !
!MDLTextFieldWidget categoriesFor: #onSubmit:!options!public! !
!MDLTextFieldWidget categoriesFor: #pattern:!options!public! !
!MDLTextFieldWidget categoriesFor: #pattern:errorMessage:!options!public! !
!MDLTextFieldWidget categoriesFor: #readonly:!options!public! !
!MDLTextFieldWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLTextFieldWidget categoriesFor: #required!options!public! !
!MDLTextFieldWidget categoriesFor: #size:!options!public! !
!MDLTextFieldWidget categoriesFor: #type:!options!public! !
!MDLTextFieldWidget categoriesFor: #value:!options!public! !

!MDLTextFieldWidget class methodsFor!

labeled: aString callback: aBlock	^ self labeled: aString callback: aBlock floatingLabel: false!

labeled: aString callback: aBlock floatingLabel: aBoolean	^ self		labeled: aString		callback: aBlock		floatingLabel: aBoolean		expandable: false!

labeled: aString callback: aBlock floatingLabel: aBoolean expandable: aBoolean2	^ self new		label: aString;		callback: aBlock;		floatingLabelIf: aBoolean;		expandableIf: aBoolean2;		yourself! !
!MDLTextFieldWidget class categoriesFor: #labeled:callback:!instance creation!public! !
!MDLTextFieldWidget class categoriesFor: #labeled:callback:floatingLabel:!instance creation!public! !
!MDLTextFieldWidget class categoriesFor: #labeled:callback:floatingLabel:expandable:!instance creation!public! !

