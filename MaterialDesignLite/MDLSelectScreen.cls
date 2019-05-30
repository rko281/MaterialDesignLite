"Filed out from Dolphin Smalltalk 7"!

MDLWidgetDemo subclass: #MDLSelectScreen
	instanceVariableNames: 'selectedEntity'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSelectScreen guid: (GUID fromString: '{8f4f1f03-5e4e-44b1-b4c1-6a53354cea0d}')!
MDLSelectScreen comment: 'Screen to render MDLSelectWidget examples'!
!MDLSelectScreen categoriesForClass!Material-Design-Lite-Demo-Widgets! !
!MDLSelectScreen methodsFor!

renderAutoSubmitSelectOn: html	html		form:			((MDLSelectWidget				possibilities: #(1 2 3 4 5 5)				inputLabel: 'Select Your Number'				labelBlock: [ :number | 					number = 5						ifTrue: [ '0' ]						ifFalse: [ (number - 1) greaseString ] ]				callback: [ :input | selectedEntity := input ]				selectedObject: selectedEntity)				beAutoSubmit;				yourself).	selectedEntity ifNotNil: [ :entity |  html div mdlTextColorPrimary; with: 'Selected: ' , entity asString ]!

renderScreenContentOn: html	self		render: self select on: html;		render: self selectWithAjax on: html!

renderSelectOn: html	html		form: [ 			html				render:					((MDLSelectWidget						possibilities: #(1 2 3 4 5 5)						inputLabel: 'Select Your Number'						labelBlock: [ :number | 							number = 5								ifTrue: [ '0' ]								ifFalse: [ (number - 1) greaseString ] ]						callback: [ :input | 							Transcript								show: input;								cr ]						selectedObject: 3						tooltip: 'description'						sortBlock: [ :a :b | a <= b ])						entryTooltip: [ :number | 'Choose number: ' , number asString ];						yourself).			html break.			html mdlButton				accentColor;				raised;				beSubmit;				with: 'Submit' ]!

renderSelectWithAjaxOn: html	| selected |	html div		id: 'selectWithAjaxId';		with: 'Selected object: 3'.	html		form: [ html				render:					((MDLSelectWidget						possibilities: #(1 2 3 4 5)						inputLabel: 'Select Your Number'						labelBlock: #asString						callback: [ :input | selected := input ]						selectedObject: 3						tooltip: 'description'						sortBlock: [ :a :b | a <= b ])						entryTooltip: [ :number | 'Choose number: ' , number asString ];						customizationBlock: [ :textField :renderer | 							textField								onChange: (html jQuery ajax serializeThis onComplete: ((html jQuery id: 'selectWithAjaxId') load html: [ :canvas | canvas text: 'Selected object: ' , selected asString ])) ];						yourself) ]!

select	^ OrderedDictionary new		add: 'Select Widget' -> #renderSelectOn:;		add: 'Auto submit select' -> #renderAutoSubmitSelectOn:;		yourself!

selectWithAjax	^ OrderedDictionary new		add: 'Select Widget using ajax' -> #renderSelectWithAjaxOn:;		yourself! !
!MDLSelectScreen categoriesFor: #renderAutoSubmitSelectOn:!demos!public! !
!MDLSelectScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLSelectScreen categoriesFor: #renderSelectOn:!demos!public! !
!MDLSelectScreen categoriesFor: #renderSelectWithAjaxOn:!demos!public! !
!MDLSelectScreen categoriesFor: #select!public!sections! !
!MDLSelectScreen categoriesFor: #selectWithAjax!public!sections! !

!MDLSelectScreen class methodsFor!

description	^ 'A widget to emulate a select input in MDL style.'!

icon	^ #compmenusPng!

title	^ 'Select'! !
!MDLSelectScreen class categoriesFor: #description!accessing!public! !
!MDLSelectScreen class categoriesFor: #icon!accessing!public! !
!MDLSelectScreen class categoriesFor: #title!accessing!public! !

