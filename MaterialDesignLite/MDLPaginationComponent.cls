﻿"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLPaginationComponent
	instanceVariableNames: 'currentPage numberOfPages adjacentsPagesToShow updateBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPaginationComponent guid: (GUID fromString: '{ef292174-19f9-4794-92f7-5e949b15b70a}')!
MDLPaginationComponent comment: 'I am a component to display a pagination widget.
!MDLPaginationComponent categoriesForClass!Material-Design-Lite-Extensions-Pagination! !
!MDLPaginationComponent methodsFor!

adjacentsPagesToShow

adjacentsPagesToShow: anInteger

currentPage

currentPage: anInteger

defaultNumberOfAdjacentsPagesToShow

firstPage

jsAjaxPageChangedCallback: callback on: html

lastPage

minPage

nextPage

numberOfPages

numberOfPages: anIntegerOrBlock

pagesButtonsToRender

pageSelectionComponent

previousPage

renderButtonWithIconNamed: aSymbol callback: aBlock disabledIf: aBoolean on: html

renderContentOn: html

renderFirstDisabledButtonOn: html

renderLastDisabledButtonOn: html

renderNextButtonsOn: html

renderPagesButtonsOn: html

renderPaginationComponentOn: html

renderPreviousButtonsOn: html

shouldShowFirstDisabledButton

shouldShowLastDisabledButton

updateBlock

updateBlock: aBlock
!MDLPaginationComponent categoriesFor: #adjacentsPagesToShow!accessing!public! !
!MDLPaginationComponent categoriesFor: #adjacentsPagesToShow:!accessing!public! !
!MDLPaginationComponent categoriesFor: #currentPage!accessing!public! !
!MDLPaginationComponent categoriesFor: #currentPage:!accessing!public! !
!MDLPaginationComponent categoriesFor: #defaultNumberOfAdjacentsPagesToShow!accessing!public! !
!MDLPaginationComponent categoriesFor: #firstPage!actions!public! !
!MDLPaginationComponent categoriesFor: #jsAjaxPageChangedCallback:on:!javascript!public! !
!MDLPaginationComponent categoriesFor: #lastPage!actions!public! !
!MDLPaginationComponent categoriesFor: #minPage!accessing!public! !
!MDLPaginationComponent categoriesFor: #nextPage!actions!public! !
!MDLPaginationComponent categoriesFor: #numberOfPages!accessing!public! !
!MDLPaginationComponent categoriesFor: #numberOfPages:!accessing!public! !
!MDLPaginationComponent categoriesFor: #pagesButtonsToRender!accessing!public! !
!MDLPaginationComponent categoriesFor: #pageSelectionComponent!components!public! !
!MDLPaginationComponent categoriesFor: #previousPage!actions!public! !
!MDLPaginationComponent categoriesFor: #renderButtonWithIconNamed:callback:disabledIf:on:!public!rendering! !
!MDLPaginationComponent categoriesFor: #renderContentOn:!public!rendering! !
!MDLPaginationComponent categoriesFor: #renderFirstDisabledButtonOn:!public!rendering! !
!MDLPaginationComponent categoriesFor: #renderLastDisabledButtonOn:!public!rendering! !
!MDLPaginationComponent categoriesFor: #renderNextButtonsOn:!public!rendering! !
!MDLPaginationComponent categoriesFor: #renderPagesButtonsOn:!public!rendering! !
!MDLPaginationComponent categoriesFor: #renderPaginationComponentOn:!public!rendering! !
!MDLPaginationComponent categoriesFor: #renderPreviousButtonsOn:!public!rendering! !
!MDLPaginationComponent categoriesFor: #shouldShowFirstDisabledButton!public!testing! !
!MDLPaginationComponent categoriesFor: #shouldShowLastDisabledButton!public!testing! !
!MDLPaginationComponent categoriesFor: #updateBlock!accessing!public! !
!MDLPaginationComponent categoriesFor: #updateBlock:!accessing!public! !

!MDLPaginationComponent class methodsFor!

defaultNumberOfAdjacentsPagesToShow

numberOfPages: aBlockOrInteger

numberOfPages: aBlockOrInteger updateBlock: aBlock
!MDLPaginationComponent class categoriesFor: #defaultNumberOfAdjacentsPagesToShow!accessing!public! !
!MDLPaginationComponent class categoriesFor: #numberOfPages:!instance creation!public! !
!MDLPaginationComponent class categoriesFor: #numberOfPages:updateBlock:!instance creation!public! !
