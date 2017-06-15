   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.11.5 - 29 Dec 2015
   3                     ; Generator (Limited) V4.4.4 - 27 Jan 2016
  46                     ; 17 void main()
  46                     ; 18 {
  48                     	switch	.text
  49  0000               _main:
  53                     ; 19 initAll();
  55  0000 ad12          	call	_initAll
  57                     ; 20 SPI_ResetCRC();
  59  0002 cd0000        	call	_SPI_ResetCRC
  61  0005               L12:
  62                     ; 23 		if(IN1_IsON)
  64  0005 c6500b        	ld	a,20491
  65  0008 a510          	bcp	a,#16
  66  000a 27f9          	jreq	L12
  67                     ; 25 			myDelay();
  69  000c ad61          	call	_myDelay
  71                     ; 26 			GLED_TOGGLE;			
  73  000e 90145000      	bcpl	20480,#2
  74  0012 20f1          	jra	L12
  98                     ; 75 void initAll(void)
  98                     ; 76 {
  99                     	switch	.text
 100  0014               _initAll:
 104                     ; 77 	REL1_GPIO->DDR |= 1<<REL1_PIN;
 106  0014 72185011      	bset	20497,#4
 107                     ; 78 	REL1_GPIO->CR1 |= 1<<REL1_PIN;
 109  0018 72185012      	bset	20498,#4
 110                     ; 79 	REL2_GPIO->DDR |= 1<<REL2_PIN;
 112  001c 721a5011      	bset	20497,#5
 113                     ; 80 	REL2_GPIO->CR1 |= 1<<REL2_PIN;   
 115  0020 721a5012      	bset	20498,#5
 116                     ; 81 	REL3_GPIO->DDR |= 1<<REL3_PIN;
 118  0024 721c5011      	bset	20497,#6
 119                     ; 82 	REL3_GPIO->CR1 |= 1<<REL3_PIN;
 121  0028 721c5012      	bset	20498,#6
 122                     ; 83 	REL4_GPIO->DDR |= 1<<REL4_PIN;
 124  002c 72125002      	bset	20482,#1
 125                     ; 84 	REL4_GPIO->CR1 |= 1<<REL4_PIN;
 127  0030 72125003      	bset	20483,#1
 128                     ; 85 	GLED_GPIO->DDR |= 1<<GLED_PIN;
 130  0034 72145002      	bset	20482,#2
 131                     ; 86 	GLED_GPIO->CR1 |= 1<<GLED_PIN;
 133  0038 72145003      	bset	20483,#2
 134                     ; 88 	IN1_GPIO->DDR &= ~(1<<IN1_PIN);
 136  003c 7219500c      	bres	20492,#4
 137                     ; 89 	IN1_GPIO->CR1 |= 1<<IN1_PIN;
 139  0040 7218500d      	bset	20493,#4
 140                     ; 90 	IN2_GPIO->DDR &= ~(1<<IN2_PIN);
 142  0044 7217500c      	bres	20492,#3
 143                     ; 91 	IN2_GPIO->CR1 |= 1<<IN2_PIN;
 145  0048 7216500d      	bset	20493,#3
 146                     ; 92 	IN3_GPIO->DDR &= ~(1<<IN3_PIN);
 148  004c 72195007      	bres	20487,#4
 149                     ; 93 	IN3_GPIO->CR1 |= 1<<IN3_PIN;
 151  0050 72185008      	bset	20488,#4
 152                     ; 94 	IN4_GPIO->DDR &= ~(1<<IN4_PIN);
 154  0054 721b5007      	bres	20487,#5
 155                     ; 95 	IN4_GPIO->CR1 |= 1<<IN4_PIN;
 157  0058 721a5008      	bset	20488,#5
 158                     ; 97 	SPI_Init(	SPI_FIRSTBIT_MSB, 
 158                     ; 98 						SPI_BAUDRATEPRESCALER_2,
 158                     ; 99 						SPI_MODE_MASTER,
 158                     ; 100 						SPI_CLOCKPOLARITY_LOW,
 158                     ; 101 						SPI_CLOCKPHASE_1EDGE,
 158                     ; 102 						SPI_DATADIRECTION_2LINES_FULLDUPLEX,
 158                     ; 103 						SPI_NSS_SOFT,
 158                     ; 104 						0
 158                     ; 105 						);
 160  005c 4b00          	push	#0
 161  005e 4b02          	push	#2
 162  0060 4b00          	push	#0
 163  0062 4b00          	push	#0
 164  0064 4b00          	push	#0
 165  0066 4b04          	push	#4
 166  0068 5f            	clrw	x
 167  0069 cd0000        	call	_SPI_Init
 169  006c 5b06          	addw	sp,#6
 170                     ; 106 }
 173  006e 81            	ret
 216                     ; 108 void myDelay()
 216                     ; 109 {
 217                     	switch	.text
 218  006f               _myDelay:
 220  006f 5204          	subw	sp,#4
 221       00000004      OFST:	set	4
 224                     ; 111 	for(i=0;i<200;i++)
 226  0071 5f            	clrw	x
 227  0072 1f01          	ldw	(OFST-3,sp),x
 229  0074               L16:
 230                     ; 113 		for(j=0;j<100;j++)
 232  0074 5f            	clrw	x
 233  0075 1f03          	ldw	(OFST-1,sp),x
 235  0077               L76:
 238  0077 1e03          	ldw	x,(OFST-1,sp)
 239  0079 1c0001        	addw	x,#1
 240  007c 1f03          	ldw	(OFST-1,sp),x
 244  007e 9c            	rvf
 245  007f 1e03          	ldw	x,(OFST-1,sp)
 246  0081 a30064        	cpw	x,#100
 247  0084 2ff1          	jrslt	L76
 248                     ; 111 	for(i=0;i<200;i++)
 250  0086 1e01          	ldw	x,(OFST-3,sp)
 251  0088 1c0001        	addw	x,#1
 252  008b 1f01          	ldw	(OFST-3,sp),x
 256  008d 9c            	rvf
 257  008e 1e01          	ldw	x,(OFST-3,sp)
 258  0090 a300c8        	cpw	x,#200
 259  0093 2fdf          	jrslt	L16
 260                     ; 118 }
 263  0095 5b04          	addw	sp,#4
 264  0097 81            	ret
 277                     	xdef	_main
 278                     	xdef	_initAll
 279                     	xdef	_myDelay
 280                     	xref	_SPI_ResetCRC
 281                     	xref	_SPI_Init
 300                     	end
