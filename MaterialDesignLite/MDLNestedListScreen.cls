"Filed out from Dolphin Smalltalk 7"!

MDLWidgetDemo subclass: #MDLNestedListScreen
	instanceVariableNames: 'selectedElement'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNestedListScreen guid: (GUID fromString: '{1c9bd21b-3c04-4791-8abb-cb50b79b16a2}')!
MDLNestedListScreen comment: 'A smart list that will dynamically load in Ajax'!
!MDLNestedListScreen categoriesForClass!Material-Design-Lite-Demo-Widgets! !
!MDLNestedListScreen methodsFor!

ajaxActionList	^ OrderedDictionary new		add: 'Ajax action list' -> #renderAjaxActionListOn:;		yourself!

iconsList	^ OrderedDictionary new		add: 'List with icons' -> #renderListWithIconsOn:;		yourself!

nestedList	^ OrderedDictionary new		add: 'Nested List' -> #renderNestedListOn:;		yourself!

renderAjaxActionListOn: html	| divId divId2 |	divId := html nextId.	divId2 := html nextId.	html div		style: 'height: 400px; width: 400px;';		shadow: 2;		with:			((MDLNestedList				elements: WAObject allSubclasses				children: [ :classOrMethod | 					classOrMethod isClass						ifTrue: [ classOrMethod methods ]						ifFalse: [ #() ] ])				format: #name;				beCompact;				onLoadHook: ((html jQuery id: divId) load html: [ :ajaxHtml | ajaxHtml text: 'Ajax hook executed at ' , DateAndTime now printString ]);				onClickJs: [ :entity | (html jQuery id: divId2) load html: [ :ajaxHtml | ajaxHtml text: 'Selected: ' , entity printString ] ];				withResearchField;				filterSubstring;				yourself).	html div mdlTextColorPrimary; id: divId.	html div mdlTextColorAccent; id: divId2!

renderListWithIconsOn: html	html div		style: 'height: 400px; width: 400px;';		shadow: 2;		with:			((MDLNestedList				elements: WAObject allSubclasses				children: [ :classOrMethod | 					classOrMethod isClass						ifTrue: [ classOrMethod methods ]						ifFalse: [ #() ] ])				"The next blocks can either:				- Take one argument (the entity) and return a component to display				- Take two argument (entity + canvas) and draw the icon on the canvas"				iconBlock: [ :entity | MDLNestedListIconExampleComponent isRepresentingClass: entity isClass ];				rightIconBlock: [ :entity :canvas | 					canvas mdlChipContact						hexColor: '3f51b5';						with: entity printString last ];				format: #name;				yourself)	!

renderListWithSortedChildrenOn: html	html div		style: 'height: 400px; width: 400px;';		shadow: 2;		with:			((MDLNestedList				elements: WAObject allSubclasses				children: [ :classOrMethod | 					classOrMethod isClass						ifTrue: [ classOrMethod methods ]						ifFalse: [ #() ] ])				format: #name;				childrenSortBlock: [ :child1 :child2 | child1 name < child2 name ];				yourself)!

renderNestedListOn: html	html div		mdlTextColorPrimary;		with: 'Selected element: ' , (selectedElement ifNil: [ 'Nothing' ] ifNotNil: [ selectedElement printString ]).	html div		style: 'height: 400px; width: 400px;';		shadow: 2;		with:			((MDLNestedList				elements: WAObject allSubclasses				children: [ :classOrMethod | 					classOrMethod isClass						ifTrue: [ classOrMethod methods ]						ifFalse: [ #() ] ])				format: #name;				helpBlock: #comment;				selectedEntity: selectedElement;				actionBlock: [ :class | selectedElement := class ];				yourself)!

renderScreenContentOn: html	self		render: self nestedList on: html;		render: self searchableList on: html;		render: self ajaxActionList on: html;		render: self iconsList on: html;		render: self sortedChildrenList on: html!

renderSearchableListOn: html	html div		style: 'height: 400px; width: 400px;';		shadow: 2;		with:			((MDLNestedList				elements: WAObject allSubclasses				children: [ :classOrMethod | 					classOrMethod isClass						ifTrue: [ classOrMethod methods ]						ifFalse: [ #() ] ])				format: #name;				withResearchField;				"Could be also filterPseudoRegex or filterSensitiveBeginsWith or a specific filter created with #filter:"				filterInsensitiveBeginsWith;				yourself)!

searchableList	^ OrderedDictionary new		add: 'Searchable list' -> #renderSearchableListOn:;		yourself!

sortedChildrenList	^ OrderedDictionary new		add: 'List with sorted children' -> #renderListWithSortedChildrenOn:;		yourself! !
!MDLNestedListScreen categoriesFor: #ajaxActionList!public!sections! !
!MDLNestedListScreen categoriesFor: #iconsList!public!sections! !
!MDLNestedListScreen categoriesFor: #nestedList!public!sections! !
!MDLNestedListScreen categoriesFor: #renderAjaxActionListOn:!demos!public! !
!MDLNestedListScreen categoriesFor: #renderListWithIconsOn:!demos!public! !
!MDLNestedListScreen categoriesFor: #renderListWithSortedChildrenOn:!demos!public! !
!MDLNestedListScreen categoriesFor: #renderNestedListOn:!demos!public! !
!MDLNestedListScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLNestedListScreen categoriesFor: #renderSearchableListOn:!demos!public! !
!MDLNestedListScreen categoriesFor: #searchableList!public!sections! !
!MDLNestedListScreen categoriesFor: #sortedChildrenList!public!sections! !

!MDLNestedListScreen class methodsFor!

icon	^ 'complistsPng'!

title	^ 'Nested list'! !
!MDLNestedListScreen class categoriesFor: #icon!accessing!public! !
!MDLNestedListScreen class categoriesFor: #title!accessing!public! !

