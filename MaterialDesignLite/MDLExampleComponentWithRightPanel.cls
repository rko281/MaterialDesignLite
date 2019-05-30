"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLExampleComponentWithRightPanel
	instanceVariableNames: 'toolbar rightPanel'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLExampleComponentWithRightPanel guid: (GUID fromString: '{3f45c6eb-e250-4954-ad7d-387e0075b8ce}')!
MDLExampleComponentWithRightPanel comment: 'Description--------------------I am a component used to illustrate the use of the resizable right panel with tabs.To use it you need to:- Make your component use the TRightTabsPanelBrowser trait.- Implement the #browserClass method. It should return a symbol to use to prefix html classes.- Implement #defaultToolbar method.  It should return a MDLVerticalToolbar with the different panels to display in the toolbar.- Implement the instance variables, getter and setters for the toolbar and right panel components.- Implement the #setDefaultRightPanel method. It should be used to select the default right panel.- Call #initialijeRightPanel from the initialize method of the component.- Call #renderRightPanelOn: during the rendering phase of the component.'!
!MDLExampleComponentWithRightPanel categoriesForClass!Material-Design-Lite-Demo-Utils! !
!MDLExampleComponentWithRightPanel methodsFor!

browserClass	"I should return an html class specific to the browser to prefix generated ids and classes for the HTML."	^ 'mdl-extension-example'!

defaultFoldButton	^ MDLFoldButton for: '#' , self rightPanelId!

defaultToolbar	^ MDLVerticalToolbar		buttons:			{self defaultFoldButton.			(self switcherButton: 'Tab1' perform: #setDefaultRightPanel).			(self switcherButton: 'Tab2' perform: #setTab2RightPanel)}!

initialize	super initialize.	self initializeRightPanel!

initializeRightPanel	self setDefaultRightPanel.	self toolbar: self defaultToolbar!

renderContentOn: html	html div style: 'flex-grow: 1;'.	self renderRightPanelOn: html!

renderRightPanelOn: html	html render: self toolbar.	html div		id: self rightPanelId;		class: #'right-panel';		class: #toFold;		shadow: 2;		with: [ html render: MDLRightPanelResizer new.			html render: self rightPanel ]!

rightPanel	^ rightPanel!

rightPanel: aComponent	rightPanel := aComponent!

rightPanelId	"I should return the id of the right panel of the browser."	^ self browserClass , '-right-panel'!

setDefaultRightPanel	self rightPanel: MDLExampleRightPanel1 new!

setTab2RightPanel	self rightPanel: MDLExampleRightPanel2 new!

switcherButton: text id: anId tooltip: tooltip perform: method onCompleteHook: aString	^ (MDLPanelSwitcherButton		text: text		tooltip: tooltip		panelId: self rightPanelId		actionBlock: [ :r | 			self perform: method.			r render: MDLRightPanelResizer new.			r render: self rightPanel ]		onComplete: ('var button = $(this.parentNode).find(".fold-button"); if(button.attr("data-fold") == "true"){button.click()};componentHandler.upgradeDom();' , aString) js		id: anId)		isSelected: method = #setDefaultRightPanel;		yourself!

switcherButton: text perform: method	^ self switcherButton: text tooltip: nil perform: method!

switcherButton: text tooltip: tooltip perform: method	^ self		switcherButton: text		tooltip: tooltip		perform: method		onCompleteHook: ''!

switcherButton: text tooltip: tooltip perform: method onCompleteHook: aString	^ self		switcherButton: text		id: nil		tooltip: tooltip		perform: method		onCompleteHook: aString!

toolbar	^ toolbar!

toolbar: aComponent	toolbar := aComponent! !
!MDLExampleComponentWithRightPanel categoriesFor: #browserClass!accessing!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #defaultFoldButton!components!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #defaultToolbar!components!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #initialize!initialization!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #initializeRightPanel!initialization!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #renderContentOn:!public!rendering! !
!MDLExampleComponentWithRightPanel categoriesFor: #renderRightPanelOn:!public!rendering! !
!MDLExampleComponentWithRightPanel categoriesFor: #rightPanel!accessing!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #rightPanel:!accessing!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #rightPanelId!accessing!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #setDefaultRightPanel!components!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #setTab2RightPanel!components!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #switcherButton:id:tooltip:perform:onCompleteHook:!components!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #switcherButton:perform:!components!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #switcherButton:tooltip:perform:!components!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #switcherButton:tooltip:perform:onCompleteHook:!components!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #toolbar!accessing!public! !
!MDLExampleComponentWithRightPanel categoriesFor: #toolbar:!accessing!public! !

