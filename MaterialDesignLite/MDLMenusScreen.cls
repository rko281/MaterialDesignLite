"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLMenusScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLMenusScreen guid: (GUID fromString: '{a20bcd04-ca98-4a1c-8fa9-bc66ba69ace5}')!
MDLMenusScreen comment: 'Lists of clickable actions. Those menus are anchored to elements and can have their anchor point specified.'!
!MDLMenusScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLMenusScreen methodsFor!

bottomMenus	^ OrderedDictionary new		add: 'Lower left' -> #renderLowerLeftMenuOn:;		add: 'Lower right' -> #renderLowerRightMenuOn:;		yourself!

menuWithAnchors	^ OrderedDictionary new		add: 'Menu with anchors' -> #renderMenuWithAnchorsOn:;		yourself!

renderLowerLeftMenuOn: html	html div		class: 'container';		shadow: 2;		with: [ html div				class: 'bar';				with: [ html mdlButton icon						id: #bottomLeftButton;						with: [ html mdlIcon: #more_vert ].					html mdlMenu						bottomLeft;						for: #bottomLeftButton;						with: [ html mdlMenuItem: 'Some Action'.							html mdlMenuItem								fullBleedDivider;								with: 'Another Action'.							html mdlMenuItem								disabled;								with: 'Disabled Action'.							html mdlMenuItem: 'Yet Another Action' ] ].			html div class: 'background' ]!

renderLowerRightMenuOn: html	html div		class: 'container';		shadow: 2;		with: [ html div				class: 'bar';				with: [ html div						class: 'wrapper';						with: [ html mdlButton icon								id: #bottomRightButton;								with: [ html mdlIcon: #more_vert ].							html mdlMenu								bottomRight;								for: #bottomRightButton;								with: [ html mdlMenuItem: 'Some Action'.									html mdlMenuItem										fullBleedDivider;										with: 'Another Action'.									html mdlMenuItem										disabled;										with: 'Disabled Action'.									html mdlMenuItem: 'Yet Another Action' ] ] ].			html div class: 'background' ]!

renderMenuWithAnchorsOn: html	html div		class: 'container';		shadow: 2;		with: [ html div				class: 'bar';				with: [ html mdlButton icon						id: #menuWithAnchors;						with: [ html mdlIcon: #more_vert ].					html mdlMenu						bottomLeft;						for: #menuWithAnchors;						with: [ 1 to: 5 do: [ :ind | 								html									mdlMenuItem: [ html anchor											callback: [ ('Action ' , ind asString) traceCr ];											with: 'Action ' , ind asString ] ] ] ].			html div class: 'background' ]!

renderScreenContentOn: html	html		paragraph: [ html				small:					'Note: The menu requires a non-static positioned parent element. Positioning options may not work properly if the menu is inside of a statically positioned node.' ].	self		render: self bottomMenus on: html;		render: self topMenus on: html;		render: self menuWithAnchors on: html!

renderTopLeftMenuOn: html	html div		class: 'container';		shadow: 2;		with: [ html div class: 'background'.			html div				class: 'bar';				with: [ html mdlButton icon						id: #topLeftButton;						with: [ html mdlIcon: #more_vert ].					html mdlMenu						topLeft;						for: #topLeftButton;						with: [ html mdlMenuItem: 'Some Action'.							html mdlMenuItem								fullBleedDivider;								with: 'Another Action'.							html mdlMenuItem								disabled;								with: 'Disabled Action'.							html mdlMenuItem: 'Yet Another Action' ] ] ]!

renderTopRightMenuOn: html	html div		class: 'container';		shadow: 2;		with: [ html div class: 'background'.			html div				class: 'bar';				with: [ html div						class: 'wrapper';						with: [ html mdlButton icon								id: #topRightButton;								with: [ html mdlIcon: #more_vert ].							html mdlMenu								topRight;								for: #topRightButton;								with: [ html mdlMenuItem: 'Some Action'.									html mdlMenuItem										fullBleedDivider;										with: 'Another Action'.									html mdlMenuItem										disabled;										with: 'Disabled Action'.									html mdlMenuItem: 'Yet Another Action' ] ] ] ]!

topMenus	^ OrderedDictionary new		add: 'Top left' -> #renderTopLeftMenuOn:;		add: 'Top right' -> #renderTopRightMenuOn:;		yourself! !
!MDLMenusScreen categoriesFor: #bottomMenus!public!sections! !
!MDLMenusScreen categoriesFor: #menuWithAnchors!public!sections! !
!MDLMenusScreen categoriesFor: #renderLowerLeftMenuOn:!demos!public! !
!MDLMenusScreen categoriesFor: #renderLowerRightMenuOn:!demos!public! !
!MDLMenusScreen categoriesFor: #renderMenuWithAnchorsOn:!demos!public! !
!MDLMenusScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLMenusScreen categoriesFor: #renderTopLeftMenuOn:!demos!public! !
!MDLMenusScreen categoriesFor: #renderTopRightMenuOn:!demos!public! !
!MDLMenusScreen categoriesFor: #topMenus!public!sections! !

!MDLMenusScreen class methodsFor!

icon		^'compmenusPng'!

title	^ 'Menus'! !
!MDLMenusScreen class categoriesFor: #icon!accessing!public! !
!MDLMenusScreen class categoriesFor: #title!accessing!public! !

