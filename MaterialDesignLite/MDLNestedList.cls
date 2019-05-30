﻿"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLNestedList
	instanceVariableNames: 'elements entryCustomizationHook filteredElements format actionBlock isJsAction selectedEntity helpBlock iconBlock rightIconBlock childrenBlock dragAndDropBlock displayResearchField displayResearchFilter filter listStyle onLoadHook listMaxSize childrenSortBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLNestedList guid: (GUID fromString: '{6a527376-e186-41ac-8efb-7dcc5f576cee}')!
MDLNestedList comment: 'I am a component use to display nicely a list of elements. 
!MDLNestedList categoriesForClass!Material-Design-Lite-Widgets-List! !
!MDLNestedList methodsFor!

actionBlock

actionBlock: aBlock

at: anInteger ifPresent: aBlockClosure 

beCompact

beStandard

children: aBlockOrSymbol

childrenBlock

childrenBlock: anObject

childrenSortBlock

childrenSortBlock: aBlock

defineChildrenCallbackOn: aDiv

defineScrollCallbackOn: aDiv

displayResearchField

displayResearchField: aBoolean

displayResearchFilter

displayResearchFilter: aFilter

dragAndDropBlock

dragAndDropBlock: anObject

draggableMechanism: html forDiv: div

draggableScript:url cb: draggableCb

elements

elements: anObject

elementsDisplayList

entryCustomizationHook

entryCustomizationHook: anObject

filter

filter: anObject

filteredElements

filterInsensitiveBeginsWith

filterInsensitiveSubstring

filterPseudoRegex

filterSensitiveBeginsWith

filterSubstring

format

format: anObject

hasCustomizationForEntry

hasDraggableItems

helpBlock

helpBlock: anObject

iconBlock

iconBlock: anObject

idFor: aSymbol

indexOfRootElementContainingSelectedEntity

initialize

isIncludingSelectedChildren: anElement

isJsAction

isJsAction: anObject

jsOnLoadHook

listElementsDynamicalLoadingStep

listMaxSize

listMaxSize: anObject

listStyle

listStyle: anObject

obtainElementForPath: aPath

obtainTreeFor: anElement

obtainTreeFor: anElement caches: obtainedTree

onClickJs: anActionBlock

onLoadHook

onLoadHook: anObject

printHtmlForElementsFrom: start to: end context: aContext on: stream

printResultOf: aBlock context: aContext on: stream

printSublistFor: anIntervalRequest context: aContext on: stream

renderAnchor: aNode index: anIndex inDiv: div indentedBy: anInteger on: html

renderContentOn: html

renderFilterFieldOn: html

renderHelpOf: anItem at: anId on: html

renderIconOf: anItem on: html

renderItemContentOf: aNode index: anIndex indentedBy: anInteger on: html

renderListOn: html

renderListTree: aTree index: index indentedBy: indentation on: html

renderRightIconOf: anItem on: html

renderSublistOf: children parentIndex: parentIndex indentedBy: anInteger on: html

rightIconBlock

rightIconBlock: anObject

selectedEntity

selectedEntity: anObject

setDataForCallBackFor: div html: html

states

withResearchField
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

elements: aCollection

elements: aCollection children: aBlockOrSymbole
!MDLNestedList class categoriesFor: #elements:!instance creation!public! !
!MDLNestedList class categoriesFor: #elements:children:!instance creation!public! !
