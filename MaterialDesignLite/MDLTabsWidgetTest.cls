"Filed out from Dolphin Smalltalk 7"!

MDLAbstractSeasideTestCase subclass: #MDLTabsWidgetTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTabsWidgetTest guid: (GUID fromString: '{a64a1bc5-70e1-4cb6-841c-1b644e4b780d}')!
MDLTabsWidgetTest comment: ''!
!MDLTabsWidgetTest categoriesForClass!Material-Design-Lite-Widgets-Tests-Tab! !
!MDLTabsWidgetTest methodsFor!

testAddTabNamedContent	self		assert: [ :html | 			html				render:					(MDLTabWidget new						addTabNamed: 'Tab label' content: 'Tab content';						yourself) ]		generatedIncludesAll: #('<a class="mdl-tabs__tab is-active" href="#id2">Tab label</a>' '<div class="mdl-tabs__panel is-active" id="id2">Tab content</div>')!

testEmptyWidget	self assert: [ :html | html render: MDLTabWidget new ] generates: '<div class="mdl-tabs mdl-js-tabs" id="id1"><div class="mdl-tabs__tab-bar"></div></div>'!

testId	self		assert: [ :html | 			html				render:					(MDLTabWidget new						id: 'ThisIsAnIdTest';						yourself) ]		generatedIncludes: 'id="ThisIsAnIdTest"'!

testWithTwoTabs	self		assert: [ :html | 			html				render:					(MDLTabWidget new						addTabNamed: 'Tab label' content: 'Tab content';						addTabNamed: 'Tab label 2' content: 'Tab content 2';						yourself) ]		generatedIncludesAll: #('<a class="mdl-tabs__tab is-active" href="#id2">Tab label</a>' '<div class="mdl-tabs__panel is-active" id="id2">Tab content</div>' '<a class="mdl-tabs__tab" href="#id3">Tab label 2</a>' '<div class="mdl-tabs__panel" id="id3">Tab content 2</div>')! !
!MDLTabsWidgetTest categoriesFor: #testAddTabNamedContent!public!tests! !
!MDLTabsWidgetTest categoriesFor: #testEmptyWidget!public!tests! !
!MDLTabsWidgetTest categoriesFor: #testId!public!tests! !
!MDLTabsWidgetTest categoriesFor: #testWithTwoTabs!public!tests! !

