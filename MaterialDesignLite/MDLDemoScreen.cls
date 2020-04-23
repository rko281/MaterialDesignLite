"Filed out from Dolphin Smalltalk 7"!

MDLScreen subclass: #MDLDemoScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDemoScreen guid: (GUID fromString: '{9d4d7fbb-be4d-4cb3-add3-cbbf3c04e3d3}')!
MDLDemoScreen comment: 'Description--------------------I represent an abstract example screen for the demo application.I have an iconUrl to help displaying it in the drawer.Title, Description and Icon must be implemented in subclasses.'!
!MDLDemoScreen categoriesForClass!Material-Design-Lite-Demo-Core! !
!MDLDemoScreen methodsFor!

description	^ self class description!

pathName	^ self class pathName!

render: componentsMap fullWidth: aBoolean on: html	html div		class: 'snippet-group';		class: 'is-full-width' if: aBoolean;		with: [ html div				class: 'snippet-header';				with: [ html div						class: 'snippet-demos';						with: [ html div class: 'snippet-demo-padding'.							componentsMap								valuesDo: [ :symbol | 									html div										class: 'snippet-demo';										with: [ html div												class: 'snippet-demo-container';												class: (symbol copyWithout: $:);												with: [ self perform: symbol with: html ] ] ].							html div class: 'snippet-demo-padding' ].					html div						class: 'snippet-captions';						with: [ html div class: 'snippet-caption-padding'.							componentsMap								keysDo: [ :label | 									html div										class: 'snippet-caption';										with: label ].							html div class: 'snippet-caption-padding' ] ].			html div				class: 'snippet-code';				with: [ componentsMap						valuesDo: [ :symbol | 							html								preformatted: [ html code										class: 'smalltalk';										with: (self codeOf: symbol) ] ] ] ]!

render: componentsMap on: html	self render: componentsMap fullWidth: false on: html!

renderContentOn: html	html mdlGrid		class: #'mdl-components__page';		with: [ html				mdlCell: [ html div						class: 'component-title';						mdlTypographyTextJustify;						with: [ html heading								level3;								with: self title.							html paragraph: self description.							self renderWarningMessageOn: html ].					self renderScreenContentOn: html ]				size: 12 ]!

renderScreenContentOn: html	self subclassResponsibility!

renderTocOn: html	html div		class: 'docs-toc';		with: [ html unorderedList				class: 'navigation';				with: [ self sections						keysAndValuesDo: [ :id :label | 							html								listItem: [ html anchor										url: id;										with: label ] ] ] ]!

renderWarningMessageOn: html	self warningMessage ifNil: [ ^ self ].		html div		class: 'mdl-demo-warning';		mdlTypographyBody2;		with: 'Warning: ', self warningMessage!

sections	"Sections serve when the demo page is too big and needs to be divided."	^ OrderedDictionary new!

title	^ self class title!

warningMessage	"Potential warning message to display"	^ nil! !
!MDLDemoScreen categoriesFor: #description!accessing!public! !
!MDLDemoScreen categoriesFor: #pathName!accessing!public! !
!MDLDemoScreen categoriesFor: #render:fullWidth:on:!public!rendering! !
!MDLDemoScreen categoriesFor: #render:on:!public!rendering! !
!MDLDemoScreen categoriesFor: #renderContentOn:!public!rendering! !
!MDLDemoScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLDemoScreen categoriesFor: #renderTocOn:!public!rendering! !
!MDLDemoScreen categoriesFor: #renderWarningMessageOn:!public!rendering! !
!MDLDemoScreen categoriesFor: #sections!accessing!public! !
!MDLDemoScreen categoriesFor: #title!accessing!public! !
!MDLDemoScreen categoriesFor: #warningMessage!accessing!public! !

!MDLDemoScreen class methodsFor!

description	^ self comment!

icon	self subclassResponsibility !

iconUrl	^ MDLDemoLibrary urlOf: self icon!

pathName	^ self title copyWithout: $ !

title	"I should return the title of the component screen."	^ self subclassResponsibility! !
!MDLDemoScreen class categoriesFor: #description!accessing!public! !
!MDLDemoScreen class categoriesFor: #icon!accessing!public! !
!MDLDemoScreen class categoriesFor: #iconUrl!accessing!public! !
!MDLDemoScreen class categoriesFor: #pathName!accessing!public! !
!MDLDemoScreen class categoriesFor: #title!accessing!public! !

