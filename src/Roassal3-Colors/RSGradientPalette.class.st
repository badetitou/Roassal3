"
I have instances of linear graient paints
I use the colors from this website https://webgradients.com/
"
Class {
	#name : #RSGradientPalette,
	#superclass : #RSObject,
	#category : #'Roassal3-Colors'
}

{ #category : #gradients }
RSGradientPalette class >> burningSpring [
	^ self linearGradient: 
		{0->'4fb576'. 
		0.30->'44c489'.
		0.46->'28a9ae'.
		0.59->'28a2b7'.
		0.71->'4c7788'.
		0.86->'6c4f63'.
		1->'432c39' }
]

{ #category : #gradients }
RSGradientPalette class >> cloudyKnoxville [
	^ self linearGradient: 
		{0->'fdfbfb'. 
		1->'ebedee' }
]

{ #category : #gradients }
RSGradientPalette class >> deepBlue [
	^ self linearGradient: 
		{0->'e0c3fc'. 
		1->'8ec5fc' }
]

{ #category : #gradients }
RSGradientPalette class >> dustyGrass [
	^ self linearGradient: 
		{0->'d4fc79'. 
		1->'96e6a1' }
]

{ #category : #gradients }
RSGradientPalette class >> fabledSunset [
	^ self linearGradient: 
		{0->'231557'. 
		0.29->'44107A'.
		0.67->'FF1361'.
		1->'FFF800' }
]

{ #category : #palette }
RSGradientPalette class >> gradient21 [
	^ TSScale ordinal range:( 
		#('warmFlame' 
			'nightFade' 
			'youngPassion' 
			'sunnyMorning' 
			'rainyAshville'
			'winterNeva'
			'dustyGrass'
			'temptingAzure'
			'heavyRain'
			'deepBlue'
			'cloudyKnoxville'
			'malibuBeach'
			'trueSunset'
			'morpheusDen'
			'nearMoon'
			'happyFisher'
			'sweetPeriod'
			'burningSpring'
			'redSalvation'
			'northMiracle'
			'fabledSunset') collect: [ :selector | self perform: selector asSymbol ] );
		yourself
]

{ #category : #gradients }
RSGradientPalette class >> happyFisher [
	^ self linearGradient: 
		{0->'89f7fe'. 
		1->'66a6ff' }
]

{ #category : #gradients }
RSGradientPalette class >> heavyRain [
	^ self linearGradient: 
		{0->'cfd9df'. 
		1->'e2ebf0' }
]

{ #category : #gradients }
RSGradientPalette class >> linearGradient: array [
	^ LinearGradientPaint new 
		colorRamp: (array collect: [ :as | as key -> (Color colorFrom: as value) ] );
		yourself
]

{ #category : #gradients }
RSGradientPalette class >> malibuBeach [
	^ self linearGradient: 
		{0->'4facfe'. 
		1->'00f2fe' }
]

{ #category : #gradients }
RSGradientPalette class >> morpheusDen [
	^ self linearGradient: 
		{0->'30cfd0'. 
		1->'330867' }
]

{ #category : #gradients }
RSGradientPalette class >> nearMoon [
	^ self linearGradient: 
		{0->'5ee7df'. 
		1->'b490ca' }
]

{ #category : #gradients }
RSGradientPalette class >> nightFade [
	^ self linearGradient: 
		{0->'a18cd1'. 
		1->'fbc2eb' }
]

{ #category : #gradients }
RSGradientPalette class >> northMiracle [
	^ self linearGradient: 
		{0->'00dbde'. 
		1->'fc00ff' }
]

{ #category : #gradients }
RSGradientPalette class >> rainyAshville [
	^ self linearGradient: 
		{0->'fbc2eb'. 
		1->'a6c1ee' }
]

{ #category : #gradients }
RSGradientPalette class >> redSalvation [
	^ self linearGradient: 
		{0->'f43b47'. 
		1->'453a94' }
]

{ #category : #gradients }
RSGradientPalette class >> sunnyMorning [
	^ self linearGradient: 
		{0->'f6d365'. 
		1->'fda085' }
]

{ #category : #gradients }
RSGradientPalette class >> sweetPeriod [
	^ self linearGradient: 
		{0->'3f51b1'. 
		0.13->'5a55ae'.
		0.25->'7b5fac'.
		0.38->'8f6aae'.
		0.50->'a86aa4'.
		0.62->'cc6b8e'.
		0.75->'f18271'.
		0.87->'f3a469'.
		1->'f7c978' }
]

{ #category : #gradients }
RSGradientPalette class >> temptingAzure [
	^ self linearGradient: 
		{0->'84fab0'. 
		1->'8fd3f4' }
]

{ #category : #gradients }
RSGradientPalette class >> trueSunset [
	^ self linearGradient: 
		{0->'fa709a'. 
		1->'fee140' }
]

{ #category : #gradients }
RSGradientPalette class >> warmFlame [
	^ self linearGradient: 
		{0-> 'ff9a9e'. 
		1->'fad0c4' }.
	
]

{ #category : #gradients }
RSGradientPalette class >> winterNeva [
	^ self linearGradient: 
		{0->'a1c4fd'. 
		1->'c2e9fb' }
]

{ #category : #gradients }
RSGradientPalette class >> youngPassion [
	^ self linearGradient:
		{(0 -> 'ff867a').
		(0.21 -> 'ff8c7f').
		(0.52 -> 'f99185').
		(0.78 -> 'cf556c').
		(1 -> 'b12a5b')}
]