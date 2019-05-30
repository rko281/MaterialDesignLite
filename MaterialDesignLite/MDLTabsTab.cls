"Filed out from Dolphin Smalltalk 7"!

WAAnchorTag subclass: #MDLTabsTab
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTabsTab guid: (GUID fromString: '{3c7ce71c-a0a4-4e75-969d-7647bd33972e}')!
MDLTabsTab comment: 'Description--------------------I am a brush to create a MDL tab.Example--------------------	| famillies |	famillies := OrderedDictionary		with: ''Starks'' 		-> #(''Eddard'' ''Catelyn'' ''Robb'' ''Sansa'' ''Brandon'' ''Rickon'' ''Arya'')		with: ''Lanisters'' 	-> #(''Tywin'' ''Cersei'' ''Jamie'' ''Tyrion'')		with: ''Targaryens'' 	-> #(''Viserys'' ''Daenerys'').	html		mdlTabs: [ html mdlTabBar				rippleEffect;				with: [ famillies						keysDo: [ :familly | 							html mdlTab								isActiveIf: familly = ''Starks'';								url: ''#'' , familly;								with: familly ] ].			famillies				keysAndValuesDo: [ :familly :members | 					html mdlTabsPanel						isActiveIf: familly = ''Starks'';						id: familly;						with: [ html unorderedList: [ members do: [ :member | html listItem: member ] ] ] ] ]'!
!MDLTabsTab categoriesForClass!Material-Design-Lite-Components-Nav! !
!MDLTabsTab methodsFor!

initialize	super initialize.	self class: 'mdl-tabs__tab'!

isActive	self class: 'is-active'!

isActiveIf: aBoolean	aBoolean ifTrue: [ self isActive ]! !
!MDLTabsTab categoriesFor: #initialize!initialization!public! !
!MDLTabsTab categoriesFor: #isActive!options!public! !
!MDLTabsTab categoriesFor: #isActiveIf:!options!public! !

