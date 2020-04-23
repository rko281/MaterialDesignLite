"Filed out from Dolphin Smalltalk 7"!

MDLComponentDemo subclass: #MDLElevationScreen
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
MDLElevationScreen guid: (GUID fromString: '{8e4df2d7-81fe-41d4-bbd4-93afc963dffa}')!
MDLElevationScreen comment: 'Elevation is the relative depth, or distance, between two surfaces along the z-axis.'!
!MDLElevationScreen categoriesForClass!Material-Design-Lite-Demo-Components! !
!MDLElevationScreen methodsFor!

elevations	^ OrderedDictionary new		add: 'Elevations' -> #renderElevationsOn:;		yourself!

renderElevationsOn: html	html		mdlGrid: [ #(0 2 3 4 6 8 16 24)				do: [ :elevation | 					html mdlCell						size: 3;						style: 'min-height: 100px; display: flex; justify-content: space-around; align-items: center; margin: 50px;';						shadow: elevation;						with: elevation asString , 'dp' ] ]!

renderScreenContentOn: html	self render: self elevations fullWidth: true on: html! !
!MDLElevationScreen categoriesFor: #elevations!public!sections! !
!MDLElevationScreen categoriesFor: #renderElevationsOn:!public!rendering! !
!MDLElevationScreen categoriesFor: #renderScreenContentOn:!public!rendering! !

!MDLElevationScreen class methodsFor!

icon	^ 'elevationPng'!

title	^ 'Elevation'! !
!MDLElevationScreen class categoriesFor: #icon!accessing!public! !
!MDLElevationScreen class categoriesFor: #title!accessing!public! !

