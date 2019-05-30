"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLSelectWidget
	instanceVariableNames: 'choosingText labelBlock callback selectedObject possibilities description sortBlock autoSubmit customizationBlock entryTooltip'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLSelectWidget guid: (GUID fromString: '{a05752bd-47ec-497a-936a-dd29799308c6}')!
MDLSelectWidget comment: 'I am a widget trying to reproduce the behavior of a select input of a form with a WDL compatible design. Description--------------------I am a widget with a list of possibilities that can select the user. I MUST be used inside a form and I will execute a callback on the submit. I have a tricky implementation, for more informations check the implementations detail at the end of the comment. Public API and Key Messages--------------------There is many constructors in my class side. - #defaultSorting 		Use this method to sort the labels using the #<= operator by default- #beAutoSubmit 		Use this method if you want to form to submit when the user select a value. Do not forget to put your widget in a form.		Examples-------------------			MDLSelectWidget new		possibilities: #(1 2 3 4 5 5);		labelBlock: [ :number |  number = 5 ifTrue: [ ''0'' ] ifFalse: [ (number - 1) asString ] ];		choosingText: ''Select Your Number'';		selectedObject: 3;		defaultSorting;		callback: [ :input |  Transcript << input; cr ];		description: ''description'';		beAutoSubmit;		yourself.					MDLSelectWidget		possibilities: #(1 2 3 4 5 5)		inputLabel: ''Select Your Number''		labelBlock: [ :number |  number = 5 ifTrue: [ ''0'' ] ifFalse: [ (number - 1) asString ] ]		callback: [ :input |  Transcript << input; cr ]		selectedObject: 3		tooltip: ''description''		sortBlock: [ :a :b | a > b ]		Internal Representation and Key Implementation Points.-------------------	    Instance Variables	autoSubmit:  		<aBoolean>		If true, the form will be submit when the user select a value	callback:			<aBlock>		A callback to execute on the form submit. It will take as parameter the selected object.	choosingText:		<aString>		The label of the select input.	customizationBlock:	<aBlock>		An optional block to customize the text field of the select widget. It will take the mdl brush as parameter and the html canvas.	description:			<aString>		An optional tooltip for the input.	labelBlock:			<aBlock>		A block taking in parameter an object and returning a label to show in the input.	possibilities:			<aCollection>	The list of possibilities.	selectedObject:		<anObject>		An optional object to select by default.	sortBlock:			<aBlock>		An optional block to sort the objects.Implementation Points-------------------	I act as a select by in fact this is just a trick. In reality I am just an text field in read only. The user cannot enter text but he can select an element of a list. The selected element will replace the text in the input. To use the callback I keep a temporary dictionary of all the labels and the associated objects. I should ALWAYS have only one object by label. In case the label block return an existing label, I will add a  `(X)` to the label where X is the number of occurences. '!
!MDLSelectWidget categoriesForClass!Material-Design-Lite-Widgets-Form! !
!MDLSelectWidget methodsFor!

addLabelMapEntryFor: anElem version: anInteger into: aDictionary	| label |	label := self labelFor: anElem version: anInteger.	aDictionary at: label ifPresent: [ :lab | self addLabelMapEntryFor: anElem version: anInteger + 1 into: aDictionary ] ifAbsent: [ aDictionary at: label put: anElem ].	self flag: #pharo6.	"at:ifPresent:ifAbsentPut: is only available in Pharo 6 :( Improve this when the minimal Pharo version required will be Pharo 6."	^ aDictionary!

autoSubmit	^ autoSubmit ifNil: [ autoSubmit := false ]!

autoSubmit: anObject	autoSubmit := anObject!

beAutoSubmit	"With this option the select widget will submit on a user selection. Do not forget to put your widget in a form."	self autoSubmit: true!

buildLabelMap	^ self possibilities		inject: OrderedDictionary new		into: [ :dico :elem | self addLabelMapEntryFor: elem version: 0 into: dico ]!

callback	^ callback!

callback: aBlockOrSymbol	"Callback to execute on the form submit."	callback := aBlockOrSymbol!

choosingText	^ choosingText!

choosingText: aString	"The label of the select input."	choosingText := aString!

customizationBlock	^ customizationBlock!

customizationBlock: anObject	customizationBlock := anObject!

defaultValueBasedOn: aLabelMap	(self selectedObject isNil and: [ self possibilities isEmpty ]) ifTrue: [ ^ nil ].		^ aLabelMap		keyAtValue: (self selectedObject ifNil: [ self possibilities first ])		ifAbsent: [ self error: 'The selected object is not in the possibilities collection.' ]!

description	^ description!

description: aString	"An optional tooltip for the input."	description := aString!

entryTooltip	^ entryTooltip!

entryTooltip: aBlockOrSymbol	entryTooltip := aBlockOrSymbol!

idForMenuItemLabelled: aLabel inSelectWith: anId	^ anId , 'entry' , aLabel!

