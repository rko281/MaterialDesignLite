"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLMenuButtonWidget
	instanceVariableNames: 'textBlock selectedObject objectsPossibilities description action sortBlock buttonContent descriptionPosition'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMenuButtonWidget guid: (GUID fromString: '{68b9bfbc-5584-46af-9e20-22b503624e41}')!
MDLMenuButtonWidget comment: 'Description--------------------I am a mdl button that expand a menu to choose an item. When an item is selected I will refresh the page.Examples--------------------	 (MDLMenuButtonWidget		possibilities: #(''Guillaume'' ''Kévin'' ''Anne'' ''Cyril'' ''Olivier'' ''Yann'')		label: #asString		action: [ :o | Transcript crShow: o ]		choosingText: ''Select an user''		description: ''Choose a user to log into the Transcript'')		sortBlock: [ :a :b | a < b ];		yourself Internal Representation and Key Implementation Points.--------------------    Instance Variables	action:					<aBlock> 			Callback taking the selected element as parameter	buttonContent:			<aStringOrBlock>		The content of the button. Can be a string or a block. The block takes an html canvas as parameter	description:				<aString>			Tooltip to show on the button	objectsPossibilities:		<aCollection>		Collection of object to select  from	selectedObject:			<anObject>			Selected object by default	sortBlock:				<aBlock>			A block to sort the elements of the menu	textBlock:				<aBlock>			A block taking a possible object as parameter and returning a string to display on the menu'!
!MDLMenuButtonWidget categoriesForClass!Material-Design-Lite-Widgets-Menu! !
!MDLMenuButtonWidget methodsFor!

action	^ action!

action: anObject	action := anObject!

actionWith: anObject	self action ifNotNil: [ :block | block value: anObject]!

buttonContent	^ buttonContent ifNil: [ buttonContent := 'choose' ]!

buttonContent: aBlockOrString	buttonContent := aBlockOrString!

choosingText	"This method is to keep backward compatibility with old API. This might be suppress with the next major release."	self buttonContent isString ifTrue: [ ^ self buttonContent ].		self error: 'This button was not configured to render a string but was configured with a block'!

choosingText: aString	"This method is to keep backward compatibility with old API. This might be suppress with the next major release."		self buttonContent: aString!

description	^ description!

description: anObject	description := anObject!

descriptionAtBottom	"Sets the description of the menu at its bottom."	self descriptionPosition: #bottom!

descriptionAtLeft	"Sets the description of the menu at its left."	self descriptionPosition: #left!

descriptionAtRight	"Sets the description of the menu at its right."	self descriptionPosition: #right!

descriptionAtTop	"Sets the description of the menu at its top."	self descriptionPosition: #top!

