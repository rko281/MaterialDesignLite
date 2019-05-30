"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLTogglesScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLTogglesScreen guid: (GUID fromString: '{5ec227e2-ce98-4abe-9dfd-ba6f6444f9bb}')!
MDLTogglesScreen comment: 'I''m representing Toggles screen'!
!MDLTogglesScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLTogglesScreen methodsFor!

checkbox	^ OrderedDictionary new		add: 'Check on' -> #renderCheckOnOn:;		add: 'Check off' -> #renderCheckOffOn:;		yourself!

iconToggle	^ OrderedDictionary new		add: 'Icon on' -> #renderIconOnOn:;		add: 'Icon off' -> #renderIconOffOn:;		yourself!

radioButton	^ OrderedDictionary new		add: 'Radio on' -> #renderRadioOnOn:;		add: 'Radio off' -> #renderRadioOffOn:;		add: 'Radio full example' -> #renderRadioFullOn:;		yourself!

renderCheckOffOn: html	html mdlCheckboxContainer		rippleEffect;		for: html nextId;		with: [ html mdlCheckbox				value: false;				id: html lastId.			html mdlCheckboxLabel: 'Checkbox' ]!

renderCheckOnOn: html	html mdlCheckboxContainer		rippleEffect;		for: html nextId;		with: [ html mdlCheckbox				value: true;				id: html lastId.			html mdlCheckboxLabel: 'Checkbox' ]!

renderIconOffOn: html	html mdlIconToggleContainer		rippleEffect;		for: html nextId;		with: [ html mdlIconToggle id: html lastId.			html mdlIconToggleLabel: 'format_italic' ]!

renderIconOnOn: html	html mdlIconToggleContainer		rippleEffect;		for: html nextId;		with: [ html mdlIconToggle				value: true;				id: html lastId.			html mdlIconToggleLabel: 'format_bold' ]!

renderRadioFullOn: html	html div		style: 'display: inline-block; width: 150px;';		with: [ html radioGroup				callback: [ :value | value crLog ];				selected: true;				with: [ :group | 					#(true false)						do: [ :boolean | 							html mdlRadioContainer								for: html nextId;								rippleEffect;								with: [ group mdlRadioButton										id: html lastId;										value: boolean.									html mdlRadioLabel: [ 										html text: boolean asString capitalized , '   ' ] ] ] ] ]!

renderRadioOffOn: html	html mdlRadioContainer		rippleEffect;		for: html nextId;		with: [ html mdlRadioButton				value: '2';				attributeAt: 'name' put: 'options';				id: html lastId.			html mdlRadioLabel: 'Second' ]!

renderRadioOnOn: html	html mdlRadioContainer		rippleEffect;		for: html nextId;		with: [ html mdlRadioButton				beChecked;				value: '1';				attributeAt: 'name' put: 'options';				id: html lastId.			html mdlRadioLabel: 'First' ]!

renderScreenContentOn: html	self renderTocOn: html.	html heading		level5;		class: 'section-title';		id: 'checkbox-toggle';		with: 'CHECKBOX'.	self render: self checkbox on: html.	html heading		level5;		class: 'section-title';		id: 'radiobutton-toggle';		with: 'RADIO BUTTON'.	self render: self radioButton on: html.	html heading		level5;		class: 'section-title';		id: 'icon-toggle';		with: 'ICON TOGGLE'.	self render: self iconToggle on: html.	html heading		level5;		class: 'section-title';		id: 'switch-toggle';		with: 'SWITCH TOGGLE'.	self render: self switch on: html!

renderSwitchOffOn: html	html mdlSwitchContainer		rippleEffect;		style: 'width: 150px;';		for: html nextId;		with: [ html mdlSwitch id: html lastId.			html mdlSwitchLabel: 'On / Off' ]!

renderSwitchOnOn: html	html mdlSwitchContainer		rippleEffect;		style: 'width: 150px;';		for: html nextId;		with: [ html mdlSwitch				value: true;				id: html lastId.			html mdlSwitchLabel: 'On / Off' ]!

sections	^ OrderedDictionary		with: '#checkbox-toggle' -> 'Checkbox'		with: '#radiobutton-toggle' -> 'Radio button'		with: '#icon-toggle' -> 'Icon toggle'		with: '#switch-toggle' -> 'Switch'!

switch	^ OrderedDictionary new		add: 'Switch on' -> #renderSwitchOnOn:;		add: 'Switch off' -> #renderSwitchOffOn:;		yourself! !
!MDLTogglesScreen categoriesFor: #checkbox!public!sections! !
!MDLTogglesScreen categoriesFor: #iconToggle!public!sections! !
!MDLTogglesScreen categoriesFor: #radioButton!public!sections! !
!MDLTogglesScreen categoriesFor: #renderCheckOffOn:!demos!public! !
!MDLTogglesScreen categoriesFor: #renderCheckOnOn:!demos!public! !
!MDLTogglesScreen categoriesFor: #renderIconOffOn:!demos!public! !
!MDLTogglesScreen categoriesFor: #renderIconOnOn:!demos!public! !
!MDLTogglesScreen categoriesFor: #renderRadioFullOn:!demos!public! !
!MDLTogglesScreen categoriesFor: #renderRadioOffOn:!demos!public! !
!MDLTogglesScreen categoriesFor: #renderRadioOnOn:!demos!public! !
!MDLTogglesScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLTogglesScreen categoriesFor: #renderSwitchOffOn:!demos!public! !
!MDLTogglesScreen categoriesFor: #renderSwitchOnOn:!demos!public! !
!MDLTogglesScreen categoriesFor: #sections!accessing!public! !
!MDLTogglesScreen categoriesFor: #switch!public!sections! !

!MDLTogglesScreen class methodsFor!

description	^ 'Choose between states.'!

icon	^ 'comptogglesPng'!

title	^ 'Toggles'! !
!MDLTogglesScreen class categoriesFor: #description!accessing!public! !
!MDLTogglesScreen class categoriesFor: #icon!accessing!public! !
!MDLTogglesScreen class categoriesFor: #title!accessing!public! !

