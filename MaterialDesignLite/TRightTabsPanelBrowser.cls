"Filed out from Dolphin Smalltalk 7"!

Trait subclass: #TRightTabsPanelBrowser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
TRightTabsPanelBrowser guid: (GUID fromString: '{814c4337-5923-4f64-8edf-b84254e9b872}')!
TRightTabsPanelBrowser comment: 'Description--------------------I am a trait to help to create a browser with a panel to the right and a toolbar to manage the panel content.To use it you need to:- Make your component use the TRightTabsPanelBrowser trait.- Implement the #browserClass method. It should return a symbol to use to prefix html classes.- Implement #defaultToolbar method.  It should return a MDLVerticalToolbar with the different panels to display in the toolbar.- Implement the instance variables, getter and setters for the toolbar and right panel components.- Implement the #setDefaultRightPanel method. It should be used to select the default right panel.- Call #initialijeRightPanel from the initialize method of the component.- Call #renderRightPanelOn: during the rendering phase of the component.'!
!TRightTabsPanelBrowser categoriesForClass!Unclassified! !
!TRightTabsPanelBrowser methodsFor!

browserClass	"I should return an html class specific to the browser to prefix generated ids and classes for the HTML."	^ self explicitRequirement!

defaultToolbar	^ self explicitRequirement!

initializeRightPanel	self setDefaultRightPanel.	self toolbar: self defaultToolbar!

renderRightPanelOn: html	html render: self toolbar.	html div		id: self rightPanelId;		class: #'right-panel';		class: #toFold;		shadow: 2;		with: [ html render: MDLRightPanelResizer new.			html render: self rightPanel ]!

rightPanel	^ self explicitRequirement!

rightPanel: aComponent	self explicitRequirement!

rightPanelId	"I should return the id of the right panel of the browser."	^ self browserClass , '-right-panel'!

setDefaultRightPanel	self explicitRequirement!

switcherButton: text id: anId tooltip: tooltip perform: method onCompleteHook: aString	^ (MDLPanelSwitcherButton		text: text		tooltip: tooltip		panelId: self rightPanelId		actionBlock: [ :r | 			self perform: method.			r render: MDLRightPanelResizer new.			r render: self rightPanel ]		onComplete: ('var button = $(this.parentNode).find(".fold-button"); if(button.attr("data-fold") == "true"){button.click()};componentHandler.upgradeDom();' , aString) js		id: anId)		isSelected: method = #setDefaultRightPanel;		yourself!

switcherButton: text perform: method	^ self switcherButton: text tooltip: nil perform: method!

switcherButton: text tooltip: tooltip perform: method	^ self		switcherButton: text		tooltip: tooltip		perform: method		onCompleteHook: ''!

switcherButton: text tooltip: tooltip perform: method onCompleteHook: aString	^ self		switcherButton: text		id: nil		tooltip: tooltip		perform: method		onCompleteHook: aString!

toolbar	^ self explicitRequirement!

toolbar: aComponent	self explicitRequirement! !
!TRightTabsPanelBrowser categoriesFor: #browserClass!accessing!public! !
!TRightTabsPanelBrowser categoriesFor: #defaultToolbar!components!public! !
!TRightTabsPanelBrowser categoriesFor: #initializeRightPanel!initialization!public! !
!TRightTabsPanelBrowser categoriesFor: #renderRightPanelOn:!public!rendering! !
!TRightTabsPanelBrowser categoriesFor: #rightPanel!accessing!public! !
!TRightTabsPanelBrowser categoriesFor: #rightPanel:!accessing!public! !
!TRightTabsPanelBrowser categoriesFor: #rightPanelId!accessing!public! !
!TRightTabsPanelBrowser categoriesFor: #setDefaultRightPanel!components!public! !
!TRightTabsPanelBrowser categoriesFor: #switcherButton:id:tooltip:perform:onCompleteHook:!components!public! !
!TRightTabsPanelBrowser categoriesFor: #switcherButton:perform:!components!public! !
!TRightTabsPanelBrowser categoriesFor: #switcherButton:tooltip:perform:!components!public! !
!TRightTabsPanelBrowser categoriesFor: #switcherButton:tooltip:perform:onCompleteHook:!components!public! !
!TRightTabsPanelBrowser categoriesFor: #toolbar!accessing!public! !
!TRightTabsPanelBrowser categoriesFor: #toolbar:!accessing!public! !

