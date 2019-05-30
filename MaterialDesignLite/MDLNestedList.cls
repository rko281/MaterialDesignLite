"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLNestedList
	instanceVariableNames: 'elements entryCustomizationHook filteredElements format actionBlock isJsAction selectedEntity helpBlock iconBlock rightIconBlock childrenBlock dragAndDropBlock displayResearchField displayResearchFilter filter listStyle onLoadHook listMaxSize childrenSortBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNestedList guid: (GUID fromString: '{6a527376-e186-41ac-8efb-7dcc5f576cee}')!
MDLNestedList comment: 'I am a component use to display nicely a list of elements. I am also able to display nested list as a tree.Description------------------I display a list of elements and I manage most of the css needed to make a good rendering.For the icon check MDLListIconComponent or give any component you want.For more info you can test the demo.Public API and Key Messages------------------- #actionBlock: aBlock 			Allow to set an action to execute on click- #elements: aCollection			Is the list of elements to display- #children: aBlock 				Return for each element his childrens- #format: aBlock 					Is a block that take an element and return the element with the right format- #selectedEntity: anElement 		If the element in parameter is in the list, it zill be highlighted - #helpBlock: aBlock 				Allow to add a fly by help on elements- #iconBlock: aBlock 				Allow to add an icon on each lineExample------------------ 	(SYNListComponent elements: #(1 34 56 89) children: [ :number | number even ifTrue: [ {(number + 1) . (number + 3) } ] ifFalse: [ #() ] ] ])		actionBlock: [ :elem | Transcript crShow: elem asString ];		format: [ :elem | elem asString , ''%'' ];		selectedEntity: 34;		yourselfInternal Representation and Key Implementation Points.------------------    Instance Variables	actionBlock:		<aBlockOrSymbol> 	A block executed when an element is selected	children: 		<aBlockOrSymbol> 	A block that return the list of children of an element	elements:		<aCollection> 		A collection of elements to display	format:			<aBlockOrSymbol> 	A block executed to format an element	selectedEntity:	<anElement> 		An element that need to be highlighted in the list	helpBlock:		<aBlockOrSymbol>	A block that return an optional fly-by-felp for an element	iconBlock:		<aBlockOrSymbol>	A block thet return an optional SYNListIconComponent for a line of the list'!
!MDLNestedList categoriesForClass!Material-Design-Lite-Widgets-List! !
!MDLNestedList methodsFor!

actionBlock	^ actionBlock!

actionBlock: aBlock	self		assert: aBlock argumentCount = 1		description:			'This block must take one argument; it will be the clicked entity in the list'.	actionBlock := aBlock!

at: anInteger ifPresent: aBlockClosure 	aBlockClosure value: (self filteredElements at: anInteger)!

beCompact	self listStyle: #compact!

beStandard	self listStyle: #standard!

children: aBlockOrSymbol	self childrenBlock: aBlockOrSymbol!

