"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLTabsPanel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTabsPanel guid: (GUID fromString: '{3375814a-f6a4-4878-9c06-6b691765e5e0}')!
MDLTabsPanel comment: 'Description--------------------I''m a Panel that can be used as a Tab.Example--------------------	| famillies |	famillies := OrderedDictionary		with: ''Starks'' 		-> #(''Eddard'' ''Catelyn'' ''Robb'' ''Sansa'' ''Brandon'' ''Rickon'' ''Arya'')		with: ''Lanisters'' 	-> #(''Tywin'' ''Cersei'' ''Jamie'' ''Tyrion'')		with: ''Targaryens'' 	-> #(''Viserys'' ''Daenerys'').	html		mdlTabs: [ html mdlTabBar				rippleEffect;				with: [ famillies						keysDo: [ :familly | 							html mdlTab								isActiveIf: familly = ''Starks'';								url: ''#'' , familly;								with: familly ] ].			famillies				keysAndValuesDo: [ :familly :members | 					html mdlTabsPanel						isActiveIf: familly = ''Starks'';						id: familly;						with: [ html unorderedList: [ members do: [ :member | html listItem: member ] ] ] ] ]'!
!MDLTabsPanel categoriesForClass!Material-Design-Lite-Components-Nav! !
!MDLTabsPanel methodsFor!

initialize	super initialize.	self class: 'mdl-tabs__panel'!

isActive	self class: 'is-active'!

isActiveIf: aBoolean	aBoolean ifTrue: [ self isActive ]! !
!MDLTabsPanel categoriesFor: #initialize!initialization!public! !
!MDLTabsPanel categoriesFor: #isActive!options!public! !
!MDLTabsPanel categoriesFor: #isActiveIf:!options!public! !

