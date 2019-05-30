"Filed out from Dolphin Smalltalk 7"!

WAComponent subclass: #MDLApplication
	instanceVariableNames: 'screens colors'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLApplication guid: (GUID fromString: '{b9c8c55e-fcf1-41b0-93c7-7afffc7cd978}')!
MDLApplication comment: 'Description--------------------This class is an helper to build new applications.	 Internal Representation and Key Implementation Points.--------------------    Instance Variables	applicationName:		<aString>	 	The name of the application. Currently unused.	colors:					<aString>		Name of the primary and accent color of the application to get the right css. Example: ''indigo-pink''.	screens:					<aCollection>	The different screens of the application.'!
!MDLApplication categoriesForClass!Material-Design-Lite-Core! !
!MDLApplication methodsFor!

addScreen: aScreen	^ self screens add: aScreen !

colors	^ colors!

colors: anObject	colors := anObject!

initialize	super initialize.	screens := OrderedCollection new.	colors := 'indigo-pink'!

primaryColor: anMDLColor secondaryColor: anotherMDLColor	^ self colors: anMDLColor tint, '-', anotherMDLColor tint!

removeScreen: aScreen	^ self screens remove: aScreen !

renderContentOn: html	html heading level3; with: 'Put your content in screens and render them'!

screens	^ screens!

screens: anObject	screens := anObject!

style	^ 'html > body {	font-family: "Roboto" , "Helvetica" , "Arial" , "sans-serif" ;}.mdl-layout__container {		position: static;	}'!

updateRoot: anHtmlRoot	super updateRoot: anHtmlRoot.	anHtmlRoot beHtml5.	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.' , self colors , '.min.css')! !
!MDLApplication categoriesFor: #addScreen:!adding/removing!public! !
!MDLApplication categoriesFor: #colors!accessing!public! !
!MDLApplication categoriesFor: #colors:!accessing!public! !
!MDLApplication categoriesFor: #initialize!initialization!public! !
!MDLApplication categoriesFor: #primaryColor:secondaryColor:!accessing!public! !
!MDLApplication categoriesFor: #removeScreen:!adding/removing!public! !
!MDLApplication categoriesFor: #renderContentOn:!public!rendering! !
!MDLApplication categoriesFor: #screens!accessing!public! !
!MDLApplication categoriesFor: #screens:!accessing!public! !
!MDLApplication categoriesFor: #style!accessing!public! !
!MDLApplication categoriesFor: #updateRoot:!public!updating! !

!MDLApplication class methodsFor!

canBeRoot	^ true!

registerToDeployment: aName	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults removeParent: class instance ].	^ (WAAdmin register: self asApplicationAt: aName)		addLibrary: JQDeploymentLibrary;		addLibrary: MDLLibrary;		yourself!

registerToDevelopment: aName	self environment at: #WADevelopmentConfiguration ifPresent: [ :class | WAAdmin applicationDefaults addParent: class instance ].	^ (WAAdmin register: self asApplicationAt: aName)		addLibrary: JQDeploymentLibrary;		addLibrary: MDLLibrary;		yourself! !
!MDLApplication class categoriesFor: #canBeRoot!public!testing! !
!MDLApplication class categoriesFor: #registerToDeployment:!instance creation!public! !
!MDLApplication class categoriesFor: #registerToDevelopment:!instance creation!public! !

