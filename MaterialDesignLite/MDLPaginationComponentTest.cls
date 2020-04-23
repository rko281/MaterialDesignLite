"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #MDLPaginationComponentTest
	instanceVariableNames: 'component'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLPaginationComponentTest guid: (GUID fromString: '{cd2f4cf8-d0a5-4492-b7a4-d11fba741737}')!
MDLPaginationComponentTest comment: ''!
!MDLPaginationComponentTest categoriesForClass!Material-Design-Lite-Extensions-Tests-Pagination! !
!MDLPaginationComponentTest methodsFor!

actualClass	^ MDLPaginationComponent !

defaultNumberOfPages	^ 20!

newInstance	^ self actualClass numberOfPages: self defaultNumberOfPages!

setUp	super setUp.	component := self newInstance!

testCurrentPage	component currentPage: 10.	self assert: component currentPage equals: 10.	self should: [ component currentPage: -1 ] raise: SubscriptOutOfBounds.	self should: [ component currentPage: self defaultNumberOfPages + 1 ] raise: SubscriptOutOfBounds!

testFirstPage	component currentPage: 10.	component firstPage.	self assert: component currentPage equals: 1!

testFirstPageInExtremCase	component := self actualClass numberOfPages: 0.	component firstPage.	self assert: component currentPage equals: 0!

testLastPage	component currentPage: 10.	component lastPage.	self assert: component currentPage equals: self defaultNumberOfPages!

testLastPageInExtremCase	component := self actualClass numberOfPages: 0.	component lastPage.	self assert: component currentPage equals: 0!

testNextPage	component currentPage: 10.	component nextPage.	self assert: component currentPage equals: 11!

testPagesButtonsToRender	component currentPage: 10.	component adjacentsPagesToShow: 2.	self assert: component pagesButtonsToRender equals: (8 to: 12).	component adjacentsPagesToShow: 4.	self assert: component pagesButtonsToRender equals: (6 to: 14)!

testPreviousPage	component currentPage: 10.	component previousPage.	self assert: component currentPage equals: 9!

testShouldShowFirstDisabledButton	component firstPage.	self deny: component shouldShowFirstDisabledButton.	component		adjacentsPagesToShow: 3;		currentPage: 4.	self deny: component shouldShowFirstDisabledButton.	component currentPage: 5.	self assert: component shouldShowFirstDisabledButton.	component adjacentsPagesToShow: 4.	self deny: component shouldShowFirstDisabledButton!

testShouldShowLastDisabledButton	component lastPage.	self deny: component shouldShowLastDisabledButton.	component		adjacentsPagesToShow: 3;		currentPage: self defaultNumberOfPages - 3.	self deny: component shouldShowLastDisabledButton.	component currentPage: self defaultNumberOfPages - 4.	self assert: component shouldShowLastDisabledButton.	component adjacentsPagesToShow: 4.	self deny: component shouldShowLastDisabledButton!

testUpdateBlockUseAjax	self assert: [ :html | html render: component ] generatedIncludes: '<a href="/?3">2</a>'.	component := self actualClass numberOfPages: 20 updateBlock: [ :a :b | "something" ].	self assert: [ :html | html render: component ] generatedIncludes: '<button onclick="$.ajax('! !
!MDLPaginationComponentTest categoriesFor: #actualClass!helpers!public! !
!MDLPaginationComponentTest categoriesFor: #defaultNumberOfPages!helpers!public! !
!MDLPaginationComponentTest categoriesFor: #newInstance!helpers!public! !
!MDLPaginationComponentTest categoriesFor: #setUp!public!running! !
!MDLPaginationComponentTest categoriesFor: #testCurrentPage!public!tests! !
!MDLPaginationComponentTest categoriesFor: #testFirstPage!public!tests! !
!MDLPaginationComponentTest categoriesFor: #testFirstPageInExtremCase!public!tests! !
!MDLPaginationComponentTest categoriesFor: #testLastPage!public!tests! !
!MDLPaginationComponentTest categoriesFor: #testLastPageInExtremCase!public!tests! !
!MDLPaginationComponentTest categoriesFor: #testNextPage!public!tests! !
!MDLPaginationComponentTest categoriesFor: #testPagesButtonsToRender!public!tests! !
!MDLPaginationComponentTest categoriesFor: #testPreviousPage!public!tests! !
!MDLPaginationComponentTest categoriesFor: #testShouldShowFirstDisabledButton!public!tests! !
!MDLPaginationComponentTest categoriesFor: #testShouldShowLastDisabledButton!public!tests! !
!MDLPaginationComponentTest categoriesFor: #testUpdateBlockUseAjax!public!tests! !

