"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLLayoutScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLLayoutScreen guid: (GUID fromString: '{35c557ba-1cd3-45ec-a2c7-36b4736b4020}')!
MDLLayoutScreen comment: 'Building blocks for constructing a page layout.'!
!MDLLayoutScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLLayoutScreen methodsFor!

cellOffset	^ OrderedDictionary new		add: 'Cell offset' -> #renderCellOffsetDemoOn:;		yourself!

cellOrder	^ OrderedDictionary new		add: 'Cell order' -> #renderCellOrderDemoOn:;		yourself!

cellPositions 	^ OrderedDictionary new		add: 'Cell positions' -> #renderCellPositionsDemoOn:;		yourself!

fixedDrawerNoHeader	^ OrderedDictionary new		add: 'Fixed drawer, no header ' -> #renderFixedDrawerNoHeaderOn:;		yourself!

fixedHeader	^ OrderedDictionary new		add: 'Fixed header ' -> #renderFixedHeaderOn:;		yourself!

fixedHeaderAndDrawer	^ OrderedDictionary new		add: 'Fixed header and drawer' -> #renderFixedHeaderAndDrawerOn:;		yourself!

fixedTabs 	^ OrderedDictionary new		add: 'Fixed tabs' -> #renderFixedTabsOn:;		yourself!

gridLayout 	^ OrderedDictionary new		add: 'Responsive grid' -> #renderGridDemoOn:;		yourself!

hideDesktopCells 	^ OrderedDictionary new		add: 'Hide Desktop' -> #renderHideDesktopDemoOn:;		yourself!

hidePhoneCells 	^ OrderedDictionary new		add: 'Hide Phone' -> #renderHidePhoneDemoOn:;		yourself!

hideTabletCells 	^ OrderedDictionary new		add: 'Hide Tablet' -> #renderHideTabletDemoOn:;		yourself!

megaFooter	^ OrderedDictionary new		add: 'Mega footer ' -> #renderMegaFooterOn:;		yourself!

miniFooter	^ OrderedDictionary new		add: 'Mini footer ' -> #renderMiniFooterOn:;		yourself!

renderCellOffsetDemoOn: html	html mdlGrid		shadow: 2;		with: [ html mdlCell				class: 'grid-cell-demo';				desktopOffset: 4;				tabletOffset: 3;				phoneOffset: 2;				desktopSize: 6;				tabletSize: 5;				phoneSize: 2;				with: 'Offset'.			html mdlCell				class: 'grid-cell-demo';				offset: 2;				size: 2;				with: 'Offset' ]!

renderCellOrderDemoOn: html	html mdlGrid		shadow: 2;		with: [ html mdlCell				class: 'grid-cell-demo';				desktopSize: 3;				tabletSize: 2;				phoneSize: 1;				desktopOrder: 4;				tabletOrder: 3;				phoneOrder: 2;				with: 'A (D: 4|T: 3|P: 2)'.			html mdlCell				class: 'grid-cell-demo';				desktopSize: 3;				tabletSize: 2;				phoneSize: 1;				desktopOrder: 3;				tabletOrder: 2;				phoneOrder: 4;				with: 'B (D: 3|T: 2|P: 4)'.			html mdlCell				class: 'grid-cell-demo';				desktopSize: 3;				tabletSize: 2;				phoneSize: 1;				desktopOrder: 2;				tabletOrder: 4;				phoneOrder: 3;				with: 'C (D: 2|T: 4|P: 3)'.			html mdlCell				class: 'grid-cell-demo';				desktopSize: 3;				tabletSize: 2;				phoneSize: 1;				order: 1;				with: 'D (D: 1|T: 1|P: 1)' ]!

renderCellPositionsDemoOn: html	html mdlGrid		shadow: 2;		style: 'height: 500px;';		with: [ html mdlCell				class: 'grid-cell-demo';				top;				size: 3;				with: 'Top'.			html mdlCell				class: 'grid-cell-demo';				middle;				size: 3;				with: 'Middle'.			html mdlCell				class: 'grid-cell-demo';				bottom;				size: 3;				with: 'Bottom'.			html mdlCell				class: 'grid-cell-demo';				stretch;				size: 3;				with: 'Stretch' ]!

