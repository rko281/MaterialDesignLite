"Filed out from Dolphin Smalltalk 7"!

MDLHighLevelWidget subclass: #MDLCardWidget
	instanceVariableNames: 'componentOrBlocks cardActions'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLCardWidget guid: (GUID fromString: '{667367ee-becf-4cd2-a09c-5414fe68ed60}')!
MDLCardWidget comment: 'High level widget to render a card'!
!MDLCardWidget categoriesForClass!Material-Design-Lite-Widgets-Cards! !
!MDLCardWidget methodsFor!

accentColorTitle: aString	self accentColorTitle: aString class: ''!

accentColorTitle: aString class: anotherString	| classes |	classes := String		streamContents: [ :stream | 			stream				nextPutAll: 'mdl-color--accent';				space;				nextPutAll: 'mdl-color-text--accent-contrast'.			anotherString				ifNotEmpty: [ :string | 					stream						space;						nextPutAll: string ] ].	self title: aString class: classes!

actionsBordered	self cardActions beBordered!

addAction: aComponentOrBlock	self cardActions addComponentOrBlock: aComponentOrBlock!

addComponentOrBlock: aComponentOrBlock	componentOrBlocks add: aComponentOrBlock!

addMedia: aBlock	self addComponentOrBlock: (MDLCardMediaWidget newWith: aBlock)!

addTextContainer: aString	self addComponentOrBlock: (MDLCardTextContainerWidget newWithContent: aString)!

addTextContainer: anObject class: cssClasses	self		addComponentOrBlock: (MDLCardTextContainerWidget newWithContent: anObject class: cssClasses)!

cardActions	^ cardActions		ifNil: [ cardActions := MDLCardActionsWidget new.			self addComponentOrBlock: cardActions.			^ cardActions ]!

initialize	super initialize.	componentOrBlocks := OrderedCollection new.	self class: 'mdl-card-widget'!

primaryColorTitle: aString	self primaryColorTitle: aString class: ''!

primaryColorTitle: aString class: anotherString	| classes |	classes := String		streamContents: [ :stream | 			stream				nextPutAll: 'mdl-color--primary';				space;				nextPutAll: 'mdl-color-text--primary-contrast'.			anotherString				ifNotEmpty: [ :string | 					stream						space;						nextPutAll: string ] ].	self title: aString class: classes!

renderContentOn: html	| card |	card := html mdlCard.	self addPropertiesToBrush: card.	card with: [ self renderInnerWidgetsOn: html ]!

renderInnerWidgetsOn: html	componentOrBlocks		do: [ :aComponentOrBlock | 			aComponentOrBlock isBlock				ifTrue: [ aComponentOrBlock cull: html ]				ifFalse: [ html render: aComponentOrBlock ] ]!

shadow: aNumber	"aNumber must be between 2 and 24"	self propertiesAt: #shadow: put: (Array with: aNumber)!

title: aString	self title: aString level: 2!

title: aString class: cssClasses	self title: aString level: 2 class: cssClasses!

title: aString level: aNumber	self title: aString level: aNumber class: ''!

title: aString level: aNumber class: cssClasses	self addComponentOrBlock: (MDLCardTitle newWithTitle: aString level: aNumber class: cssClasses)! !
!MDLCardWidget categoriesFor: #accentColorTitle:!adding!public! !
!MDLCardWidget categoriesFor: #accentColorTitle:class:!adding!public! !
!MDLCardWidget categoriesFor: #actionsBordered!options!public! !
!MDLCardWidget categoriesFor: #addAction:!adding!public! !
!MDLCardWidget categoriesFor: #addComponentOrBlock:!adding!public! !
!MDLCardWidget categoriesFor: #addMedia:!adding!public! !
!MDLCardWidget categoriesFor: #addTextContainer:!adding!public! !
!MDLCardWidget categoriesFor: #addTextContainer:class:!adding!public! !
!MDLCardWidget categoriesFor: #cardActions!accessing!public! !
!MDLCardWidget categoriesFor: #initialize!initialization!public! !
!MDLCardWidget categoriesFor: #primaryColorTitle:!adding!public! !
!MDLCardWidget categoriesFor: #primaryColorTitle:class:!adding!public! !
!MDLCardWidget categoriesFor: #renderContentOn:!public!rendering! !
!MDLCardWidget categoriesFor: #renderInnerWidgetsOn:!public!rendering! !
!MDLCardWidget categoriesFor: #shadow:!accessing!public! !
!MDLCardWidget categoriesFor: #title:!adding!public! !
!MDLCardWidget categoriesFor: #title:class:!adding!public! !
!MDLCardWidget categoriesFor: #title:level:!adding!public! !
!MDLCardWidget categoriesFor: #title:level:class:!adding!public! !

