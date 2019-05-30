"Filed out from Dolphin Smalltalk 7"!

MDLDivTag subclass: #MDLTabsContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTabsContainer guid: (GUID fromString: '{1065d314-8ca1-4d65-bd56-b885ad25ce46}')!
MDLTabsContainer comment: 'Description--------------------I am a brush to create a container for tabs.Example--------------------	| famillies |	famillies := OrderedDictionary		with: ''Starks'' 		-> #(''Eddard'' ''Catelyn'' ''Robb'' ''Sansa'' ''Brandon'' ''Rickon'' ''Arya'')		with: ''Lanisters'' 	-> #(''Tywin'' ''Cersei'' ''Jamie'' ''Tyrion'')		with: ''Targaryens'' 	-> #(''Viserys'' ''Daenerys'').	html		mdlTabs: [ html mdlTabBar				rippleEffect;				with: [ famillies						keysDo: [ :familly | 							html mdlTab								isActiveIf: familly = ''Starks'';								url: ''#'' , familly;								with: familly ] ].			famillies				keysAndValuesDo: [ :familly :members | 					html mdlTabsPanel						isActiveIf: familly = ''Starks'';						id: familly;						with: [ html unorderedList: [ members do: [ :member | html listItem: member ] ] ] ] ]'!
!MDLTabsContainer categoriesForClass!Material-Design-Lite-Components-Nav! !
!MDLTabsContainer methodsFor!

initialize	super initialize.	self class: 'mdl-tabs'.	self class: 'mdl-js-tabs'!

rippleEffect	self class: 'mdl-js-ripple-effect'!

rippleEffectIf: aBoolean	aBoolean ifTrue: [ self rippleEffect ]! !
!MDLTabsContainer categoriesFor: #initialize!initialization!public! !
!MDLTabsContainer categoriesFor: #rippleEffect!options!public! !
!MDLTabsContainer categoriesFor: #rippleEffectIf:!options!public! !

