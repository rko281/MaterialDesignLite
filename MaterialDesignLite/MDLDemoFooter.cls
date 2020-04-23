"Filed out from Dolphin Smalltalk 7"!

MDLDemoComponent subclass: #MDLDemoFooter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLDemoFooter guid: (GUID fromString: '{102b1f2b-c052-4da7-b131-dffb401d0590}')!
MDLDemoFooter comment: 'Description--------------------A footer for the MDL for seaside demo with all the useful links.'!
!MDLDemoFooter categoriesForClass!Material-Design-Lite-Demo-Core! !
!MDLDemoFooter methodsFor!

links	^ OrderedDictionary		with: 'Github' -> 'https://github.com/DuneSt/MaterialDesignLite'		with: 'Pharo' -> 'http://pharo.org/'		with: 'Seaside' -> 'https://github.com/SeasideSt/Seaside'		with: 'Material Design' -> 'https://material.io/guidelines/'		with: 'Material Design Lite' -> 'https://getmdl.io/'!

renderContentOn: html	html		mdlMiniFooter: [ html				mdlMiniFooterLeftSection: [ html mdlLogo: 'Material Design Lite for Seaside'.					html						mdlMiniFooterLinkList: [ self links								keysAndValuesDo: [ :label :url | 									html										listItem: [ html anchor												url: url;												target: '_blank';												with: label ] ] ] ].			html mdlMiniFooterRightSection: [ html mdlMiniFooterLinkList: [ html listItem: [ html text: 'Contact: Cyril Ferlicot-Deblecque (cyril (a) ferlicot.me)' ] ] ] ]! !
!MDLDemoFooter categoriesFor: #links!accessing!public! !
!MDLDemoFooter categoriesFor: #renderContentOn:!public!rendering! !

