"Filed out from Dolphin Smalltalk 7"!

MDLAbstractLayoutSection subclass: #MDLLinkingLayoutSection
	instanceVariableNames: 'links'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLinkingLayoutSection guid: (GUID fromString: '{a6c0f8c0-41ab-4fef-932c-c3a59ceacc9e}')!
MDLLinkingLayoutSection comment: ''!
!MDLLinkingLayoutSection categoriesForClass!Material-Design-Lite-Widgets-Header! !
!MDLLinkingLayoutSection methodsFor!

initialize	super initialize.	links := OrderedCollection new.!

links	^ links!

links: anOrderedCollection	"This should be a collection of dictionaries Text -> callback"	links := anOrderedCollection!

renderLinksOn: html	self links		do: [ :aDictionary | 			html				mdlNavigation: [ 					aDictionary						keysAndValuesDo: [ :label :callback | 							html mdlNavigationLink								callback: callback;								with: label ] ].			html mdlLayoutSpacer ]! !
!MDLLinkingLayoutSection categoriesFor: #initialize!initialization!public! !
!MDLLinkingLayoutSection categoriesFor: #links!accessing!public! !
!MDLLinkingLayoutSection categoriesFor: #links:!accessing!public! !
!MDLLinkingLayoutSection categoriesFor: #renderLinksOn:!public!rendering! !