initialize	super initialize.		"In case the user does not set any possibilities, show a disable select widget instead of throwing an error during the redering because the possibilities are nil instead of an empty collection."	possibilities := #()!

jsSelectInitialization	^ 'getmdlSelect.init("#' , self id , '");'	" this ->'document.addEventListener('DOMNodeInserted', function (ev) { componentHandler.upgradeDom(); }, false);' must never add. It's bad pratice. 	Launch yourself componentHandler.upgradeDom() OR add ONLY ONE TIME at the document this eventListener"!

labelBlock	^ labelBlock!

labelBlock: aBlockOrSymbol	"A block taking in parameter an object and returning a label to show in the input."	labelBlock := aBlockOrSymbol!

labelFor: anObject	^ self labelBlock ifNil: [ anObject asString ] ifNotNil: [ :blk | blk value: anObject ]!

labelFor: anElem version: anInteger	^ String		streamContents: [ :s | 			s nextPutAll: (self labelFor: anElem).			anInteger = 0				ifFalse: [ s						nextPutAll: ' (';						print: anInteger;						nextPut: $) ] ]!

labels: aBlockOrSymbol	"This method is here to match at least a minimum with the seaside select API."	self labelBlock: aBlockOrSymbol!

list: aCollection	"This method is here to match at least a minimum with the seaside select API."	self possibilities: aCollection!

possibilities	^ possibilities!

possibilities: aCollection	"The list of possibilities."	possibilities := aCollection!

