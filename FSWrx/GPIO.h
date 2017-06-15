
#define REL1_GPIO (GPIOD)
#define REL1_PIN (4)
#define REL1_ON (((REL1_GPIO)->ODR) |= ((1)<<(REL1_PIN)))
#define REL1_OFF (((REL1_GPIO)->ODR) &= ~((1)<<(REL1_PIN)))

#define REL2_GPIO (GPIOD)
#define REL2_PIN (5)
#define REL2_ON (((REL2_GPIO)->ODR) |= ((1)<<(REL2_PIN)))
#define REL2_OFF (((REL2_GPIO)->ODR) &= ~((1)<<(REL2_PIN)))

#define REL3_GPIO (GPIOD)
#define REL3_PIN (6)
#define REL3_ON (((REL3_GPIO)->ODR) |= ((1)<<(REL3_PIN)))
#define REL3_OFF (((REL3_GPIO)->ODR) &= ~((1)<<(REL3_PIN)))

#define REL4_GPIO (GPIOA)
#define REL4_PIN (1)
#define REL4_ON (((REL4_GPIO)->ODR) |= ((1)<<(REL4_PIN)))
#define REL4_OFF (((REL4_GPIO)->ODR) &= ~((1)<<(REL4_PIN)))

#define GLED_GPIO (GPIOA)
#define GLED_PIN (2)
#define GLED_ON (((GLED_GPIO)->ODR) |= ((1)<<(GLED_PIN)))
#define GLED_OFF (((GLED_GPIO)->ODR) &= ~((1)<<(GLED_PIN)))
#define GLED_TOGGLE (((GLED_GPIO)->ODR) ^= ((1)<<(GLED_PIN)))

#define IN1_GPIO (GPIOC)
#define IN1_PIN (4)
#define IN1_IsON ((((IN1_GPIO)->IDR)&(1<<IN1_PIN))!=(0)) 

#define IN2_GPIO (GPIOC)
#define IN2_PIN (3)
#define IN2_IsON ((((IN2_GPIO)->IDR)&(1<<IN2_PIN))!=(0)) 

#define IN3_GPIO (GPIOB)
#define IN3_PIN (4)
#define IN3_IsON ((((IN3_GPIO)->IDR)&(1<<IN3_PIN))!=(0)) 

#define IN4_GPIO (GPIOB)
#define IN4_PIN (5)
#define IN4_IsON ((((IN4_GPIO)->IDR)&(1<<IN4_PIN))!=(0)) 
