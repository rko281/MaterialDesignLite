"Filed out from Dolphin Smalltalk 7"!

MDLWidgetDemo subclass: #MDLTabScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTabScreen guid: (GUID fromString: '{8587f220-fcba-43d9-af6e-21f46bc215f2}')!
MDLTabScreen comment: 'Screen to render MDLTabWidget examples'!
!MDLTabScreen categoriesForClass!Material-Design-Lite-Demo-Widgets! !
!MDLTabScreen methodsFor!

renderScreenContentOn: html	self render: self tabs on: html!

renderTabsOn: html	html		render:			(MDLTabWidget new				addTabNamed: 'Tab 1' content: 'First tab';				addTabNamed: 'Tab 2' content: 'Second tab';				yourself)!

tabs	^ OrderedDictionary new		add: 'Tab Widget' -> #renderTabsOn:;		yourself! !
!MDLTabScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLTabScreen categoriesFor: #renderTabsOn:!demos!public! !
!MDLTabScreen categoriesFor: #tabs!public!sections! !

!MDLTabScreen class methodsFor!

description	^ 'A tab widget.'!

icon	^ #complayoutPng!

title	^ 'Tabs'! !
!MDLTabScreen class categoriesFor: #description!accessing!public! !
!MDLTabScreen class categoriesFor: #icon!accessing!public! !
!MDLTabScreen class categoriesFor: #title!accessing!public! !

