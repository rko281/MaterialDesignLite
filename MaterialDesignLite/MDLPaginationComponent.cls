"Filed out from Dolphin Smalltalk 7"!

MDLWidget subclass: #MDLPaginationComponent
	instanceVariableNames: 'currentPage numberOfPages adjacentsPagesToShow updateBlock'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPaginationComponent guid: (GUID fromString: '{ef292174-19f9-4794-92f7-5e949b15b70a}')!
MDLPaginationComponent comment: 'I am a component to display a pagination widget.Description------------------I display buttons to navigate between pages on a component. I just need to know the max number of pages and then I will manages the pages. My container will be able to use my #currentPage to know what to display.I will not display all the pages buttons, but the adjecents buttons of the current page. By default I show 2 buttons before and after the current button.I offer the possibility to the user to define a block to update the page without refreshing the page via ajax.Public API and Key Messages------------------ #firstPage 			select the first page- #previousPage 		select the page before the current page- #nextPage 				select the page after the current page- #lastPage 				select the last page- #currentPage 			return the number of the current page. This should be use by my container to know what to show for the current page.Examples-----------------	| myColl |	myColl := 1 to: 150.	(MDLPaginationComponent numberOfPages: [ myColl size / 24 roundUpTo: 1 ]) 	"Note the use of a block. If my collection change, the number of pages will be updated."		adjacentsPagesToShow: 3;		yourself			MDLPaginationComponent		numberOfPages: [ self numbersOfPages ]		updateBlock: [ :s :html | 			(s << (html jQuery id: #''main-content'') load)				html: [ :ajaxHtml | self renderMainContentOn: ajaxHtml ];				onComplete: ''componentHandler.upgradeDom();'' ] "The onComplete will update réinitialize the MDL elements" Internal Representation and Key Implementation Points.-----------------    Instance Variables	adjacentsPagesToShow:		<anInteger>				The number of pages to show before and after the current page	currentPage:					<anInteger>				The current page	numberOfPages:				<anIntegerOrBlock>		The maximum number of page or a block returning it	updateBlock: 				<aBlock>					An optional block. If the block is not nil then the pagination widget will not refresh the page but update it with ajax. The block takes 2 parameters: a stream and a html canvas. See previous examples for more details.'!
!MDLPaginationComponent categoriesForClass!Material-Design-Lite-Extensions-Pagination! !
!MDLPaginationComponent methodsFor!

adjacentsPagesToShow	^ adjacentsPagesToShow ifNil: [ adjacentsPagesToShow := self defaultNumberOfAdjacentsPagesToShow ]!

adjacentsPagesToShow: anInteger	self assert: anInteger positive.	adjacentsPagesToShow := anInteger!

currentPage	^ currentPage value!

currentPage: anInteger	(anInteger between: self minPage and: self numberOfPages)		ifFalse: [ SubscriptOutOfBounds				signalFor: anInteger				lowerBound: self minPage				upperBound: self numberOfPages				in: self ].	currentPage := anInteger!

defaultNumberOfAdjacentsPagesToShow	^ self class defaultNumberOfAdjacentsPagesToShow!

firstPage	^ self currentPage: self minPage!

