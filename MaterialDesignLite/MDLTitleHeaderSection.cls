"Filed out from Dolphin Smalltalk 7"!

MDLAbstractHeaderSection subclass: #MDLTitleHeaderSection
	instanceVariableNames: 'app tabs activeTab'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTitleHeaderSection guid: (GUID fromString: '{e4b361aa-b322-4496-a7d7-2b40956aab1c}')!
MDLTitleHeaderSection comment: 'I''m a custom header section used to display the title of the displayed screen in the header.'!
!MDLTitleHeaderSection categoriesForClass!Material-Design-Lite-Core! !
!MDLTitleHeaderSection methodsFor!

activeTab: key	activeTab := key!

app	^ app!

app: anObject	app := anObject!

initialize	super initialize.	tabs := OrderedDictionary new.!

renderContentOn: html	(html brush: brush)		waterfall;		with: [ html mdlLayoutHeaderRow: [ html mdlLayoutTitle: self app activeScreen title ].			html				mdlLayoutTabBar: [ html mdlLayoutSpacer.					tabs						keysAndValuesDo: [ :aLabel :aCallback | 							html mdlLayoutTab								callback: aCallback;								isActiveIf: aLabel = activeTab;								with: aLabel ].					html mdlLayoutSpacer ] ]!

tabs: tabsCollection	tabs addAll: tabsCollection! !
!MDLTitleHeaderSection categoriesFor: #activeTab:!accessing!public! !
!MDLTitleHeaderSection categoriesFor: #app!accessing!public! !
!MDLTitleHeaderSection categoriesFor: #app:!accessing!public! !
!MDLTitleHeaderSection categoriesFor: #initialize!initialization!public! !
!MDLTitleHeaderSection categoriesFor: #renderContentOn:!public!rendering! !
!MDLTitleHeaderSection categoriesFor: #tabs:!accessing!public! !

