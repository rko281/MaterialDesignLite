"Filed out from Dolphin Smalltalk 7"!

SGTAbstractSeasideTestCase subclass: #MDLProgressBarWidgetTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLProgressBarWidgetTests guid: (GUID fromString: '{7b560083-ddf3-46f8-b14a-9080fc5dfc04}')!
MDLProgressBarWidgetTests comment: ''!
!MDLProgressBarWidgetTests categoriesForClass!Material-Design-Lite-Widgets-Tests-Loading! !
!MDLProgressBarWidgetTests methodsFor!

testHidden	| bar |	bar := MDLProgressBarWidget new.	bar hide: false.	self assert: [ :html | html render: bar ] generatedIncludes: 'MaterialProgress.setProgress'.	bar hidden.	self deny: [ :html | html render: bar ] generatedIncludes: 'MaterialProgress.setProgress'.	!

testRefreshTime	| bar |	bar := MDLProgressBarWidget new.	bar refreshTime: 100 milliSeconds.	self assert: [ :html | html render: bar ] generatedIncludesAll: #('setInterval' '100').	self deny: [ :html | html render: bar ] generatedIncludes: '10000'.	bar refreshTime: 10 seconds.	self assert: [ :html | html render: bar ] generatedIncludesAll: #('setInterval' '10000')! !
!MDLProgressBarWidgetTests categoriesFor: #testHidden!public!tests! !
!MDLProgressBarWidgetTests categoriesFor: #testRefreshTime!public!tests! !