renderArrowIconFor: anId on: html	html label		for: anId;		with: [ html mdlIcon				toggle;				with: #keyboard_arrow_down ]!

renderContentOn: html	self ensureId: html.	html mdlTextFieldContainer		class: #'mdl-select';		id: self id;		floatingLabel;		with: [ | fieldId labelMap |			self				renderTextFieldFor: (fieldId := html nextId) withMap: (labelMap := self buildLabelMap) on: html;				renderArrowIconFor: fieldId on: html;				renderLabelFor: fieldId on: html;				renderPossibilitiesFor: fieldId withMap: labelMap on: html;				renderTooltipFor: fieldId on: html.			labelMap keysAndValuesDo: [ :label :object | self renderMenuTooltipFor: object at: (self idForMenuItemLabelled: label inSelectWith: fieldId) on: html ] ].	html script: self jsSelectInitialization!

renderLabelFor: anId on: html	self choosingText isEmptyOrNil ifTrue: [ ^ self ].		html mdlTextFieldLabel		for: anId;		with: self choosingText!

renderMenuTooltipFor: anItem at: anId on: html	| helpText |	(self entryTooltip isNil or: [ self entryTooltip argumentCount = 1 and: [ (helpText := self entryTooltip value: anItem) isEmptyOrNil ] ]) ifTrue: [ ^ self ].			html mdlTooltip		large;		for: anId;		with:				(self entryTooltip argumentCount = 1						ifTrue: [ helpText ]						ifFalse: [ self entryTooltip mdlCull: anItem cull: html ])!

renderPossibilitiesFor: anId withMap: aLabelMap on: html	aLabelMap ifEmpty: [ ^ self ].		html mdlMenu		for: anId;		bottomLeft;		with: [ (self sortBlock ifNil: [ aLabelMap keys ] ifNotNil: [ :blk | aLabelMap keys sort: blk ])				do: [ :label | 					html mdlMenuItem						id: (self idForMenuItemLabelled: label inSelectWith: anId);						with: label ] ]!

renderTextFieldFor: anId withMap: aLabelMap on: html	| textField |	(textField := html mdlTextFieldInput)		id: anId;		value: (self defaultValueBasedOn: aLabelMap);		disabled: self possibilities isEmpty;		readonly: true;		tabIndex: '-1';		noAutocomplete;		callback: [ :input | self callback ifNotNil: [ :cb | cb value: (aLabelMap at: input) ] ];		onChange: 'submit()' if: self autoSubmit;		type: 'text'.	self customizationBlock ifNotNil: [ :bl | bl mdlCull: textField cull: html ]!

renderTooltipFor: anId on: html	self description ifNil: [ ^ self ].		html mdlTooltip		for: anId;		large;		with:			(self description isBlock				ifTrue: [ self description value: html ]				ifFalse: [ self description ])!

selected: anObject	"This method is here to match at least a minimum with the seaside select API."	self selectedObject: anObject!

selectedObject	^ selectedObject value!

selectedObject: anObject	"An optional object to select by default."	selectedObject := anObject!

sortBlock	^ sortBlock!

sortBlock: aBlock	"An optional block to sort the objects."	sortBlock := aBlock!

standardSorting	"Use the default #<= on the objects values directly."	self sortBlock: [ :a :b | a value <= b value ]! !
!MDLSelectWidget categoriesFor: #addLabelMapEntryFor:version:into:!labelMap / generation!public! !
!MDLSelectWidget categoriesFor: #autoSubmit!accessing!public! !
!MDLSelectWidget categoriesFor: #autoSubmit:!accessing!public! !
!MDLSelectWidget categoriesFor: #beAutoSubmit!public!public api! !
!MDLSelectWidget categoriesFor: #buildLabelMap!labelMap / generation!public! !
!MDLSelectWidget categoriesFor: #callback!accessing!public! !
!MDLSelectWidget categoriesFor: #callback:!public!public api! !
!MDLSelectWidget categoriesFor: #choosingText!accessing!public! !
!MDLSelectWidget categoriesFor: #choosingText:!public!public api! !
!MDLSelectWidget categoriesFor: #customizationBlock!accessing!public! !
!MDLSelectWidget categoriesFor: #customizationBlock:!accessing!public! !
!MDLSelectWidget categoriesFor: #defaultValueBasedOn:!accessing!public! !
!MDLSelectWidget categoriesFor: #description!accessing!public! !
!MDLSelectWidget categoriesFor: #description:!public!public api! !
!MDLSelectWidget categoriesFor: #entryTooltip!accessing!public! !
!MDLSelectWidget categoriesFor: #entryTooltip:!accessing!public! !
!MDLSelectWidget categoriesFor: #idForMenuItemLabelled:inSelectWith:!private! !
!MDLSelectWidget categoriesFor: #initialize!initialization!public! !
!MDLSelectWidget categoriesFor: #jsSelectInitialization!javascript!public! !
!MDLSelectWidget categoriesFor: #labelBlock!accessing!public! !
!MDLSelectWidget categoriesFor: #labelBlock:!public!public api! !
!MDLSelectWidget categoriesFor: #labelFor:!accessing!public! !
!MDLSelectWidget categoriesFor: #labelFor:version:!labelMap / generation!public! !
!MDLSelectWidget categoriesFor: #labels:!public!public api / seaside compatibility! !
!MDLSelectWidget categoriesFor: #list:!public!public api / seaside compatibility! !
!MDLSelectWidget categoriesFor: #possibilities!accessing!public! !
!MDLSelectWidget categoriesFor: #possibilities:!public!public api! !
!MDLSelectWidget categoriesFor: #renderArrowIconFor:on:!public!rendering! !
!MDLSelectWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLSelectWidget categoriesFor: #renderLabelFor:on:!public!rendering! !
!MDLSelectWidget categoriesFor: #renderMenuTooltipFor:at:on:!public!rendering! !
!MDLSelectWidget categoriesFor: #renderPossibilitiesFor:withMap:on:!public!rendering! !
!MDLSelectWidget categoriesFor: #renderTextFieldFor:withMap:on:!public!rendering! !
!MDLSelectWidget categoriesFor: #renderTooltipFor:on:!public!rendering! !
!MDLSelectWidget categoriesFor: #selected:!public!public api / seaside compatibility! !
!MDLSelectWidget categoriesFor: #selectedObject!accessing!public! !
!MDLSelectWidget categoriesFor: #selectedObject:!public!public api! !
!MDLSelectWidget categoriesFor: #sortBlock!accessing!public! !
!MDLSelectWidget categoriesFor: #sortBlock:!public!public api! !
!MDLSelectWidget categoriesFor: #standardSorting!public!public api! !

!MDLSelectWidget class methodsFor!

possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock	^ self		possibilities: aColl		inputLabel: aLabel		labelBlock: aLabelBlock		callback: aBlock		selectedObject: nil!

possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock selectedObject: anObject	^ self		possibilities: aColl		inputLabel: aLabel		labelBlock: aLabelBlock		callback: aBlock		selectedObject: anObject		tooltip: nil!

possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock selectedObject: anObject tooltip: aString	^ self		possibilities: aColl		inputLabel: aLabel		labelBlock: aLabelBlock		callback: aBlock		selectedObject: anObject		tooltip: aString		sortBlock: nil!

possibilities: aColl inputLabel: aLabel labelBlock: aLabelBlock callback: aBlock selectedObject: anObject tooltip: aString sortBlock: aSortBlock	^ self new		choosingText: aLabel;		labelBlock: aLabelBlock;		callback: aBlock;		selectedObject: anObject;		possibilities: aColl;		description: aString;		sortBlock: aSortBlock;		yourself! !
!MDLSelectWidget class categoriesFor: #possibilities:inputLabel:labelBlock:callback:!instance creation!public! !
!MDLSelectWidget class categoriesFor: #possibilities:inputLabel:labelBlock:callback:selectedObject:!instance creation!public! !
!MDLSelectWidget class categoriesFor: #possibilities:inputLabel:labelBlock:callback:selectedObject:tooltip:!instance creation!public! !
!MDLSelectWidget class categoriesFor: #possibilities:inputLabel:labelBlock:callback:selectedObject:tooltip:sortBlock:!instance creation!public! !