renderFixedDrawerNoHeaderOn: html	html mdlLayout		fixedDrawer;		with: [ html				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title'.					html						mdlNavigation: [ html mdlNavigationLink								beCurrent;								with: 'Link'.							1 to: 4 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ]!

renderFixedHeaderAndDrawerOn: html	html mdlLayout		fixedDrawer;		fixedHeader;		with: [ html				mdlLayoutHeader: [ html						mdlLayoutHeaderRow: [ html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title'.					html						mdlNavigation: [ 1 to: 5 do: [ :i | 								html mdlNavigationLink									beCurrentIf: [ i = 1 ];									with: 'Link' ] ] ] ]!

renderFixedHeaderOn: html	html mdlLayout		fixedHeader;		with: [ html				mdlLayoutHeader: [ html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Title'.							html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title'.					html						mdlNavigation: [ 1 to: 5 do: [ :i | 								html mdlNavigationLink									beCurrentIf: [ i = 1 ];									with: 'Link' ] ] ] ]!

renderFixedTabsOn: html	html mdlLayout		fixedHeader;		fixedTabs;		with: [ html				mdlLayoutHeader: [ html mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Title' ].					html mdlLayoutTabBar						rippleEffect;						with: [ 1 to: 3 do: [ :int | 								html mdlLayoutTab									isActiveIf: int = 1;									url: '#tab-' , int asString;									with: 'Tab ' , int asString ] ] ].			html mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title' ].			html				mdlLayoutContent: [ 1 to: 3 do: [ :int | 						html mdlLayoutTabPanel							isActiveIf: int = 1;							id: 'tab-' , int asString ] ] ]!

renderGridDemoOn: html	html mdlGrid		shadow: 2;		with: [ 1 to: 12 do: [ :i | 				html mdlCell					class: 'grid-cell-demo';					size: 1;					with: 1 ].			1 to: 3 do: [ :i | 				html mdlCell					class: 'grid-cell-demo';					size: 4;					with: 4 ].			#(6 4 2)				do: [ :int | 					html mdlCell						class: 'grid-cell-demo';						size: int;						with: int ].			html mdlCell				class: 'grid-cell-demo';				size: 6;				tabletSize: 8;				with: '6 (8 tablet)'.			html mdlCell				class: 'grid-cell-demo';				size: 4;				tabletSize: 6;				with: '4 (6 tablet)'.			html mdlCell				class: 'grid-cell-demo';				size: 2;				phoneSize: 4;				with: '2 (4 phone)' ].	html break.	html mdlGrid		noSpacing;		shadow: 2;		with: [ 1 to: 12 do: [ :i | 				html mdlCell					class: 'grid-cell-demo';					size: 1;					with: 1 ] ]!

renderHideDesktopDemoOn: html	html		mdlGrid: [ html mdlCell				class: 'grid-cell-demo';				size: 6;				hideDesktop;				with: 'Hide on desktop size'.			html mdlCell				class: 'grid-cell-demo';				size: 6;				with: 'Always show' ]!

renderHidePhoneDemoOn: html	html		mdlGrid: [ html mdlCell				class: 'grid-cell-demo';				size: 6;				hidePhone;				with: 'Hide on phone size'.			html mdlCell				class: 'grid-cell-demo';				size: 6;				with: 'Always show' ]!

renderHideTabletDemoOn: html	html		mdlGrid: [ html mdlCell				class: 'grid-cell-demo';				size: 6;				hideTablet;				with: 'Hide on tablet size'.			html mdlCell				class: 'grid-cell-demo';				size: 6;				with: 'Always show' ]!

renderMegaFooterOn: html	| sections |	sections := OrderedDictionary		with: 'Features'	-> #('About' 'Terms' 'Partners' 'Updates')		with: 'Details' 	-> #('Specs' 'Tools' 'Ressources')		with: 'Technology'	-> #('How it works' 'Patterns' 'Usage' 'Products' 'Contracts')		with: 'FAQ' 		-> #('Questions' 'Answers' 'Contact us').	html		mdlFooter: [ html				mdlFooterMiddleSection: [ sections						keysAndValuesDo: [ :title :members | 							html								mdlFooterDropdownSection: [ html mdlFooterHeadingCheckbox.									html mdlFooterHeading: title.									html mdlFooterLinkList: [ members do: [ :label | html listItem: [ html anchor: label ] ] ] ] ] ].			html				mdlFooterBottomSection: [ html mdlLogo: 'Title'.					html						mdlFooterLinkList: [ html listItem: [ html anchor: 'Help' ].							html listItem: [ html anchor: 'Privacy & Terms' ] ] ] ]!

renderMiniFooterOn: html	html		mdlMiniFooter: [ html				mdlMiniFooterLeftSection: [ html mdlLogo: 'Title'.					html						mdlMiniFooterLinkList: [ html listItem: [ html anchor: 'Help' ].							html listItem: [ html anchor: 'Privacy & Terms' ] ] ] ]!

renderScreenContentOn: html	self renderTocOn: html.	html heading level5		class: 'section-title';		id: 'navigation-layout';		with: 'Navigation layouts'.	self		render: self transparentHeader fullWidth: true on: html;		render: self fixedDrawerNoHeader fullWidth: true on: html;		render: self fixedHeader fullWidth: true on: html;		render: self fixedHeaderAndDrawer fullWidth: true on: html;		render: self scrollingHeader fullWidth: true on: html;		render: self waterfallHeader fullWidth: true on: html;		render: self scrollableTabs fullWidth: true on: html;		render: self fixedTabs fullWidth: true on: html.	html heading level5		class: 'section-title';		id: 'grid-layout';		with: 'GRID'.	self		render: self gridLayout fullWidth: true on: html;		render: self cellOffset fullWidth: true on: html;		render: self cellPositions fullWidth: true on: html;		render: self cellOrder fullWidth: true on: html;		render: self hideDesktopCells fullWidth: true on: html;		render: self hideTabletCells fullWidth: true on: html;		render: self hidePhoneCells fullWidth: true on: html.	html heading level5		class: 'section-title';		id: 'tabs-layout';		with: 'TABS'.	self render: self tabs on: html.	html heading level5		class: 'section-title';		id: 'footer-layout';		with: 'FOOTER'.	self		render: self megaFooter fullWidth: true on: html;		render: self miniFooter fullWidth: true on: html!

renderScrollableTabsOn: html	html mdlLayout		fixedHeader;		with: [ html				mdlLayoutHeader: [ html mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Title' ].					html						mdlLayoutTabBar						rippleEffect;						with: [ 1 to: 6 do: [ :int | 								html mdlLayoutTab									isActiveIf: int = 1;									url: '#tab-' , int asString;									with: 'Tab ' , int asString ] ] ].			html mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title' ].			html				mdlLayoutContent: [ 1 to: 6 do: [ :int | 						html mdlLayoutTabPanel							isActiveIf: int = 1;							id: 'tab-' , int asString ] ] ]!

renderScrollingHeaderOn: html	html mdlLayout		with: [ html mdlLayoutHeader				scroll;				with: [ html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Title'.							html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title'.					html						mdlNavigation: [ 1 to: 5 do: [ :i | 								html mdlNavigationLink									beCurrentIf: [ i = 1 ];									with: 'Link' ] ] ].			html				mdlLayoutContent: [ 					html div						style: 'height: 600px;';						with: [  ] ] ]!

renderTabsOn: html	| famillies |	famillies := OrderedDictionary		with: 'Starks' 		-> #('Eddard' 'Catelyn' 'Robb' 'Sansa' 'Brandon' 'Rickon' 'Arya')		with: 'Lanisters' 	-> #('Tywin' 'Cersei' 'Jamie' 'Tyrion')		with: 'Targaryens' 	-> #('Viserys' 'Daenerys').	html		mdlTabs: [ html mdlTabBar				rippleEffect;				with: [ famillies						keysDo: [ :familly | 							html mdlTab								isActiveIf: familly = 'Starks';								url: '#' , familly;								with: familly ] ].			famillies				keysAndValuesDo: [ :familly :members | 					html mdlTabsPanel						isActiveIf: familly = 'Starks';						id: familly;						with: [ html unorderedList: [ members do: [ :member | html listItem: member ] ] ] ] ]!

renderTransparentHeaderOn: html	html mdlLayout		style: 'background: url(''' , (MDLDemoLibrary urlOf: #transparentJpg) asString , ''') center / cover;';		with: [ 			html mdlLayoutHeader				transparent;				with: [ 					html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Title'.							html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title'.					html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ].			html mdlLayoutContent: [  ] ]!

renderWaterfallHeaderOn: html	html mdlLayout		with: [ html mdlLayoutHeader				waterfall;				with: [ html						mdlLayoutHeaderRow: [ html mdlLayoutTitle: 'Title'.							html mdlLayoutSpacer.							html mdlTextFieldContainer								expandable;								with: [ 									html mdlButton labelIcon; for: html nextId; with: [ html mdlIcon: 'search' ].									html mdlTextFieldExpandableHolder: [ 										html mdlTextFieldInput id: html lastId; type: 'text'.										html mdlTextFieldLabel for: html lastId; with: 'Expandable Input' ] ] ].					html						mdlLayoutHeaderRow: [ html mdlLayoutSpacer.							html mdlNavigation: [ 1 to: 5 do: [ :i | html mdlNavigationLink: 'Link' ] ] ] ].			html				mdlLayoutDrawer: [ html mdlLayoutTitle: 'Title'.					html						mdlNavigation: [ 1 to: 5 do: [ :i | 								html mdlNavigationLink									beCurrentIf: [ i = 1 ];									with: 'Link' ] ] ].			html				mdlLayoutContent: [ html div						style: 'height: 600px;';						with: [  ] ] ]!

scrollableTabs 	^ OrderedDictionary new		add: 'Scrollable tabs' -> #renderScrollableTabsOn:;		yourself!

scrollingHeader	^ OrderedDictionary new		add: 'Scrolling header ' -> #renderScrollingHeaderOn:;		yourself!

sections	^ OrderedDictionary		with: '#navigation-layout' -> 'Navigation layouts'		with: '#grid-layout' -> 'Grid'		with: '#tabs-layout' -> 'Tabs'		with: '#footer-layout' -> 'Footer'!

tabs 	^ OrderedDictionary new		add: 'Content tabs' -> #renderTabsOn:;		yourself!

transparentHeader	^ OrderedDictionary new		add: 'Transparent header' -> #renderTransparentHeaderOn:;		yourself!

waterfallHeader	^ OrderedDictionary new		add: 'Waterfall header' -> #renderWaterfallHeaderOn:;		yourself! !
!MDLLayoutScreen categoriesFor: #cellOffset!public!sections! !
!MDLLayoutScreen categoriesFor: #cellOrder!public!sections! !
!MDLLayoutScreen categoriesFor: #cellPositions!public!sections! !
!MDLLayoutScreen categoriesFor: #fixedDrawerNoHeader!public!sections! !
!MDLLayoutScreen categoriesFor: #fixedHeader!public!sections! !
!MDLLayoutScreen categoriesFor: #fixedHeaderAndDrawer!public!sections! !
!MDLLayoutScreen categoriesFor: #fixedTabs!public!sections! !
!MDLLayoutScreen categoriesFor: #gridLayout!public!sections! !
!MDLLayoutScreen categoriesFor: #hideDesktopCells!public!sections! !
!MDLLayoutScreen categoriesFor: #hidePhoneCells!public!sections! !
!MDLLayoutScreen categoriesFor: #hideTabletCells!public!sections! !
!MDLLayoutScreen categoriesFor: #megaFooter!public!sections! !
!MDLLayoutScreen categoriesFor: #miniFooter!public!sections! !
!MDLLayoutScreen categoriesFor: #renderCellOffsetDemoOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderCellOrderDemoOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderCellPositionsDemoOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderFixedDrawerNoHeaderOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderFixedHeaderAndDrawerOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderFixedHeaderOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderFixedTabsOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderGridDemoOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderHideDesktopDemoOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderHidePhoneDemoOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderHideTabletDemoOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderMegaFooterOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderMiniFooterOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLLayoutScreen categoriesFor: #renderScrollableTabsOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderScrollingHeaderOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderTabsOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderTransparentHeaderOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #renderWaterfallHeaderOn:!demos!public! !
!MDLLayoutScreen categoriesFor: #scrollableTabs!public!sections! !
!MDLLayoutScreen categoriesFor: #scrollingHeader!public!sections! !
!MDLLayoutScreen categoriesFor: #sections!accessing!public! !
!MDLLayoutScreen categoriesFor: #tabs!public!sections! !
!MDLLayoutScreen categoriesFor: #transparentHeader!public!sections! !
!MDLLayoutScreen categoriesFor: #waterfallHeader!public!sections! !

!MDLLayoutScreen class methodsFor!

icon	^ 'complayoutPng'!

title	^ 'Layout'! !
!MDLLayoutScreen class categoriesFor: #icon!accessing!public! !
!MDLLayoutScreen class categoriesFor: #title!accessing!public! !

