"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLTabsTabBar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTabsTabBar guid: (GUID fromString: '{c0f52ba9-5331-41ce-9704-bfc0316b2881}')!
MDLTabsTabBar comment: 'Description--------------------I am a brush to create a tab bar.Example--------------------	| famillies |	famillies := OrderedDictionary		with: ''Starks'' 		-> #(''Eddard'' ''Catelyn'' ''Robb'' ''Sansa'' ''Brandon'' ''Rickon'' ''Arya'')		with: ''Lanisters'' 	-> #(''Tywin'' ''Cersei'' ''Jamie'' ''Tyrion'')		with: ''Targaryens'' 	-> #(''Viserys'' ''Daenerys'').	html		mdlTabs: [ html mdlTabBar				rippleEffect;				with: [ famillies						keysDo: [ :familly | 							html mdlTab								isActiveIf: familly = ''Starks'';								url: ''#'' , familly;								with: familly ] ].			famillies				keysAndValuesDo: [ :familly :members | 					html mdlTabsPanel						isActiveIf: familly = ''Starks'';						id: familly;						with: [ html unorderedList: [ members do: [ :member | html listItem: member ] ] ] ] ]'!
!MDLTabsTabBar categoriesForClass!Material-Design-Lite-Components-Nav! !
!MDLTabsTabBar methodsFor!

initialize	super initialize.	self class: 'mdl-tabs__tab-bar'!

rippleEffect	self class: 'mdl-js-ripple-effect'!

rippleEffectIf: aBoolean	aBoolean ifTrue: [ self rippleEffect ]! !
!MDLTabsTabBar categoriesFor: #initialize!initialization!public! !
!MDLTabsTabBar categoriesFor: #rippleEffect!options!public! !
!MDLTabsTabBar categoriesFor: #rippleEffectIf:!options!public! !