childrenBlock	^ childrenBlock ifNil: [ childrenBlock := [ :item | #() ] ]!

childrenBlock: anObject	childrenBlock := anObject!

childrenSortBlock	^ childrenSortBlock!

childrenSortBlock: aBlock	childrenSortBlock := aBlock!

defineChildrenCallbackOn: aDiv	^ aDiv		storeCallback:			(WAValueCallback				on: [ :intervalRequest | 					self requestContext						respond: [ :response | 							self								printSublistFor: intervalRequest								context: aDiv canvas context								on:									(response										doNotCache;										contentType: WAMimeType textHtml;										stream) ] ])!

defineScrollCallbackOn: aDiv	^ aDiv		storeCallback:			(WAValueCallback				on: [ :intervalRequest | 					| interval |					interval := $: split: intervalRequest.					self requestContext						respond: [ :response | 							self								printHtmlForElementsFrom: interval first asNumber								to: interval last asNumber								context: aDiv canvas context								on:									(response										doNotCache;										contentType: WAMimeType textHtml;										stream) ] ])!

displayResearchField	^ displayResearchField!

displayResearchField: aBoolean	displayResearchField := aBoolean !

displayResearchFilter	^ displayResearchFilter!

displayResearchFilter: aFilter	aFilter		ifEmpty: [ 			displayResearchFilter := nil.			filteredElements := #() ]		ifNotEmpty: [ 			displayResearchFilter := aFilter.			filteredElements := self filter				selectMatchingFrom: self elements				format: self format				with: self displayResearchFilter ]!

dragAndDropBlock	^ dragAndDropBlock!

dragAndDropBlock: anObject	dragAndDropBlock := anObject!

draggableMechanism: html forDiv: div	self hasDraggableItems		ifTrue: [ 			html				script:					(self						draggableScript: html actionUrl						cb:							(div								storeCallback:									(WAValueCallback										on: [ :drag | 											| dragValues |											dragValues := drag substrings: ';'.											self dragAndDropBlock												value: (self obtainElementForPath: dragValues first)												value: (self obtainElementForPath: dragValues second) ]))) ]!

draggableScript:url cb: draggableCb	^ 'function dragListItem(ev, index) {    ev.dataTransfer.setData("sourceIndex", index);}function dropListItem(ev, index){	var source = ev.dataTransfer.getData("sourceIndex");	var target = index;	if(source == target) console.log("Sleep");	else post("' , url asString , '",{' , draggableCb		,			': source + ";" + target});;}'!

elements	^ elements value!

elements: anObject	elements := anObject.	"reinitialize the filter when list change"	self displayResearchFilter: ''!

elementsDisplayList	| start overflow |	^ self filteredElements size <= self listMaxSize		ifTrue: [ self filteredElements ]		ifFalse: [ start := self indexOfRootElementContainingSelectedEntity - (self listMaxSize / 2) max: 1.			overflow := 0 max: start + self listMaxSize - self filteredElements size.			self filteredElements copyFrom: start - overflow to: start + self listMaxSize - 1 - overflow ]!

entryCustomizationHook	^ entryCustomizationHook!

entryCustomizationHook: anObject	entryCustomizationHook := anObject!

filter	^ filter!

filter: anObject	filter := anObject!

filteredElements	^ self displayResearchFilter ifNil: [ self elements ] ifNotNil: [ filteredElements ]!

filterInsensitiveBeginsWith	self filter: MDLInsensitiveBeginsWithFilter!

filterInsensitiveSubstring	self filter: MDLInsensitiveSubstringFilter!

filterPseudoRegex	self filter: MDLPseudoRegexFilter!

filterSensitiveBeginsWith	self filter: MDLBeginsWithFilter !

filterSubstring	self filter: MDLSubstringFilter!

format	^ format ifNil: [ #asString ]!

format: anObject	format := anObject!

hasCustomizationForEntry	^ self entryCustomizationHook notNil!

hasDraggableItems	^ self dragAndDropBlock notNil!

helpBlock	^ helpBlock!

helpBlock: anObject	helpBlock := anObject!

iconBlock	^ iconBlock!

iconBlock: anObject	iconBlock := anObject!

idFor: aSymbol	^ aSymbol, self id!

indexOfRootElementContainingSelectedEntity	self selectedEntity ifNil: [ ^ 0 ].	^ self filteredElements		indexOf: self selectedEntity		ifAbsent: [ self filteredElements				detect: [ :element | self isIncludingSelectedChildren: element ]				ifFound: [ :element | self filteredElements indexOf: element ]				ifNone: [ "The selected element is not at all in the tree" 1 ] ]!

initialize	super initialize.	self		listMaxSize: 150;		displayResearchField: false;		isJsAction: false;		listStyle: #standard;		filterInsensitiveBeginsWith;		onLoadHook: 'componentHandler.upgradeDom();'!

isIncludingSelectedChildren: anElement	^ (self childrenBlock value: anElement) anySatisfy: [ :aChildren | aChildren = selectedEntity or: [ self isIncludingSelectedChildren: aChildren ] ]!

isJsAction	^ isJsAction!

isJsAction: anObject	isJsAction := anObject!

jsOnLoadHook	^ self onLoadHook js!

listElementsDynamicalLoadingStep	"It is the number of elements asked in ajax to the server when user scroll"	^ self listMaxSize / 5!

listMaxSize	^ listMaxSize!

listMaxSize: anObject	listMaxSize := anObject!

listStyle	^ listStyle!

listStyle: anObject	listStyle := anObject!

obtainElementForPath: aPath	| path |	path := $: split: aPath.	^ (path allButLast		inject: self filteredElements		into: [ :elemts :anIndex | 			| res |			res := self childrenBlock value: (elemts at: anIndex asNumber).			self childrenSortBlock ifNil: [ res ] ifNotNil: [ :sortBlock | res sorted: sortBlock ] ]) at: path last asNumber!

obtainTreeFor: anElement	^ self obtainTreeFor: anElement caches: IdentityDictionary new!

obtainTreeFor: anElement caches: obtainedTree	^ obtainedTree		at: anElement		ifAbsentPut: [ | childrenNodes |			childrenNodes := (self childrenBlock value: anElement) collect: [ :aChild | self obtainTreeFor: aChild caches: obtainedTree ].			MDLNestedListTreeNode				element: anElement				children: childrenNodes				selectedBranch: (childrenNodes anySatisfy: [ :aChild | aChild selectedBranch or: [ aChild selectedElement ] ])				selectedElement: anElement = self selectedEntity ]!

onClickJs: anActionBlock	self actionBlock: anActionBlock.	self isJsAction: true!

onLoadHook	^ onLoadHook!

onLoadHook: anObject	onLoadHook := anObject!

printHtmlForElementsFrom: start to: end context: aContext on: stream	self		printResultOf: [ :html | 			(start <= self filteredElements size and: [ end >= 1 ])				ifTrue: [ 					self filteredElements						from: (start max: 1)						to: (end min: self filteredElements size)						do: [ :anElement | 							self								renderListTree: (self obtainTreeFor: anElement)								index: (self filteredElements indexOf: anElement)								indentedBy: 1								on: html ] ] ]		context: aContext		on: stream!

printResultOf: aBlock context: aContext on: stream	| document |	document := (WAHtmlDocument on: stream codec: GRNullCodec new)		scriptGenerator: WADefaultScriptGenerator new;		yourself.	aContext document: document.	(WAHtmlCanvas context: aContext)		render: aBlock;		flush.	document scriptGenerator closeOn: document!

printSublistFor: anIntervalRequest context: aContext on: stream	self		printResultOf: [ :html | 			self				renderSublistOf: (self obtainTreeFor: (self obtainElementForPath: anIntervalRequest)) children				parentIndex: anIntervalRequest				indentedBy: (anIntervalRequest occurrencesOf: $:) + 1				on: html ]		context: aContext		on: stream!

renderAnchor: aNode index: anIndex inDiv: div indentedBy: anInteger on: html	| anchor |	anchor := html anchor.	self actionBlock		ifNotNil: [ 			self isJsAction				ifTrue: [ 					anchor						onClick:							((self actionBlock value: aNode element)								onComplete:									((html jQuery id: div) load										html: [ :ajaxHtml | 											self												renderItemContentOf: aNode												index: anIndex												indentedBy: anInteger												on: ajaxHtml ])) ]				ifFalse: [ anchor callback: [ self actionBlock value: aNode element ] ] ].	anchor		with: [ 			html span				class: #item;				id: html nextId;				with: ((self format value: aNode element) ifEmpty: [ $  ]).			self renderHelpOf: aNode element at: html lastId on: html ].	aNode children		ifNotEmpty: [ 			html div				onClick: 'expandCollapse(this)';				class: #icon ]!

renderContentOn: html	self ensureId: html.	html div		id: (self idFor: #nestedList);		class: #nestedList;		class: self listStyle;		with: [ 					self renderFilterFieldOn: html.					html div						id: (self idFor: #listContent);						class: #listContent;						class: #withSearch if: self displayResearchField;						with: [ self renderListOn: html ] ]!

renderFilterFieldOn: html	self displayResearchField ifFalse: [ ^ self ].		html div		class: #listResearchField;		with: [ html				mdlTextFieldContainer: [ html mdlTextFieldLabel						for: (self idFor: #researchFieldId);						with: 'Search'.					html mdlTextFieldInput						id: (self idFor: #researchFieldId);						type: 'text';						value: self displayResearchFilter;						onChange:							(html jQuery ajax								callback: [ :filt | self displayResearchFilter: filt ] value: 'event.target.value' js;								onComplete:									((html jQuery: '#' , (self idFor: #listContainer)) parent load										html: [ :htm | self renderListOn: htm ];										onComplete: (self jsOnLoadHook , ('scrollToSelection();defineExpandable();stopSpinnerOf("' , (self idFor: #researchFieldId) , '")') js))) ].			html mdlSpinner singleColor ]!

renderHelpOf: anItem at: anId on: html	| helpText |	(self helpBlock isNil		or: [ self helpBlock argumentCount = 1 and: [ (helpText := self helpBlock value: anItem) isEmptyOrNil ] ])		ifTrue: [ ^ self ].			html mdlTooltip		large;		for: anId;		with:				(self helpBlock argumentCount = 1						ifTrue: [ helpText ]						ifFalse: [ self helpBlock mdlCull: anItem cull: html ])!

renderIconOf: anItem on: html	self iconBlock ifNil: [ ^ self ].		self		assert: (self iconBlock argumentCount between: 1 and: 2)		description:			'The icon block should have 1 or 2 arguments only. The first argument should be the item to display. If this is the only parameter the block should return a WAComponent to render. The second optional parameter will be an html canvas if you want to render directly something without passing by a component.'.		self iconBlock argumentCount = 1		ifTrue: [ html render: (self iconBlock value: anItem) ]		ifFalse: [ self iconBlock value: anItem value: html ]!

renderItemContentOf: aNode index: anIndex indentedBy: anInteger on: html	| div |	div := html div class: #itemContener.	self hasCustomizationForEntry		ifTrue: [ self entryCustomizationHook mdlCull: div cull: aNode element ].	div		attributeAt: 'draggable' put: 'true';		attributeAt: 'onDragOver'			put: 'if("' , anIndex asString , '" !!= event.dataTransfer.getData("sourceIndex")) {event.preventDefault();}';		attributeAt: 'ondrop' put: 'dropListItem(event, "' , anIndex asString , '");';		attributeAt: 'ondragstart' put: 'dragListItem(event,"' , anIndex asString , '")';		style: 'padding-left: ' , (15 * anInteger) asString , 'px;';		class: #isSelected if: aNode selectedElement;		with: [ 					self renderIconOf: aNode element on: html.					self						renderAnchor: aNode						index: anIndex						inDiv: div						indentedBy: anInteger						on: html.					self renderRightIconOf: aNode element on: html ]!

renderListOn: html	| div |	div := html div		id: (self idFor: #listContainer);		class: #listContainer.	self setDataForCallBackFor: div html: html.	div		with: [ 			| elementsToDisplay firstElementIndex |			elementsToDisplay := self elementsDisplayList.			firstElementIndex := self filteredElements				indexOf: (elementsToDisplay ifEmpty: [ nil ] ifNotEmpty: [ :coll | coll first ]).			html unorderedList				id: (self idFor: #expList);				class: #expList;				with: [ 							elementsToDisplay								doWithIndex: [ :item :index | 									self										renderListTree: (self obtainTreeFor: item)										index: index + firstElementIndex - 1										indentedBy: 1										on: html ] ] ].	self draggableMechanism: html forDiv: div!

renderListTree: aTree index: index indentedBy: indentation on: html	html listItem		class: #expanded if: aTree selectedBranch;		class: #collapsed if: aTree selectedBranch not;		class: #hasChildren if: aTree children isNotEmpty;		attributeAt: #index put: index;		with: [ 					self						renderItemContentOf: aTree						index: index						indentedBy: indentation						on: html.					aTree selectedBranch						ifTrue: [ 							self								renderSublistOf: aTree children								parentIndex: index								indentedBy: indentation								on: html ] ]!

renderRightIconOf: anItem on: html	self rightIconBlock ifNil: [ ^ self ].		self		assert: (self rightIconBlock argumentCount between: 1 and: 2)		description:			'The icon block should have 1 or 2 arguments only. The first argument should be the item to display. If this is the only parameter the block should return a WAComponent to render. The second optional parameter will be an html canvas if you want to render directly something without passing by a component.'.		self rightIconBlock argumentCount = 1		ifTrue: [ html render: (self rightIconBlock value: anItem) ]		ifFalse: [ self rightIconBlock value: anItem value: html ]!

renderSublistOf: children parentIndex: parentIndex indentedBy: anInteger on: html	| sortedChildren |	children ifEmpty: [ ^ self ].		sortedChildren := self childrenSortBlock ifNil: [ children ] ifNotNil: [ :sortBlock | children sorted: [ :node1 :node2 | sortBlock value: node1 element value: node2 element ] ].	html		unorderedList: [ 			sortedChildren				doWithIndex: [ :child :index | 					self						renderListTree: child						index: parentIndex asString, ':', index asString						indentedBy: anInteger + 1						on: html ] ]!

rightIconBlock	^ rightIconBlock!

rightIconBlock: anObject	rightIconBlock := anObject!

selectedEntity	^ selectedEntity!

selectedEntity: anObject	selectedEntity := anObject!

setDataForCallBackFor: div html: html	div		attributeAt: #'data-url' put: html actionUrl asString;		attributeAt: #'data-cbId' put: (self defineScrollCallbackOn: div) asString;		attributeAt: #'data-childrenCbId' put: (self defineChildrenCallbackOn: div) asString;		attributeAt: #'data-listMaxSize' put: self listMaxSize asString;		attributeAt: #'data-lastIndexAsked' put: (self filteredElements indexOf: self selectedEntity ifAbsent: 1) asString;		attributeAt: #'data-onLoadHook' put: self jsOnLoadHook;		attributeAt: #'data-loadingstep' put: self listElementsDynamicalLoadingStep asString!

states	self flag: #BECAREFUL.	"I am absolutly not sure we want to do this. I let it to try but it might be removed."	^ Array with: self!

withResearchField	self displayResearchField: true! !
!MDLNestedList categoriesFor: #actionBlock!accessing!public! !
!MDLNestedList categoriesFor: #actionBlock:!accessing!public! !
!MDLNestedList categoriesFor: #at:ifPresent:!private! !
!MDLNestedList categoriesFor: #beCompact!accessing!public! !
!MDLNestedList categoriesFor: #beStandard!accessing!public! !
!MDLNestedList categoriesFor: #children:!accessing!public! !
!MDLNestedList categoriesFor: #childrenBlock!accessing!public! !
!MDLNestedList categoriesFor: #childrenBlock:!accessing!public! !
!MDLNestedList categoriesFor: #childrenSortBlock!accessing!public! !
!MDLNestedList categoriesFor: #childrenSortBlock:!accessing!public! !
!MDLNestedList categoriesFor: #defineChildrenCallbackOn:!javascript!public! !
!MDLNestedList categoriesFor: #defineScrollCallbackOn:!javascript!public! !
!MDLNestedList categoriesFor: #displayResearchField!accessing!public! !
!MDLNestedList categoriesFor: #displayResearchField:!accessing!public! !
!MDLNestedList categoriesFor: #displayResearchFilter!accessing!public! !
!MDLNestedList categoriesFor: #displayResearchFilter:!accessing!public! !
!MDLNestedList categoriesFor: #dragAndDropBlock!accessing!public! !
!MDLNestedList categoriesFor: #dragAndDropBlock:!accessing!public! !
!MDLNestedList categoriesFor: #draggableMechanism:forDiv:!draggable!public! !
!MDLNestedList categoriesFor: #draggableScript:cb:!draggable!public! !
!MDLNestedList categoriesFor: #elements!accessing!public! !
!MDLNestedList categoriesFor: #elements:!accessing!public! !
!MDLNestedList categoriesFor: #elementsDisplayList!accessing!public! !
!MDLNestedList categoriesFor: #entryCustomizationHook!accessing!public! !
!MDLNestedList categoriesFor: #entryCustomizationHook:!accessing!public! !
!MDLNestedList categoriesFor: #filter!accessing!public! !
!MDLNestedList categoriesFor: #filter:!accessing!public! !
!MDLNestedList categoriesFor: #filteredElements!accessing!public! !
!MDLNestedList categoriesFor: #filterInsensitiveBeginsWith!accessing!public! !
!MDLNestedList categoriesFor: #filterInsensitiveSubstring!accessing!public! !
!MDLNestedList categoriesFor: #filterPseudoRegex!accessing!public! !
!MDLNestedList categoriesFor: #filterSensitiveBeginsWith!accessing!public! !
!MDLNestedList categoriesFor: #filterSubstring!accessing!public! !
!MDLNestedList categoriesFor: #format!accessing!public! !
!MDLNestedList categoriesFor: #format:!accessing!public! !
!MDLNestedList categoriesFor: #hasCustomizationForEntry!public!testing! !
!MDLNestedList categoriesFor: #hasDraggableItems!public!testing! !
!MDLNestedList categoriesFor: #helpBlock!accessing!public! !
!MDLNestedList categoriesFor: #helpBlock:!accessing!public! !
!MDLNestedList categoriesFor: #iconBlock!accessing!public! !
!MDLNestedList categoriesFor: #iconBlock:!accessing!public! !
!MDLNestedList categoriesFor: #idFor:!private! !
!MDLNestedList categoriesFor: #indexOfRootElementContainingSelectedEntity!accessing!public! !
!MDLNestedList categoriesFor: #initialize!initialization!public! !
!MDLNestedList categoriesFor: #isIncludingSelectedChildren:!positionning!public! !
!MDLNestedList categoriesFor: #isJsAction!accessing!public! !
!MDLNestedList categoriesFor: #isJsAction:!accessing!public! !
!MDLNestedList categoriesFor: #jsOnLoadHook!javascript!public! !
!MDLNestedList categoriesFor: #listElementsDynamicalLoadingStep!accessing!public! !
!MDLNestedList categoriesFor: #listMaxSize!accessing!public! !
!MDLNestedList categoriesFor: #listMaxSize:!accessing!public! !
!MDLNestedList categoriesFor: #listStyle!accessing!public! !
!MDLNestedList categoriesFor: #listStyle:!accessing!public! !
!MDLNestedList categoriesFor: #obtainElementForPath:!private! !
!MDLNestedList categoriesFor: #obtainTreeFor:!private! !
!MDLNestedList categoriesFor: #obtainTreeFor:caches:!private! !
!MDLNestedList categoriesFor: #onClickJs:!accessing!public! !
!MDLNestedList categoriesFor: #onLoadHook!accessing!public! !
!MDLNestedList categoriesFor: #onLoadHook:!accessing!public! !
!MDLNestedList categoriesFor: #printHtmlForElementsFrom:to:context:on:!public!rendering! !
!MDLNestedList categoriesFor: #printResultOf:context:on:!public!rendering! !
!MDLNestedList categoriesFor: #printSublistFor:context:on:!public!rendering! !
!MDLNestedList categoriesFor: #renderAnchor:index:inDiv:indentedBy:on:!public!rendering! !
!MDLNestedList categoriesFor: #renderContentOn:!public!rendering! !
!MDLNestedList categoriesFor: #renderFilterFieldOn:!public!researchField! !
!MDLNestedList categoriesFor: #renderHelpOf:at:on:!public!rendering! !
!MDLNestedList categoriesFor: #renderIconOf:on:!public!rendering! !
!MDLNestedList categoriesFor: #renderItemContentOf:index:indentedBy:on:!public!rendering! !
!MDLNestedList categoriesFor: #renderListOn:!public!rendering! !
!MDLNestedList categoriesFor: #renderListTree:index:indentedBy:on:!public!rendering! !
!MDLNestedList categoriesFor: #renderRightIconOf:on:!public!rendering! !
!MDLNestedList categoriesFor: #renderSublistOf:parentIndex:indentedBy:on:!public!rendering! !
!MDLNestedList categoriesFor: #rightIconBlock!accessing!public! !
!MDLNestedList categoriesFor: #rightIconBlock:!accessing!public! !
!MDLNestedList categoriesFor: #selectedEntity!accessing!public! !
!MDLNestedList categoriesFor: #selectedEntity:!accessing!public! !
!MDLNestedList categoriesFor: #setDataForCallBackFor:html:!javascript!public! !
!MDLNestedList categoriesFor: #states!hooks!public! !
!MDLNestedList categoriesFor: #withResearchField!public!researchField! !

!MDLNestedList class methodsFor!

elements: aCollection	^ self new		elements: aCollection;		yourself!

elements: aCollection children: aBlockOrSymbole	^ (self elements: aCollection)		childrenBlock: aBlockOrSymbole;		yourself! !
!MDLNestedList class categoriesFor: #elements:!instance creation!public! !
!MDLNestedList class categoriesFor: #elements:children:!instance creation!public! !

