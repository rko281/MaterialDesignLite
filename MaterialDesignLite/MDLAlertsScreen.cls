"Filed out from Dolphin Smalltalk 7"!

MDLExtensionsDemo subclass: #MDLAlertsScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLAlertsScreen guid: (GUID fromString: '{0aed7b12-c3f5-452c-b9f9-56fe931bf01b}')!
MDLAlertsScreen comment: 'Component to display some feedback to the user.'!
!MDLAlertsScreen categoriesForClass!Material-Design-Lite-Demo-Extensions! !
!MDLAlertsScreen methodsFor!

basicAlerts	^ #('Default' 'Info')		inject: OrderedDictionary new		into: [ :res :each | 			res add: (each , ' alert') -> ('render' , each , 'AlertOn:') asSymbol.			res ]!

levelAlerts	^ #('Danger' 'Warning' 'Success')		inject: OrderedDictionary new		into: [ :res :each | 			res add: (each , ' alert') -> ('render' , each , 'AlertOn:') asSymbol.			res ]!

renderDangerAlertOn: html	html mdlAlert		beDanger;		with: [			html strong: 'This is a test message.'.			html space.			html text: 'This is the rest of the message that should not be strong.'.			html anchor				callback: [ "Do nothing" ];				with: 'This is an anchor' ]!

renderDefaultAlertOn: html	html mdlAlert		beDefault;		with: [			html strong: 'This is a test message.'.			html space.			html text: 'This is the rest of the message that should not be strong.'.			html anchor				callback: [ "Do nothing" ];				with: 'This is an anchor' ]!

renderInfoAlertOn: html	html mdlAlert		beInfo;		with: [ 			html strong: 'This is a test message.'.			html space.			html text: 'This is the rest of the message that should not be strong.'.			html anchor				callback: [ "Do nothing" ];				with: 'This is an anchor' ]!

renderScreenContentOn: html	self		render: self basicAlerts on: html;		render: self levelAlerts on: html!

renderSuccessAlertOn: html	html mdlAlert		beSuccess;		with: [			html strong: 'This is a test message.'.			html space.			html text: 'This is the rest of the message that should not be strong.'.			html anchor				callback: [ "Do nothing" ];				with: 'This is an anchor' ]!

renderWarningAlertOn: html	html mdlAlert		beWarning;		with: [			html strong: 'This is a test message.'.			html space.			html text: 'This is the rest of the message that should not be strong.'.			html anchor				callback: [ "Do nothing" ];				with: 'This is an anchor' ]! !
!MDLAlertsScreen categoriesFor: #basicAlerts!accessing!public! !
!MDLAlertsScreen categoriesFor: #levelAlerts!accessing!public! !
!MDLAlertsScreen categoriesFor: #renderDangerAlertOn:!public!rendering! !
!MDLAlertsScreen categoriesFor: #renderDefaultAlertOn:!public!rendering! !
!MDLAlertsScreen categoriesFor: #renderInfoAlertOn:!public!rendering! !
!MDLAlertsScreen categoriesFor: #renderScreenContentOn:!public!rendering! !
!MDLAlertsScreen categoriesFor: #renderSuccessAlertOn:!public!rendering! !
!MDLAlertsScreen categoriesFor: #renderWarningAlertOn:!public!rendering! !

!MDLAlertsScreen class methodsFor!

icon	^ 'compAlertsPng'!

title	^ 'Alerts'! !
!MDLAlertsScreen class categoriesFor: #icon!accessing!public! !
!MDLAlertsScreen class categoriesFor: #title!accessing!public! !