jsAjaxPageChangedCallback: callback on: html	^ html jQuery ajax		callback: callback;		context: 'this' js;		onSuccess:			(html jQuery				script: [ :s |					s << ((html jQuery this parents: #'.mdl-pagination') load html: [ :ajaxHtml | self renderPaginationComponentOn: ajaxHtml ]).					self updateBlock value: s value: html ])!

lastPage	^ self currentPage: self numberOfPages!

minPage	^ 1 min: self numberOfPages!

nextPage	^ self currentPage: self currentPage + 1!

numberOfPages	^ numberOfPages value!

numberOfPages: anIntegerOrBlock	numberOfPages := anIntegerOrBlock.	self firstPage!

pagesButtonsToRender	^ (self currentPage - self adjacentsPagesToShow max: 1) to: (self currentPage + self adjacentsPagesToShow min: self numberOfPages)!

pageSelectionComponent	^ (MDLSelectWidget		possibilities: (1 to: self numberOfPages)		inputLabel: 'Page'		labelBlock: [ :int | 			String				streamContents: [ :s | 					s						print: int;						<< ' of ';						print: self numberOfPages ] ]		callback: [ :int | self currentPage: int ]		selectedObject: self currentPage)		beAutoSubmit;		yourself!

previousPage	^ self currentPage: self currentPage - 1!

renderButtonWithIconNamed: aSymbol callback: aBlock disabledIf: aBoolean on: html	(self updateBlock isNil and: [ aBoolean not ])		ifTrue: [ html mdlAnchorButton				accentColor;				callback: aBlock;				icon: aSymbol ]		ifFalse: [ html mdlButton				accentColor;				disabled: aBoolean;				onClick: [ self jsAjaxPageChangedCallback: aBlock on: html ] if: aBoolean not;				icon: aSymbol ]!

renderContentOn: html	self ensureId: html.	html div		id: self id;		class: 'mdl-pagination';		with: [ self renderPaginationComponentOn: html ]!

renderFirstDisabledButtonOn: html	self shouldShowFirstDisabledButton ifFalse: [ ^ self ].	html button		disabled;		with: '…'!

renderLastDisabledButtonOn: html	self shouldShowLastDisabledButton ifFalse: [ ^ self ].		html button		disabled;		with: '…'!

renderNextButtonsOn: html	self		renderButtonWithIconNamed: #keyboard_arrow_right		callback: [ self nextPage ]		disabledIf: self currentPage = self numberOfPages		on: html.	self		renderButtonWithIconNamed: #last_page		callback: [ self lastPage ]		disabledIf: self currentPage = self numberOfPages		on: html!

renderPagesButtonsOn: html	self pagesButtonsToRender		do: [ :int | 			self updateBlock				ifNil: [ html anchor						class: 'mdl-color-text--accent mdl-pagination__current' if: self currentPage = int;						callback: [ self currentPage: int ];						with: int ]				ifNotNil: [ :blk | 					html button						class: 'mdl-color-text--accent mdl-pagination__current' if: self currentPage = int;						onClick: (self jsAjaxPageChangedCallback: [ self currentPage: int ] on: html);						with: int ] ]!

renderPaginationComponentOn: html	html div		class: 'mdl-pagination__container';		with: [ html div				class: 'mdl-pagination__pages';				with: [ self renderPreviousButtonsOn: html.					html div						class: 'mdl-pagination__pages-buttons';						with: [ self renderFirstDisabledButtonOn: html.							self renderPagesButtonsOn: html.							self renderLastDisabledButtonOn: html ].					self renderNextButtonsOn: html ].			html form: self pageSelectionComponent ]!

renderPreviousButtonsOn: html	self		renderButtonWithIconNamed: #first_page		callback: [ self firstPage ]		disabledIf: self currentPage = 1		on: html.	self		renderButtonWithIconNamed: #keyboard_arrow_left		callback: [ self previousPage ]		disabledIf: self currentPage = 1		on: html!

shouldShowFirstDisabledButton	^ self currentPage > (self adjacentsPagesToShow + 1)!

shouldShowLastDisabledButton	^ self currentPage < (self numberOfPages - self adjacentsPagesToShow max: 0)!

updateBlock	^ updateBlock!

updateBlock: aBlock	self assert: aBlock numArgs = 2 description: 'The update block should take 2 parameters. The first one is a stream and the second a html canvas. '.	updateBlock := aBlock! !
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

defaultNumberOfAdjacentsPagesToShow	^ 2!

numberOfPages: aBlockOrInteger	^ self new		numberOfPages: aBlockOrInteger;		yourself!

numberOfPages: aBlockOrInteger updateBlock: aBlock	^ self new		numberOfPages: aBlockOrInteger;		updateBlock: aBlock;		yourself! !
!MDLPaginationComponent class categoriesFor: #defaultNumberOfAdjacentsPagesToShow!accessing!public! !
!MDLPaginationComponent class categoriesFor: #numberOfPages:!instance creation!public! !
!MDLPaginationComponent class categoriesFor: #numberOfPages:updateBlock:!instance creation!public! !

