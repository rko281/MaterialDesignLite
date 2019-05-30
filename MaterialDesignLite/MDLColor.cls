﻿"Filed out from Dolphin Smalltalk 7"!

ARGB subclass: #MDLColor
	instanceVariableNames: 'tint mdlCode'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: 'colors'!
MDLColor guid: (GUID fromString: '{932d4b1e-3b15-4b8b-b2f2-81a4cc007be5}')!
MDLColor comment: 'I represent a MDL color'!
!MDLColor categoriesForClass!Material-Design-Colors! !
!MDLColor methodsFor!

code

code: aSymbol

darker

darkerCode

isAccentuated

lighter

lighterCode

name

printOn: aStream

privateRGB

	^(((self blue + 1) bitShift: 2) - 1) + (((self green + 1) bitShift: 12) - 1024) + (((self red + 1) bitShift: 22) - 1048576)!

storeOn: aStream

tint

tint: aSymbol
!MDLColor categoriesFor: #code!accessing!public! !
!MDLColor categoriesFor: #code:!accessing!public! !
!MDLColor categoriesFor: #darker!public!transformations! !
!MDLColor categoriesFor: #darkerCode!public!transformations! !
!MDLColor categoriesFor: #isAccentuated!public!testing! !
!MDLColor categoriesFor: #lighter!public!transformations! !
!MDLColor categoriesFor: #lighterCode!public!transformations! !
!MDLColor categoriesFor: #name!accessing!public! !
!MDLColor categoriesFor: #printOn:!printing!public! !
!MDLColor categoriesFor: #privateRGB!accessing!public! !
!MDLColor categoriesFor: #storeOn:!printing!public! !
!MDLColor categoriesFor: #tint!accessing!public! !
!MDLColor categoriesFor: #tint:!accessing!public! !

!MDLColor class methodsFor!

allColorsDefinitions

allDefaultsColors

allTints

amber

blue

blueGrey

brown

colors

cyan

deepOrange

deepPurple

green

grey

indigo

initialize

lightBlue

lightGreen

lime

orange

pink

purple

randomColor

randomColorAndTint

red

teal

tint: aTint

tint: aTint code: aCode

yellow
!MDLColor class categoriesFor: #allColorsDefinitions!initialization!public! !
!MDLColor class categoriesFor: #allDefaultsColors!accessing!public! !
!MDLColor class categoriesFor: #allTints!accessing!public! !
!MDLColor class categoriesFor: #amber!defaults / colors!public! !
!MDLColor class categoriesFor: #blue!defaults / colors!public! !
!MDLColor class categoriesFor: #blueGrey!defaults / colors!public! !
!MDLColor class categoriesFor: #brown!defaults / colors!public! !
!MDLColor class categoriesFor: #colors!private! !
!MDLColor class categoriesFor: #cyan!defaults / colors!public! !
!MDLColor class categoriesFor: #deepOrange!defaults / colors!public! !
!MDLColor class categoriesFor: #deepPurple!defaults / colors!public! !
!MDLColor class categoriesFor: #green!defaults / colors!public! !
!MDLColor class categoriesFor: #grey!defaults / colors!public! !
!MDLColor class categoriesFor: #indigo!defaults / colors!public! !
!MDLColor class categoriesFor: #initialize!initialization!public! !
!MDLColor class categoriesFor: #lightBlue!defaults / colors!public! !
!MDLColor class categoriesFor: #lightGreen!defaults / colors!public! !
!MDLColor class categoriesFor: #lime!defaults / colors!public! !
!MDLColor class categoriesFor: #orange!defaults / colors!public! !
!MDLColor class categoriesFor: #pink!defaults / colors!public! !
!MDLColor class categoriesFor: #purple!defaults / colors!public! !
!MDLColor class categoriesFor: #randomColor!instance creation!public! !
!MDLColor class categoriesFor: #randomColorAndTint!instance creation!public! !
!MDLColor class categoriesFor: #red!defaults / colors!public! !
!MDLColor class categoriesFor: #teal!defaults / colors!public! !
!MDLColor class categoriesFor: #tint:!accessing!public! !
!MDLColor class categoriesFor: #tint:code:!accessing!public! !
!MDLColor class categoriesFor: #yellow!defaults / colors!public! !
