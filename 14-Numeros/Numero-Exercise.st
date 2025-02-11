!classDefinition: #NumeroTest category: 'Numero-Exercise'!
TestCase subclass: #NumeroTest
	instanceVariableNames: 'zero one two four oneFifth oneHalf five twoFifth twoTwentyfifth fiveHalfs three eight negativeOne negativeTwo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:11'!
test01isCeroReturnsTrueWhenAskToZero

	self assert: zero isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:12'!
test02isCeroReturnsFalseWhenAskToOthersButZero

	self deny: one isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test03isOneReturnsTrueWhenAskToOne

	self assert: one isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test04isOneReturnsFalseWhenAskToOtherThanOne

	self deny: zero isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:14'!
test05EnteroAddsWithEnteroCorrectly

	self assert: one + one equals: two! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:18'!
test06EnteroMultipliesWithEnteroCorrectly

	self assert: two * two equals: four! !

!NumeroTest methodsFor: 'tests' stamp: 'ENC 4/18/2021 23:35:07'!
test07EnteroDividesEnteroCorrectly

	self assert: two / two equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:38'!
test08FraccionAddsWithFraccionCorrectly
"
    La suma de fracciones es:
	 
	a/b + c/d = (a.d + c.b) / (b.d)
	 
	SI ESTAN PENSANDO EN LA REDUCCION DE FRACCIONES NO SE PREOCUPEN!!
	TODAVIA NO SE ESTA TESTEANDO ESE CASO
"
	| sevenTenths |

	sevenTenths := (Entero with: 7) / (Entero with: 10).

	self assert: oneFifth + oneHalf equals: sevenTenths! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:52'!
test09FraccionMultipliesWithFraccionCorrectly
"
    La multiplicacion de fracciones es:
	 
	(a/b) * (c/d) = (a.c) / (b.d)
"

	self assert: oneFifth * twoFifth equals: twoTwentyfifth! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:56'!
test10FraccionDividesFraccionCorrectly
"
    La division de fracciones es:
	 
	(a/b) / (c/d) = (a.d) / (b.c)
"

	self assert: oneHalf / oneFifth equals: fiveHalfs! !

!NumeroTest methodsFor: 'tests' stamp: 'ENC 4/18/2021 17:51:45'!
test11EnteroAddsFraccionCorrectly
"
	Ahora empieza la diversion!!
"

	self assert: one + oneFifth equals: (Entero with: 6) / (Entero with: 5)! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:07'!
test12FraccionAddsEnteroCorrectly

	self assert: oneFifth + one equals: (Entero with: 6) / (Entero with: 5)! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:50'!
test13EnteroMultipliesFraccionCorrectly

	self assert: two * oneFifth equals: twoFifth ! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:52'!
test14FraccionMultipliesEnteroCorrectly

	self assert: oneFifth * two equals: twoFifth ! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:57'!
test15EnteroDividesFraccionCorrectly

	self assert: one / twoFifth equals: fiveHalfs  ! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:59'!
test16FraccionDividesEnteroCorrectly

	self assert: twoFifth / five equals: twoTwentyfifth ! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:38'!
test17AFraccionCanBeEqualToAnEntero

	self assert: two equals: four / two! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:39'!
test18AparentFraccionesAreEqual

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:40'!
test19AddingFraccionesCanReturnAnEntero

	self assert: oneHalf + oneHalf equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:42'!
test20MultiplyingFraccionesCanReturnAnEntero

	self assert: (two/five) * (five/two) equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:42'!
test21DividingFraccionesCanReturnAnEntero

	self assert: oneHalf / oneHalf equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:43'!
test22DividingEnterosCanReturnAFraccion

	self assert: two / four equals: oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:46'!
