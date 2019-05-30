﻿"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLTextFieldWidget
	instanceVariableNames: 'label brush isExpandable isFloatingLabel patternErrorMessage errorMessage'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTextFieldWidget guid: (GUID fromString: '{fdf2281b-e2bc-4d7c-a9c8-9c7337bbf3d7}')!
MDLTextFieldWidget comment: 'I represent a text input field widget'!
!MDLTextFieldWidget categoriesForClass!Material-Design-Lite-Widgets-Form! !
!MDLTextFieldWidget methodsFor!

beExpandable

beFloatingLabel

callback: aBlock

errorMessage

errorMessage: aString

errorMessage: aString if: aBoolean

expandableIf: aBoolean

floatingLabelIf: aBoolean

initialize

label

label: aString

on: aSymbol of: anObject

onChange: anObject

onEnter: anObject

onKeyUp: anObject

onSubmit: anObject

pattern: anObject

pattern: aPattern errorMessage: aString

readonly: aBoolean

renderContentOn: html

required

size: anObject

type: anObject

value: anObject
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

labeled: aString callback: aBlock

labeled: aString callback: aBlock floatingLabel: aBoolean

labeled: aString callback: aBlock floatingLabel: aBoolean expandable: aBoolean2
!MDLTextFieldWidget class categoriesFor: #labeled:callback:!instance creation!public! !
!MDLTextFieldWidget class categoriesFor: #labeled:callback:floatingLabel:!instance creation!public! !
!MDLTextFieldWidget class categoriesFor: #labeled:callback:floatingLabel:expandable:!instance creation!public! !