descriptionPosition	^ descriptionPosition ifNil: [ descriptionPosition := #bottom ]!

descriptionPosition: anObject	descriptionPosition := anObject!

labelFor: anObject	^ self textBlock ifNil: [ anObject asString ] ifNotNil: [ :tb | tb cull: anObject ]!

objectsPossibilities	^ objectsPossibilities!

objectsPossibilities: anObject	objectsPossibilities := anObject!

objectsPossibilitiesWithLabel	^ (self objectsPossibilities collect: [ :anObject | (self labelFor: anObject) -> anObject ]) sorted: self sortBlock!

renderButtonContentOn: html	self buttonContent isString		ifTrue: [ html render: self buttonContent ]		ifFalse: [ self buttonContent cull: html ]!

renderButtonOn: html	html div		id: self id;		class: 'menuButtonWidgetButton mdl-button mdl-js-button menuButtonWidgetButton';		disabled: self objectsPossibilities isEmpty;		with: [ self selectedObject				ifNil: [ self renderButtonContentOn: html ]				ifNotNil: [ :anObject | html text: (self labelFor: anObject) ].			html mdlIcon: 'arrow_drop_down' ]!

renderContentOn: html	self ensureId: html.	self renderButtonOn: html.	self renderMenuOn: html.	self renderTooltipOn: html.!

renderMenuItemOn: html withAssociation: anAssociation	html		mdlMenuItem: [ 			html anchor				callback: [ self actionWith: anAssociation value ];				with: [ html text: anAssociation key ] ]!

renderMenuOn: html	html mdlMenu		bottomLeft;		for: self id;		class: 'menuButtonWidgetMenu';		with: [ self objectsPossibilitiesWithLabel do: [ :anAssociation | self renderMenuItemOn: html withAssociation: anAssociation ] ]!

renderTooltipOn: html	self description ifNil: [ ^ self ].		html mdlTooltip		for: self id;		large;		position: self descriptionPosition;		with: self description!

selectedObject	^ selectedObject value!

selectedObject: anObject	selectedObject := anObject!

sortBlock	^ sortBlock ifNil: [ sortBlock := [ :a :b | a <= b ] ]!

sortBlock: anObject	sortBlock := anObject!

textBlock	^ textBlock!

textBlock: anObject	textBlock := anObject! !
!MDLMenuButtonWidget categoriesFor: #action!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #action:!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #actionWith:!private! !
!MDLMenuButtonWidget categoriesFor: #buttonContent!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #buttonContent:!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #choosingText!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #choosingText:!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #description!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #description:!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #descriptionAtBottom!options!public! !
!MDLMenuButtonWidget categoriesFor: #descriptionAtLeft!options!public! !
!MDLMenuButtonWidget categoriesFor: #descriptionAtRight!options!public! !
!MDLMenuButtonWidget categoriesFor: #descriptionAtTop!options!public! !
!MDLMenuButtonWidget categoriesFor: #descriptionPosition!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #descriptionPosition:!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #labelFor:!private! !
!MDLMenuButtonWidget categoriesFor: #objectsPossibilities!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #objectsPossibilities:!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #objectsPossibilitiesWithLabel!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #renderButtonContentOn:!public!rendering! !
!MDLMenuButtonWidget categoriesFor: #renderButtonOn:!public!rendering! !
!MDLMenuButtonWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLMenuButtonWidget categoriesFor: #renderMenuItemOn:withAssociation:!public!rendering! !
!MDLMenuButtonWidget categoriesFor: #renderMenuOn:!public!rendering! !
!MDLMenuButtonWidget categoriesFor: #renderTooltipOn:!public!rendering! !
!MDLMenuButtonWidget categoriesFor: #selectedObject!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #selectedObject:!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #sortBlock!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #sortBlock:!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #textBlock!accessing!public! !
!MDLMenuButtonWidget categoriesFor: #textBlock:!accessing!public! !

!MDLMenuButtonWidget class methodsFor!

possibilities: aCollectionOfObjects label: aLabelBlock action: anAction choosingText: aText	^ self possibilities: aCollectionOfObjects label: aLabelBlock action: anAction choosingText: aText description: nil!

possibilities: aCollectionOfObjects label: aLabelBlock action: anAction choosingText: aText description: aDescriptionValuable	^ self		possibilities: aCollectionOfObjects		label: aLabelBlock		action: anAction		selectedObject: nil		choosingText: aText		description: aDescriptionValuable!

possibilities: aCollectionOfObjects label: aLabelBlock action: anAction selectedObject: anObjectOrNil choosingText: aText	^ self		possibilities: aCollectionOfObjects		label: aLabelBlock		action: anAction		selectedObject: anObjectOrNil		choosingText: aText		description: nil!

possibilities: aCollectionOfObjects label: aLabelBlock action: anAction selectedObject: anObjectOrNil choosingText: aText description: aDescriptionValuable 	^ self new		choosingText: aText;		textBlock: aLabelBlock;		selectedObject: anObjectOrNil;		description: aDescriptionValuable;		action: anAction;		objectsPossibilities: aCollectionOfObjects;		yourself! !
!MDLMenuButtonWidget class categoriesFor: #possibilities:label:action:choosingText:!instance creation!public! !
!MDLMenuButtonWidget class categoriesFor: #possibilities:label:action:choosingText:description:!instance creation!public! !
!MDLMenuButtonWidget class categoriesFor: #possibilities:label:action:selectedObject:choosingText:!instance creation!public! !
!MDLMenuButtonWidget class categoriesFor: #possibilities:label:action:selectedObject:choosingText:description:!instance creation!public! !