test23CanNotDivideEnteroByZero

	self 
		should: [ one / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Numero canNotDivideByZeroErrorDescription ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:46'!
test24CanNotDivideFraccionByZero

	self 
		should: [ oneHalf / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Numero canNotDivideByZeroErrorDescription ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test25AFraccionCanNotBeZero

	self deny: oneHalf isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test26AFraccionCanNotBeOne

	self deny: oneHalf isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 4/15/2021 16:45:35'!
test27EnteroSubstractsEnteroCorrectly

	self assert: four - one equals: three! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:47:41'!
test28FraccionSubstractsFraccionCorrectly
	
	self assert: twoFifth - oneFifth equals: oneFifth.! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:48:00'!
test29EnteroSubstractsFraccionCorrectly

	self assert: one - oneHalf equals: oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'HAW 9/24/2018 08:48:05'!
test30FraccionSubstractsEnteroCorrectly

	| sixFifth |
	
	sixFifth := (Entero with: 6) / (Entero with: 5).
	
	self assert: sixFifth - one equals: oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'HAW 9/24/2018 08:48:08'!
test31SubstractingFraccionesCanReturnAnEntero

	| threeHalfs |
	
	threeHalfs := (Entero with: 3) / (Entero with: 2).
	
	self assert: threeHalfs - oneHalf equals: one.! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:48:48'!
test32SubstractingSameEnterosReturnsZero

	self assert: one - one equals: zero.! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:01'!
test33SubstractingSameFraccionesReturnsZero

	self assert: oneHalf - oneHalf equals: zero.! !

!NumeroTest methodsFor: 'tests' stamp: 'HAW 9/24/2018 08:48:14'!
test34SubstractingAHigherValueToANumberReturnsANegativeNumber

	| negativeThreeHalfs |
	
	negativeThreeHalfs := (Entero with: -3) / (Entero with: 2).	

	self assert: one - fiveHalfs equals: negativeThreeHalfs.! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:23'!
test35FibonacciZeroIsOne

	self assert: zero fibonacci equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:32'!
test36FibonacciOneIsOne

	self assert: one fibonacci equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:39'!
test37FibonacciEnteroReturnsAddingPreviousTwoFibonacciEnteros

	self assert: four fibonacci equals: five.
	self assert: three fibonacci equals: three. 
	self assert: five fibonacci equals: four fibonacci + three fibonacci.! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:47'!
test38FibonacciNotDefinedForNegativeNumbers

	self 
		should: [negativeOne fibonacci]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Entero negativeFibonacciErrorDescription ].! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:55'!
test39NegationOfEnteroIsCorrect

	self assert: two negated equals: negativeTwo.
		! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:03'!
test40NegationOfFraccionIsCorrect

	self assert: oneHalf negated equals: negativeOne / two.! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:11'!
test41SignIsCorrectlyAssignedToFractionWithTwoNegatives

	self assert: oneHalf equals: (negativeOne / negativeTwo)! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:17'!
test42SignIsCorrectlyAssignedToFractionWithNegativeDivisor

	self assert: oneHalf negated equals: (one / negativeTwo)! !


!NumeroTest methodsFor: 'setup' stamp: 'MS 4/21/2021 23:42:58'!
setUp
	zero := Entero with: 0.
	one := Entero with: 1.
	two := Entero with: 2.
	three:= Entero with: 3.
	four := Entero with: 4.
	five := Entero with: 5.
	eight := Entero with: 8.
	negativeOne := Entero with: -1.
	negativeTwo := Entero with: -2.
	
	oneHalf := one / two.
	oneFifth := one / five.
	twoFifth := two / five.
	twoTwentyfifth := two / (Entero with: 25).
	fiveHalfs := five / two.
	! !


!classDefinition: #Numero category: 'Numero-Exercise'!
Object subclass: #Numero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:48'!
* aMultiplier

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:49'!
+ anAdder

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'NR 9/23/2018 22:21:28'!
- aSubtrahend

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:49'!
/ aDivisor

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'MS 4/21/2021 23:32:12'!
addFraction: aFractionAdder
	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'MS 4/21/2021 23:31:49'!
addInteger: anIntegerAdder
	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'MS 4/21/2021 23:32:50'!
divideAFraction: aFractionalDividend
	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'MS 4/21/2021 23:33:05'!
divideAnInteger: anIntegerDividend
	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:48'!
invalidNumberType

	self error: self class invalidNumberTypeErrorDescription! !

!Numero methodsFor: 'arithmetic operations' stamp: 'MS 4/21/2021 23:33:43'!
multiplyByFraction: aFractionalMultiplier
	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'MS 4/21/2021 23:34:02'!
multiplyByInteger: anIntegerMultiplier
	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'NR 9/23/2018 23:37:13'!
negated
	
	^self * (Entero with: -1)! !


!Numero methodsFor: 'testing' stamp: 'NR 9/23/2018 23:36:49'!
isNegative

	self subclassResponsibility ! !

!Numero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isOne

	self subclassResponsibility ! !

!Numero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isZero

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Numero class' category: 'Numero-Exercise'!
Numero class
	instanceVariableNames: ''!

!Numero class methodsFor: 'error descriptions' stamp: 'NR 4/15/2021 16:42:02'!
canNotDivideByZeroErrorDescription

	^'No se puede dividir por cero!!!!!!'! !

!Numero class methodsFor: 'error descriptions' stamp: 'NR 4/15/2021 16:42:09'!
invalidNumberTypeErrorDescription
	
	^ 'Tipo de n�mero inv�lido!!!!!!'! !


!classDefinition: #Entero category: 'Numero-Exercise'!
Numero subclass: #Entero
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 22:59:29'!
* aMultiplier 
	
	^ aMultiplier multiplyByInteger: self.
	! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 22:58:25'!
+ anAdder 

	^ anAdder addInteger: self.
	
! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 22:58:25'!
- aSubtrahend 

	^ aSubtrahend negated addInteger: self.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:25:17'!
/ aDivisor 

	^ aDivisor divideAnInteger: self.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:43:32'!
// aDivisor 
	
	^ Entero with: value // aDivisor integerValue! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:26:23'!
addFraction: aFractionalAdder

	^ (aFractionalAdder numerator + (aFractionalAdder denominator * self)) / (aFractionalAdder denominator).! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:25:57'!
addInteger: anIntegerAdder

	^ Entero with: anIntegerAdder integerValue + value.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:27:22'!
divideAFraction: aFractionalDividend 
	
	^ (aFractionalDividend numerator) / (aFractionalDividend denominator * self)! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:27:32'!
divideAnInteger: anIntegerDividend 

	^ Fraccion with: anIntegerDividend over: self.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:44:26'!
fibonacci
	
	^ self fibonacci
		! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:41:44'!
greatestCommonDivisorWith: anInteger 
	
	^ Entero with: (value gcd: anInteger integerValue)! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:00:01'!
multiplyByFraction: aFractionalMultiplier 
	
	^ (aFractionalMultiplier numerator * self) / (aFractionalMultiplier denominator).
	! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:28:36'!
multiplyByInteger: anIntegerMultiplier

	^ Entero with: anIntegerMultiplier integerValue * value.! !


!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 21:01'!
= anObject

	^(anObject isKindOf: self class) and: [ value = anObject integerValue ]! !

!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:17'!
hash

	^value hash! !



!Entero methodsFor: 'value' stamp: 'HernanWilkinson 5/7/2016 21:02'!
integerValue

	"Usamos integerValue en vez de value para que no haya problemas con el mensaje value implementado en Object - Hernan"
	
	^value! !


!Entero methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:53:19'!
printOn: aStream

	aStream print: value ! !


!Entero methodsFor: 'testing' stamp: 'NR 9/23/2018 22:17:55'!
isNegative
	
	^value < 0! !

!Entero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 20:14'!
isOne
	
	^value = 1! !

!Entero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 20:12'!
isZero
	
	^value = 0! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Entero class' category: 'Numero-Exercise'!
Entero class
	instanceVariableNames: ''!

!Entero class methodsFor: 'error descriptions' stamp: 'NR 4/15/2021 16:42:24'!
negativeFibonacciErrorDescription
	^ ' Fibonacci no est� definido aqu� para Enteros Negativos!!!!!!'! !


!Entero class methodsFor: 'instance creation' stamp: 'MS 4/21/2021 23:40:00'!
with: aValue 
	
	"Esta verificacion esta puesta por si se equivocan y quieren crear un Entero pasando otra cosa que un Integer - Hernan"
	aValue isInteger ifFalse: [  self error: 'aValue debe ser anInteger' ].
	
	(aValue = 0) ifTrue: [^ Cero create].
	(aValue = 1) ifTrue: [^ Uno create].
	(aValue < 0) ifTrue: [^ Negativo with: aValue].
	(aValue > 0) ifTrue: [^ MayorQueUno with: aValue].
		
	^self error: 'aValue debe ser v�lido'! !


!classDefinition: #Cero category: 'Numero-Exercise'!
Entero subclass: #Cero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!Cero methodsFor: 'initialization' stamp: 'ENC 4/21/2021 00:38:33'!
generateAFractionWith: aNumerator

	^ self error: self class canNotDivideByZeroErrorDescription.! !

!Cero methodsFor: 'initialization' stamp: 'MS 4/21/2021 22:59:47'!
initalizeZero
	value := 0! !


!Cero methodsFor: 'arithmetic operations' stamp: 'MS 4/21/2021 23:37:33'!
fibonacci

	^ Uno create! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Cero class' category: 'Numero-Exercise'!
Cero class
	instanceVariableNames: ''!

!Cero class methodsFor: 'instance creation' stamp: 'MS 4/21/2021 23:35:55'!
create
	^Cero new initalizeZero! !


!classDefinition: #NegativoOMayorQueUno category: 'Numero-Exercise'!
Entero subclass: #NegativoOMayorQueUno
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!NegativoOMayorQueUno methodsFor: 'initialization' stamp: 'MS 4/21/2021 23:17:11'!
initalizeWith: aValue
	value := aValue! !


!classDefinition: #MayorQueUno category: 'Numero-Exercise'!
NegativoOMayorQueUno subclass: #MayorQueUno
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!MayorQueUno methodsFor: 'initialization' stamp: 'ENC 4/21/2021 00:38:21'!
generateAFractionWith: aNumerator
	| denominator greatestCommonDivisor numerator |
	
	greatestCommonDivisor := aNumerator greatestCommonDivisorWith: self. 
	numerator := aNumerator // greatestCommonDivisor.
	denominator := self // greatestCommonDivisor.
	
	^ denominator generateReducedFractionWith: numerator.! !

!MayorQueUno methodsFor: 'initialization' stamp: 'ENC 4/21/2021 00:36:08'!
generateReducedFractionWith: aNumerator

	^ Fraccion new initializeWith: aNumerator over: self.
	! !


!MayorQueUno methodsFor: 'arithmetic operations' stamp: 'MS 4/21/2021 23:38:11'!
fibonacci

	| one two |

	one := Uno create.
	two := self class with: 2.
	
	^ (self - one) fibonacci + (self - two) fibonacci! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MayorQueUno class' category: 'Numero-Exercise'!
MayorQueUno class
	instanceVariableNames: ''!

!MayorQueUno class methodsFor: 'instance creation' stamp: 'ENC 4/19/2021 20:50:00'!
with: aValue 
	
	"Esta verificacion esta puesta por si se equivocan y quieren crear un Entero pasando otra cosa que un Integer - Hernan"
	aValue isInteger ifFalse: [  self error: 'aValue debe ser anInteger' ].
		
	^self new initalizeWith: aValue.! !


!classDefinition: #Negativo category: 'Numero-Exercise'!
NegativoOMayorQueUno subclass: #Negativo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!Negativo methodsFor: 'initialization' stamp: 'ENC 4/21/2021 00:38:07'!
generateAFractionWith: aNumerator

	^ aNumerator negated / self negated.! !


!Negativo methodsFor: 'arithmetic operations' stamp: 'ENC 4/18/2021 18:03:12'!
fibonacci

	^ self error: Negativo negativeFibonacciErrorDescription. ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Negativo class' category: 'Numero-Exercise'!
Negativo class
	instanceVariableNames: ''!

!Negativo class methodsFor: 'instance creation' stamp: 'ENC 4/19/2021 20:50:04'!
with: aValue 
	
	"Esta verificacion esta puesta por si se equivocan y quieren crear un Entero pasando otra cosa que un Integer - Hernan"
	aValue isInteger ifFalse: [  self error: 'aValue debe ser anInteger' ].
		
	^self new initalizeWith: aValue.! !


!classDefinition: #Uno category: 'Numero-Exercise'!
Entero subclass: #Uno
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!Uno methodsFor: 'arithmetic operations' stamp: 'MS 4/21/2021 23:37:42'!
fibonacci

	^ self class create! !


!Uno methodsFor: 'initialization' stamp: 'ENC 4/21/2021 00:37:46'!
generateAFractionWith: aNumerator

	^ aNumerator.! !

!Uno methodsFor: 'initialization' stamp: 'ENC 4/21/2021 00:33:00'!
generateReducedFractionWith: aNumerator
	
	^ aNumerator.
	! !

!Uno methodsFor: 'initialization' stamp: 'MS 4/21/2021 22:59:15'!
initalizeOne
	value := 1! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Uno class' category: 'Numero-Exercise'!
Uno class
	instanceVariableNames: ''!

!Uno class methodsFor: 'instance creation' stamp: 'MS 4/21/2021 23:35:27'!
create
	^Uno new initalizeOne! !


!classDefinition: #Fraccion category: 'Numero-Exercise'!
Numero subclass: #Fraccion
	instanceVariableNames: 'numerator denominator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:00:01'!
* aMultiplier 

	^ aMultiplier multiplyByFraction: self.! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 22:59:00'!
+ anAdder 	

	^ anAdder addFraction: self.
	
	! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 22:59:00'!
- aSubtrahend  
	
	^ aSubtrahend negated addFraction: self.! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:23:28'!
/ aDivisor 
	
	^ aDivisor divideAFraction: self.! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:40:58'!
addFraction: aFractionalAdder
	
	| newNumerator newDenominator |

	newNumerator    := (denominator * aFractionalAdder numerator) + (numerator * aFractionalAdder denominator) .
	newDenominator := denominator * aFractionalAdder denominator.
	
	^ newNumerator / newDenominator
	! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ENC 4/21/2021 00:42:42'!
addInteger: anIntegerAdder
	
	^ anIntegerAdder addFraction: self.
	! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:36:26'!
divideAFraction: aFractionalDividend 
	
	^ (aFractionalDividend numerator * denominator) / (aFractionalDividend denominator * numerator).! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:36:03'!
divideAnInteger: anIntegerDividend
	
	^ (anIntegerDividend * self denominator) / (self numerator). ! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ENC 4/20/2021 23:36:42'!
multiplyByFraction: aFractionalMultiplier 

	^ (aFractionalMultiplier numerator * numerator) / (aFractionalMultiplier denominator * denominator)
	! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ENC 4/21/2021 00:44:38'!
multiplyByInteger: anIntegerMultiplier 

	^ anIntegerMultiplier multiplyByFraction: self.! !


!Fraccion methodsFor: 'comparing' stamp: 'ENC 4/20/2021 23:40:13'!
= anObject

	^ (anObject isKindOf: self class) and: [ (numerator * anObject denominator) = (denominator * anObject numerator) ]! !

!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:50'!
hash

	^(numerator hash / denominator hash) hash! !


!Fraccion methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:56'!
denominator

	^ denominator! !

!Fraccion methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:56'!
numerator

	^ numerator! !


!Fraccion methodsFor: 'initialization' stamp: 'ENC 4/20/2021 23:59:47'!
initializeWith: aNumerator over: aDenominator

	"Estas precondiciones estan por si se comenten errores en la implementacion - Hernan"
	
	numerator := aNumerator.
	denominator := aDenominator ! !


!Fraccion methodsFor: 'testing' stamp: 'ENC 4/20/2021 23:40:28'!
isNegative
	
	^ numerator < 0! !

!Fraccion methodsFor: 'testing' stamp: 'ENC 4/20/2021 23:40:31'!
isOne
	
	^ false! !

!Fraccion methodsFor: 'testing' stamp: 'ENC 4/20/2021 23:40:37'!
isZero
	
	^ false! !


!Fraccion methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:54:46'!
printOn: aStream

	aStream 
		print: numerator;
		nextPut: $/;
		print: denominator ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Fraccion class' category: 'Numero-Exercise'!
Fraccion class
	instanceVariableNames: ''!

!Fraccion class methodsFor: 'intance creation' stamp: 'ENC 4/21/2021 00:36:47'!
with: aDividend over: aDivisor

	^ aDivisor generateAFractionWith: aDividend.
	! !
