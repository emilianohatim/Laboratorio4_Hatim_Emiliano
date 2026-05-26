
build/bin/Laboratorio4.elf:     file format elf32-littlearm
build/bin/Laboratorio4.elf
architecture: armv7e-m, flags 0x00000112:
EXEC_P, HAS_SYMS, D_PAGED
start address 0x1a000589

Program Header:
    LOAD off    0x00000004 vaddr 0x10000004 paddr 0x10000004 align 2**12
         filesz 0x00000000 memsz 0x000000dc flags rw-
    LOAD off    0x00001000 vaddr 0x1a000000 paddr 0x1a000000 align 2**12
         filesz 0x000019a0 memsz 0x000019a0 flags r-x
    LOAD off    0x00003000 vaddr 0x10000000 paddr 0x1a0019a0 align 2**12
         filesz 0x00000004 memsz 0x00000004 flags rw-
private flags = 0x5000200: [Version5 EABI] [soft-float ABI]

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         00000248  1a000000  1a000000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .init         00000004  1a000248  1a000248  00001248  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .fini         00000004  1a00024c  1a00024c  0000124c  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  3 .data         00000004  10000000  1a0019a0  00003000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  4 .data_RAM2    00000000  10080000  10080000  00003004  2**2
                  CONTENTS
  5 .data_RAM3    00000000  20000000  20000000  00003004  2**2
                  CONTENTS
  6 .data_RAM4    00000000  20008000  20008000  00003004  2**2
                  CONTENTS
  7 .data_RAM5    00000000  2000c000  2000c000  00003004  2**2
                  CONTENTS
  8 .bss          000000dc  10000004  10000004  00001004  2**2
                  ALLOC
  9 .text         00001750  1a000250  1a000250  00001250  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
 10 .uninit_RESERVED 00000000  10000000  10000000  00003004  2**2
                  CONTENTS
 11 .noinit_RAM2  00000000  10080000  10080000  00003004  2**2
                  CONTENTS
 12 .noinit_RAM3  00000000  20000000  20000000  00003004  2**2
                  CONTENTS
 13 .noinit_RAM4  00000000  20008000  20008000  00003004  2**2
                  CONTENTS
 14 .noinit_RAM5  00000000  2000c000  2000c000  00003004  2**2
                  CONTENTS
 15 .noinit       00000000  100000e0  100000e0  00000000  2**2
                  ALLOC
 16 .ARM.attributes 0000002e  00000000  00000000  00003004  2**0
                  CONTENTS, READONLY
 17 .comment      00000012  00000000  00000000  00003032  2**0
                  CONTENTS, READONLY
 18 .debug_info   00004d3c  00000000  00000000  00003044  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 19 .debug_abbrev 00001020  00000000  00000000  00007d80  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 20 .debug_aranges 000003d0  00000000  00000000  00008da0  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 21 .debug_rnglists 000002bc  00000000  00000000  00009170  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 22 .debug_macro  00007300  00000000  00000000  0000942c  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 23 .debug_line   000051de  00000000  00000000  0001072c  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 24 .debug_str    0001c1a2  00000000  00000000  0001590a  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 25 .debug_frame  00000d98  00000000  00000000  00031aac  2**2
                  CONTENTS, READONLY, DEBUGGING, OCTETS
 26 .debug_loclists 000001c2  00000000  00000000  00032844  2**0
                  CONTENTS, READONLY, DEBUGGING, OCTETS
SYMBOL TABLE:
1a000000 l    d  .text	00000000 .text
1a000248 l    d  .init	00000000 .init
1a00024c l    d  .fini	00000000 .fini
10000000 l    d  .data	00000000 .data
10080000 l    d  .data_RAM2	00000000 .data_RAM2
20000000 l    d  .data_RAM3	00000000 .data_RAM3
20008000 l    d  .data_RAM4	00000000 .data_RAM4
2000c000 l    d  .data_RAM5	00000000 .data_RAM5
10000004 l    d  .bss	00000000 .bss
1a000250 l    d  .text	00000000 .text
10000000 l    d  .uninit_RESERVED	00000000 .uninit_RESERVED
10080000 l    d  .noinit_RAM2	00000000 .noinit_RAM2
20000000 l    d  .noinit_RAM3	00000000 .noinit_RAM3
20008000 l    d  .noinit_RAM4	00000000 .noinit_RAM4
2000c000 l    d  .noinit_RAM5	00000000 .noinit_RAM5
100000e0 l    d  .noinit	00000000 .noinit
00000000 l    d  .ARM.attributes	00000000 .ARM.attributes
00000000 l    d  .comment	00000000 .comment
00000000 l    d  .debug_info	00000000 .debug_info
00000000 l    d  .debug_abbrev	00000000 .debug_abbrev
00000000 l    d  .debug_aranges	00000000 .debug_aranges
00000000 l    d  .debug_rnglists	00000000 .debug_rnglists
00000000 l    d  .debug_macro	00000000 .debug_macro
00000000 l    d  .debug_line	00000000 .debug_line
00000000 l    d  .debug_str	00000000 .debug_str
00000000 l    d  .debug_frame	00000000 .debug_frame
00000000 l    d  .debug_loclists	00000000 .debug_loclists
00000000 l    df *ABS*	00000000 cr_startup_lpc43xx.c
00000000 l    df *ABS*	00000000 crti.o
00000000 l    df *ABS*	00000000 main.c
1a000250 l     F .text	000000b0 FlashLed
10000004 l     O .bss	00000004 divisor.1
10000000 l     O .data	00000001 state.0
1a000300 l     F .text	00000044 SwitchLed
1a000344 l     F .text	0000002a ToggleLed
1a00036e l     F .text	00000036 TestLed
1a0003a4 l     F .text	0000003e Delay
00000000 l    df *ABS*	00000000 placa.c
1a000410 l     F .text	00000034 Chip_SCU_PinMuxSet
1a000444 l     F .text	000000ac ConfigureLeds
1a0004f0 l     F .text	00000078 ConfigureKeys
10000008 l     O .bss	00000028 self.0
00000000 l    df *ABS*	00000000 digital.c
1a00066c l     F .text	00000038 Chip_GPIO_SetPinState
1a0006a4 l     F .text	00000034 Chip_GPIO_ReadPortBit
1a0006d8 l     F .text	0000003e Chip_GPIO_SetPinDIROutput
1a000716 l     F .text	00000040 Chip_GPIO_SetPinDIRInput
1a000756 l     F .text	00000042 Chip_GPIO_SetPinDIR
1a000798 l     F .text	00000032 Chip_GPIO_SetPinToggle
10000030 l     O .bss	00000050 salidas_instancias
10000080 l     O .bss	00000050 entradas_instancias
100000d0 l     O .bss	00000001 salidas_alocadas
100000d1 l     O .bss	00000001 entradas_alocadas
00000000 l    df *ABS*	00000000 board.c
1a000a34 l     F .text	00000034 Chip_SCU_PinMuxSet
1a000a68 l     F .text	00000054 Chip_CREG_SetFlashAcceleration
1a000abc l     F .text	00000038 Chip_GPIO_SetPinState
1a000af4 l     F .text	0000003e Chip_GPIO_SetPinDIROutput
1a000b32 l     F .text	00000040 Chip_GPIO_SetPinDIRInput
1a000b72 l     F .text	00000042 Chip_GPIO_SetPinDIR
1a0018d8 l     O .text	00000004 InitClkStates
1a000bb4 l     F .text	00000074 SetupClocking
00000000 l    df *ABS*	00000000 chip_18xx_43xx.c
00000000 l    df *ABS*	00000000 clock_18xx_43xx.c
1a0018e4 l     O .text	0000006c periph_to_base
100000d8 l     O .bss	00000008 audio_usb_pll_freq
1a000d78 l     F .text	00000022 ABS
1a000d9c l     F .text	00000124 pll_calc_divs
1a000ec0 l     F .text	00000180 pll_get_frac
1a001040 l     F .text	00000040 Chip_Clock_GetDivRate
1a001080 l     F .text	00000090 Chip_Clock_FindBaseClock
00000000 l    df *ABS*	00000000 sysinit_18xx_43xx.c
1a001660 l     F .text	00000020 Chip_Clock_DisableMainPLL
1a001680 l     F .text	00000048 Chip_Clock_SetupMainPLL
1a0016c8 l     F .text	00000024 Chip_Clock_MainPLLLocked
1a001958 l     O .text	00000048 InitClkStates
00000000 l    df *ABS*	00000000 memset.c
1a001314 g     F .text	00000040 Chip_Clock_GetDividerSource
1a000c28 g     F .text	00000138 BoardSetup
1a000240  w    F .text	00000008 TIMER2_IRQHandler
1a000228  w    F .text	00000008 DebugMon_Handler
1a000240  w    F .text	00000008 RIT_IRQHandler
1a080000 g       *ABS*	00000000 __top_MFlashA512
1a000114 g       .text	00000000 __section_table_start
1a000240  w    F .text	00000008 FLASH_EEPROM_IRQHandler
1a000240  w    F .text	00000008 I2C0_IRQHandler
1a000200  w    F .text	00000008 HardFault_Handler
2000c000 g       *ABS*	00000000 __base_RamAHB_ETB16
1a000000 g       *ABS*	00000000 __vectors_start__
1a0007cc g     F .text	00000074 DigitalOutputCreate
1a000238  w    F .text	00000008 SysTick_Handler
2000c000 g       *ABS*	00000000 __top_RAM4
1a000240  w    F .text	00000008 SDIO_IRQHandler
20000000 g       *ABS*	00000000 __base_RamAHB32
1a000240  w    F .text	00000008 ATIMER_IRQHandler
10080000 g       *ABS*	00000000 __base_RAM2
1a000230  w    F .text	00000008 PendSV_Handler
1a0001f8  w    F .text	00000008 NMI_Handler
1a0019a0 g       .text	00000000 __exidx_end
1a000150 g       .text	00000000 __data_section_table_end
1a000240  w    F .text	00000008 I2C1_IRQHandler
1a000240  w    F .text	00000008 UART1_IRQHandler
1a000240  w    F .text	00000008 GPIO5_IRQHandler
1a000240  w    F .text	00000008 CAN1_IRQHandler
53ff704a g       *ABS*	00000000 __valid_user_code_checksum
1a0019a0 g       .text	00000000 _etext
1a000240  w    F .text	00000008 USB1_IRQHandler
1a000240  w    F .text	00000008 I2S0_IRQHandler
1a000240  w    F .text	00000008 TIMER3_IRQHandler
1a0014cc g     F .text	00000024 Chip_Clock_GetBaseClocktHz
1a000240  w    F .text	00000008 UART0_IRQHandler
1a0001be g     F .text	0000003a bss_init
1a000240  w    F .text	00000008 SGPIO_IRQHandler
100000e0 g       .noinit	00000000 _noinit
100000d4 g     O .bss	00000004 SystemCoreClock
2000c000 g       *ABS*	00000000 __base_RAM5
1a000884 g     F .text	00000030 DigitalOutputDeactivate
1a000240  w    F .text	00000008 ADC0_IRQHandler
1a000218  w    F .text	00000008 UsageFault_Handler
10008000 g       *ABS*	00000000 __top_RAM
1a0015d8 g     F .text	00000088 Chip_Clock_GetRate
1a000840 g     F .text	00000044 DigitalOutputActivate
1a000240  w    F .text	00000008 GPIO6_IRQHandler
20008000 g       *ABS*	00000000 __top_RamAHB32
1a0018dc g     O .text	00000004 ExtRateIn
1a000240  w    F .text	00000008 IntDefaultHandler
1008a000 g       *ABS*	00000000 __top_RAM2
1a000240  w    F .text	00000008 GPIO1_IRQHandler
1a000240  w    F .text	00000008 SSP0_IRQHandler
1a0019a0 g       .text	00000000 __exidx_start
1a000240  w    F .text	00000008 ADC1_IRQHandler
1a00095c g     F .text	00000058 DigitalInputGetState
1a000248 g     F .init	00000000 _init
1a000114 g       .text	00000000 __data_section_table
10000000 g       *ABS*	00000000 __base_RamLoc32
1a000240  w    F .text	00000008 RTC_IRQHandler
100000e0 g       .bss	00000000 _ebss
1a000240  w    F .text	00000008 TIMER0_IRQHandler
20010000 g       *ABS*	00000000 __top_RamAHB_ETB16
1a000240  w    F .text	00000008 SPI_IRQHandler
1a000240  w    F .text	00000008 LCD_IRQHandler
1a001110 g     F .text	00000070 Chip_Clock_EnableCrystal
20000000 g       *ABS*	00000000 __base_RAM3
20010000 g       *ABS*	00000000 __top_RAM5
10008000 g       *ABS*	00000000 __top_RamLoc32
1a000240  w    F .text	00000008 VADC_IRQHandler
1a000178 g     F .text	00000046 data_init
1a000240  w    F .text	00000008 TIMER1_IRQHandler
100000e0 g       .bss	00000000 end
1a000240  w    F .text	00000008 UART2_IRQHandler
1a001258 g     F .text	000000bc Chip_Clock_GetMainPLLHz
1a000000 g       *ABS*	00000000 __base_Flash
1a000240  w    F .text	00000008 GPIO2_IRQHandler
1a00158c g     F .text	0000004c Chip_Clock_GetBaseClock
1b080000 g       *ABS*	00000000 __top_Flash2
10000004 g       .bss	00000000 _bss
1a000240  w    F .text	00000008 I2S1_IRQHandler
1a0018e0 g     O .text	00000004 OscRateIn
1a080000 g       *ABS*	00000000 __top_Flash
100000e0 g       .noinit	00000000 _end_noinit
10008000 g       *ABS*	00000000 _vStackTop
1a000240  w    F .text	00000008 SSP1_IRQHandler
1a000178 g       .text	00000000 __bss_section_table_end
1a000000 g       *ABS*	00000000 __base_MFlashA512
1b000000 g       *ABS*	00000000 __base_Flash2
1a000a12 g     F .text	00000022 DigitalInputHasActivated
1a000240  w    F .text	00000008 USB0_IRQHandler
1a0008b4 g     F .text	0000002c DigitalOutputToggle
20008000 g       *ABS*	00000000 __base_RamAHB16
1a000240  w    F .text	00000008 GPIO3_IRQHandler
1a000240  w    F .text	00000008 SCT_IRQHandler
1a001354 g     F .text	00000038 Chip_Clock_GetDividerDivisor
1a001834 g     F .text	000000a2 memset
1a000208  w    F .text	00000008 MemManage_Handler
1a0003e2 g     F .text	0000002c main
1a0008e0 g     F .text	0000007c DigitalInputCreate
1a000240  w    F .text	00000008 WDT_IRQHandler
2000c000 g       *ABS*	00000000 __top_RamAHB16
1008a000 g       *ABS*	00000000 __top_RamLoc40
1a000220  w    F .text	00000008 SVC_Handler
20008000 g       *ABS*	00000000 __base_RAM4
1a000240  w    F .text	00000008 GPIO7_IRQHandler
1a00138c g     F .text	00000140 Chip_Clock_GetClockInputHz
1a001180 g     F .text	000000d8 Chip_Clock_CalcMainPLLValue
1a000240  w    F .text	00000008 SPIFI_IRQHandler
1a000240  w    F .text	00000008 QEI_IRQHandler
1a000150 g       .text	00000000 __bss_section_table
1a00024c g     F .fini	00000000 _fini
10080000 g       *ABS*	00000000 __base_RamLoc40
1a000240  w    F .text	00000008 ETH_IRQHandler
1a000240  w    F .text	00000008 M0CORE_IRQHandler
10000000 g       .uninit_RESERVED	00000000 _end_uninit_RESERVED
1a000240  w    F .text	00000008 CAN0_IRQHandler
10000000 g       .data	00000000 _data
1a000178 g       .text	00000000 __section_table_end
1a000240  w    F .text	00000008 GINT0_IRQHandler
1b000000 g       *ABS*	00000000 __base_MFlashB512
1a000240  w    F .text	00000008 DAC_IRQHandler
10000004 g       .data	00000000 _edata
1a000568 g     F .text	00000020 BoardCreate
1a000240  w    F .text	00000008 M0SUB_IRQHandler
1a0016ec g     F .text	00000148 Chip_SetupCoreClock
1a000240  w    F .text	00000008 GPIO0_IRQHandler
10000000 g       *ABS*	00000000 __base_RAM
1a000000 g     O .text	00000114 g_pfnVectors
1a000588 g     F .text	000000e0 ResetISR
1a000d60 g     F .text	00000018 SystemCoreClockUpdate
1a000240  w    F .text	00000008 DMA_IRQHandler
1a000240  w    F .text	00000008 EVRT_IRQHandler
1b080000 g       *ABS*	00000000 __top_MFlashB512
1a0009b4 g     F .text	0000005e DigitalInputHasChanged
20008000 g       *ABS*	00000000 __top_RAM3
1a000210  w    F .text	00000008 BusFault_Handler
1a000240  w    F .text	00000008 UART3_IRQHandler
1a000240  w    F .text	00000008 MCPWM_IRQHandler
1a000240  w    F .text	00000008 GINT1_IRQHandler
1a0014f0 g     F .text	0000009c Chip_Clock_SetBaseClock
1a000240  w    F .text	00000008 GPIO4_IRQHandler



Disassembly of section .text:

1a000000 <g_pfnVectors>:
1a000000:	00 80 00 10 89 05 00 1a f9 01 00 1a 01 02 00 1a     ................
1a000010:	09 02 00 1a 11 02 00 1a 19 02 00 1a 4a 70 ff 53     ............Jp.S
	...
1a00002c:	21 02 00 1a 29 02 00 1a 00 00 00 00 31 02 00 1a     !...).......1...
1a00003c:	39 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     9...A...A...A...
1a00004c:	00 00 00 00 41 02 00 1a 41 02 00 1a 41 02 00 1a     ....A...A...A...
1a00005c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a00006c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a00007c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a00008c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a00009c:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000ac:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000bc:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000cc:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000dc:	41 02 00 1a 41 02 00 1a 41 02 00 1a 41 02 00 1a     A...A...A...A...
1a0000ec:	41 02 00 1a 00 00 00 00 41 02 00 1a 41 02 00 1a     A.......A...A...
1a0000fc:	41 02 00 1a 00 00 00 00 41 02 00 1a 41 02 00 1a     A.......A...A...
1a00010c:	41 02 00 1a 41 02 00 1a                             A...A...

1a000114 <__data_section_table>:
1a000114:	1a0019a0 	.word	0x1a0019a0
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000004 	.word	0x00000004
1a000120:	1a0019a0 	.word	0x1a0019a0
1a000124:	10080000 	.word	0x10080000
1a000128:	00000000 	.word	0x00000000
1a00012c:	1a0019a0 	.word	0x1a0019a0
1a000130:	20000000 	.word	0x20000000
1a000134:	00000000 	.word	0x00000000
1a000138:	1a0019a0 	.word	0x1a0019a0
1a00013c:	20008000 	.word	0x20008000
1a000140:	00000000 	.word	0x00000000
1a000144:	1a0019a0 	.word	0x1a0019a0
1a000148:	2000c000 	.word	0x2000c000
1a00014c:	00000000 	.word	0x00000000

1a000150 <__bss_section_table>:
1a000150:	10000004 	.word	0x10000004
1a000154:	000000dc 	.word	0x000000dc
1a000158:	10080000 	.word	0x10080000
1a00015c:	00000000 	.word	0x00000000
1a000160:	20000000 	.word	0x20000000
1a000164:	00000000 	.word	0x00000000
1a000168:	20008000 	.word	0x20008000
1a00016c:	00000000 	.word	0x00000000
1a000170:	2000c000 	.word	0x2000c000
1a000174:	00000000 	.word	0x00000000

1a000178 <data_init>:
// are written as separate functions rather than being inlined within the
// ResetISR() function in order to cope with MCUs with multiple banks of
// memory.
//*****************************************************************************
__attribute__((section(".after_vectors"))) void data_init(unsigned int romstart, unsigned int start,
                                                          unsigned int len) {
1a000178:	b480      	push	{r7}
1a00017a:	b089      	sub	sp, #36	@ 0x24
1a00017c:	af00      	add	r7, sp, #0
1a00017e:	60f8      	str	r0, [r7, #12]
1a000180:	60b9      	str	r1, [r7, #8]
1a000182:	607a      	str	r2, [r7, #4]
    unsigned int * pulDest = (unsigned int *)start;
1a000184:	68bb      	ldr	r3, [r7, #8]
1a000186:	61fb      	str	r3, [r7, #28]
    unsigned int * pulSrc = (unsigned int *)romstart;
1a000188:	68fb      	ldr	r3, [r7, #12]
1a00018a:	61bb      	str	r3, [r7, #24]
    unsigned int loop;
    for (loop = 0; loop < len; loop = loop + 4)
1a00018c:	2300      	movs	r3, #0
1a00018e:	617b      	str	r3, [r7, #20]
1a000190:	e00a      	b.n	1a0001a8 <data_init+0x30>
        *pulDest++ = *pulSrc++;
1a000192:	69ba      	ldr	r2, [r7, #24]
1a000194:	1d13      	adds	r3, r2, #4
1a000196:	61bb      	str	r3, [r7, #24]
1a000198:	69fb      	ldr	r3, [r7, #28]
1a00019a:	1d19      	adds	r1, r3, #4
1a00019c:	61f9      	str	r1, [r7, #28]
1a00019e:	6812      	ldr	r2, [r2, #0]
1a0001a0:	601a      	str	r2, [r3, #0]
    for (loop = 0; loop < len; loop = loop + 4)
1a0001a2:	697b      	ldr	r3, [r7, #20]
1a0001a4:	3304      	adds	r3, #4
1a0001a6:	617b      	str	r3, [r7, #20]
1a0001a8:	697a      	ldr	r2, [r7, #20]
1a0001aa:	687b      	ldr	r3, [r7, #4]
1a0001ac:	429a      	cmp	r2, r3
1a0001ae:	d3f0      	bcc.n	1a000192 <data_init+0x1a>
}
1a0001b0:	bf00      	nop
1a0001b2:	bf00      	nop
1a0001b4:	3724      	adds	r7, #36	@ 0x24
1a0001b6:	46bd      	mov	sp, r7
1a0001b8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0001bc:	4770      	bx	lr

1a0001be <bss_init>:

__attribute__((section(".after_vectors"))) void bss_init(unsigned int start, unsigned int len) {
1a0001be:	b480      	push	{r7}
1a0001c0:	b085      	sub	sp, #20
1a0001c2:	af00      	add	r7, sp, #0
1a0001c4:	6078      	str	r0, [r7, #4]
1a0001c6:	6039      	str	r1, [r7, #0]
    unsigned int * pulDest = (unsigned int *)start;
1a0001c8:	687b      	ldr	r3, [r7, #4]
1a0001ca:	60fb      	str	r3, [r7, #12]
    unsigned int loop;
    for (loop = 0; loop < len; loop = loop + 4)
1a0001cc:	2300      	movs	r3, #0
1a0001ce:	60bb      	str	r3, [r7, #8]
1a0001d0:	e007      	b.n	1a0001e2 <bss_init+0x24>
        *pulDest++ = 0;
1a0001d2:	68fb      	ldr	r3, [r7, #12]
1a0001d4:	1d1a      	adds	r2, r3, #4
1a0001d6:	60fa      	str	r2, [r7, #12]
1a0001d8:	2200      	movs	r2, #0
1a0001da:	601a      	str	r2, [r3, #0]
    for (loop = 0; loop < len; loop = loop + 4)
1a0001dc:	68bb      	ldr	r3, [r7, #8]
1a0001de:	3304      	adds	r3, #4
1a0001e0:	60bb      	str	r3, [r7, #8]
1a0001e2:	68ba      	ldr	r2, [r7, #8]
1a0001e4:	683b      	ldr	r3, [r7, #0]
1a0001e6:	429a      	cmp	r2, r3
1a0001e8:	d3f3      	bcc.n	1a0001d2 <bss_init+0x14>
}
1a0001ea:	bf00      	nop
1a0001ec:	bf00      	nop
1a0001ee:	3714      	adds	r7, #20
1a0001f0:	46bd      	mov	sp, r7
1a0001f2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0001f6:	4770      	bx	lr

1a0001f8 <NMI_Handler>:

//*****************************************************************************
// Default exception handlers. Override the ones here by defining your own
// handler routines in your application code.
//*****************************************************************************
__attribute__((section(".after_vectors"))) void NMI_Handler(void) {
1a0001f8:	b480      	push	{r7}
1a0001fa:	af00      	add	r7, sp, #0
    while (1) {
1a0001fc:	bf00      	nop
1a0001fe:	e7fd      	b.n	1a0001fc <NMI_Handler+0x4>

1a000200 <HardFault_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void HardFault_Handler(void) {
1a000200:	b480      	push	{r7}
1a000202:	af00      	add	r7, sp, #0
    while (1) {
1a000204:	bf00      	nop
1a000206:	e7fd      	b.n	1a000204 <HardFault_Handler+0x4>

1a000208 <MemManage_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void MemManage_Handler(void) {
1a000208:	b480      	push	{r7}
1a00020a:	af00      	add	r7, sp, #0
    while (1) {
1a00020c:	bf00      	nop
1a00020e:	e7fd      	b.n	1a00020c <MemManage_Handler+0x4>

1a000210 <BusFault_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void BusFault_Handler(void) {
1a000210:	b480      	push	{r7}
1a000212:	af00      	add	r7, sp, #0
    while (1) {
1a000214:	bf00      	nop
1a000216:	e7fd      	b.n	1a000214 <BusFault_Handler+0x4>

1a000218 <UsageFault_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void UsageFault_Handler(void) {
1a000218:	b480      	push	{r7}
1a00021a:	af00      	add	r7, sp, #0
    while (1) {
1a00021c:	bf00      	nop
1a00021e:	e7fd      	b.n	1a00021c <UsageFault_Handler+0x4>

1a000220 <SVC_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void SVC_Handler(void) {
1a000220:	b480      	push	{r7}
1a000222:	af00      	add	r7, sp, #0
    while (1) {
1a000224:	bf00      	nop
1a000226:	e7fd      	b.n	1a000224 <SVC_Handler+0x4>

1a000228 <DebugMon_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void DebugMon_Handler(void) {
1a000228:	b480      	push	{r7}
1a00022a:	af00      	add	r7, sp, #0
    while (1) {
1a00022c:	bf00      	nop
1a00022e:	e7fd      	b.n	1a00022c <DebugMon_Handler+0x4>

1a000230 <PendSV_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void PendSV_Handler(void) {
1a000230:	b480      	push	{r7}
1a000232:	af00      	add	r7, sp, #0
    while (1) {
1a000234:	bf00      	nop
1a000236:	e7fd      	b.n	1a000234 <PendSV_Handler+0x4>

1a000238 <SysTick_Handler>:
    }
}
__attribute__((section(".after_vectors"))) void SysTick_Handler(void) {
1a000238:	b480      	push	{r7}
1a00023a:	af00      	add	r7, sp, #0
    while (1) {
1a00023c:	bf00      	nop
1a00023e:	e7fd      	b.n	1a00023c <SysTick_Handler+0x4>

1a000240 <ADC0_IRQHandler>:
//
// Processor ends up here if an unexpected interrupt occurs or a specific
// handler is not present in the application code.
//
//*****************************************************************************
__attribute__((section(".after_vectors"))) void IntDefaultHandler(void) {
1a000240:	b480      	push	{r7}
1a000242:	af00      	add	r7, sp, #0
    while (1) {
1a000244:	bf00      	nop
1a000246:	e7fd      	b.n	1a000244 <ADC0_IRQHandler+0x4>

Disassembly of section .init:

1a000248 <_init>:
1a000248:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00024a:	bf00      	nop

Disassembly of section .fini:

1a00024c <_fini>:
1a00024c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00024e:	bf00      	nop

Disassembly of section .text:

1a000250 <FlashLed>:

/* === Private variable definitions ============================================================ */

/* === Private function implementation ========================================================= */

static void FlashLed(board_t placa) {
1a000250:	b580      	push	{r7, lr}
1a000252:	b082      	sub	sp, #8
1a000254:	af00      	add	r7, sp, #0
1a000256:	6078      	str	r0, [r7, #4]
    static int divisor = 0;
    static rgb_color_t state = LED_BLUE_OFF;

    divisor++;
1a000258:	4b26      	ldr	r3, [pc, #152]	@ (1a0002f4 <FlashLed+0xa4>)
1a00025a:	681b      	ldr	r3, [r3, #0]
1a00025c:	3301      	adds	r3, #1
1a00025e:	4a25      	ldr	r2, [pc, #148]	@ (1a0002f4 <FlashLed+0xa4>)
1a000260:	6013      	str	r3, [r2, #0]
    if (divisor == 5) {
1a000262:	4b24      	ldr	r3, [pc, #144]	@ (1a0002f4 <FlashLed+0xa4>)
1a000264:	681b      	ldr	r3, [r3, #0]
1a000266:	2b05      	cmp	r3, #5
1a000268:	d13f      	bne.n	1a0002ea <FlashLed+0x9a>
        divisor = 0;
1a00026a:	4b22      	ldr	r3, [pc, #136]	@ (1a0002f4 <FlashLed+0xa4>)
1a00026c:	2200      	movs	r2, #0
1a00026e:	601a      	str	r2, [r3, #0]
        state = (state + 1) % (LED_BLUE_OFF + 1);
1a000270:	4b21      	ldr	r3, [pc, #132]	@ (1a0002f8 <FlashLed+0xa8>)
1a000272:	781b      	ldrb	r3, [r3, #0]
1a000274:	1c5a      	adds	r2, r3, #1
1a000276:	4b21      	ldr	r3, [pc, #132]	@ (1a0002fc <FlashLed+0xac>)
1a000278:	fb83 3102 	smull	r3, r1, r3, r2
1a00027c:	17d3      	asrs	r3, r2, #31
1a00027e:	1ac9      	subs	r1, r1, r3
1a000280:	460b      	mov	r3, r1
1a000282:	005b      	lsls	r3, r3, #1
1a000284:	440b      	add	r3, r1
1a000286:	005b      	lsls	r3, r3, #1
1a000288:	1ad1      	subs	r1, r2, r3
1a00028a:	b2ca      	uxtb	r2, r1
1a00028c:	4b1a      	ldr	r3, [pc, #104]	@ (1a0002f8 <FlashLed+0xa8>)
1a00028e:	701a      	strb	r2, [r3, #0]

        switch (state) {
1a000290:	4b19      	ldr	r3, [pc, #100]	@ (1a0002f8 <FlashLed+0xa8>)
1a000292:	781b      	ldrb	r3, [r3, #0]
1a000294:	2b04      	cmp	r3, #4
1a000296:	d012      	beq.n	1a0002be <FlashLed+0x6e>
1a000298:	2b04      	cmp	r3, #4
1a00029a:	dc16      	bgt.n	1a0002ca <FlashLed+0x7a>
1a00029c:	2b00      	cmp	r3, #0
1a00029e:	d002      	beq.n	1a0002a6 <FlashLed+0x56>
1a0002a0:	2b02      	cmp	r3, #2
1a0002a2:	d006      	beq.n	1a0002b2 <FlashLed+0x62>
1a0002a4:	e011      	b.n	1a0002ca <FlashLed+0x7a>
        case LED_RED_ON:
            DigitalOutputActivate(placa->led_rojo_rgb);
1a0002a6:	687b      	ldr	r3, [r7, #4]
1a0002a8:	68db      	ldr	r3, [r3, #12]
1a0002aa:	4618      	mov	r0, r3
1a0002ac:	f000 fac8 	bl	1a000840 <DigitalOutputActivate>
            break;
1a0002b0:	e01b      	b.n	1a0002ea <FlashLed+0x9a>
        case LED_GREEN_ON:
            DigitalOutputActivate(placa->led_verde_rgb);
1a0002b2:	687b      	ldr	r3, [r7, #4]
1a0002b4:	691b      	ldr	r3, [r3, #16]
1a0002b6:	4618      	mov	r0, r3
1a0002b8:	f000 fac2 	bl	1a000840 <DigitalOutputActivate>
            break;
1a0002bc:	e015      	b.n	1a0002ea <FlashLed+0x9a>
        case LED_BLUE_ON:
            DigitalOutputActivate(placa->led_azul_rgb);
1a0002be:	687b      	ldr	r3, [r7, #4]
1a0002c0:	695b      	ldr	r3, [r3, #20]
1a0002c2:	4618      	mov	r0, r3
1a0002c4:	f000 fabc 	bl	1a000840 <DigitalOutputActivate>
            break;
1a0002c8:	e00f      	b.n	1a0002ea <FlashLed+0x9a>
        default:
            DigitalOutputDeactivate(placa->led_rojo_rgb);
1a0002ca:	687b      	ldr	r3, [r7, #4]
1a0002cc:	68db      	ldr	r3, [r3, #12]
1a0002ce:	4618      	mov	r0, r3
1a0002d0:	f000 fad8 	bl	1a000884 <DigitalOutputDeactivate>
            DigitalOutputDeactivate(placa->led_verde_rgb);
1a0002d4:	687b      	ldr	r3, [r7, #4]
1a0002d6:	691b      	ldr	r3, [r3, #16]
1a0002d8:	4618      	mov	r0, r3
1a0002da:	f000 fad3 	bl	1a000884 <DigitalOutputDeactivate>
            DigitalOutputDeactivate(placa->led_azul_rgb);
1a0002de:	687b      	ldr	r3, [r7, #4]
1a0002e0:	695b      	ldr	r3, [r3, #20]
1a0002e2:	4618      	mov	r0, r3
1a0002e4:	f000 face 	bl	1a000884 <DigitalOutputDeactivate>
            break;
1a0002e8:	bf00      	nop
        }
    }
}
1a0002ea:	bf00      	nop
1a0002ec:	3708      	adds	r7, #8
1a0002ee:	46bd      	mov	sp, r7
1a0002f0:	bd80      	pop	{r7, pc}
1a0002f2:	bf00      	nop
1a0002f4:	10000004 	.word	0x10000004
1a0002f8:	10000000 	.word	0x10000000
1a0002fc:	2aaaaaab 	.word	0x2aaaaaab

1a000300 <SwitchLed>:

static void SwitchLed(board_t placa) {
1a000300:	b580      	push	{r7, lr}
1a000302:	b082      	sub	sp, #8
1a000304:	af00      	add	r7, sp, #0
1a000306:	6078      	str	r0, [r7, #4]
    if (DigitalInputGetState(placa->tecla_1)) {
1a000308:	687b      	ldr	r3, [r7, #4]
1a00030a:	699b      	ldr	r3, [r3, #24]
1a00030c:	4618      	mov	r0, r3
1a00030e:	f000 fb25 	bl	1a00095c <DigitalInputGetState>
1a000312:	4603      	mov	r3, r0
1a000314:	2b00      	cmp	r3, #0
1a000316:	d004      	beq.n	1a000322 <SwitchLed+0x22>
        DigitalOutputActivate(placa->led_rojo);
1a000318:	687b      	ldr	r3, [r7, #4]
1a00031a:	685b      	ldr	r3, [r3, #4]
1a00031c:	4618      	mov	r0, r3
1a00031e:	f000 fa8f 	bl	1a000840 <DigitalOutputActivate>
    }
    if (DigitalInputGetState(placa->tecla_2)) {
1a000322:	687b      	ldr	r3, [r7, #4]
1a000324:	69db      	ldr	r3, [r3, #28]
1a000326:	4618      	mov	r0, r3
1a000328:	f000 fb18 	bl	1a00095c <DigitalInputGetState>
1a00032c:	4603      	mov	r3, r0
1a00032e:	2b00      	cmp	r3, #0
1a000330:	d004      	beq.n	1a00033c <SwitchLed+0x3c>
        DigitalOutputDeactivate(placa->led_rojo);
1a000332:	687b      	ldr	r3, [r7, #4]
1a000334:	685b      	ldr	r3, [r3, #4]
1a000336:	4618      	mov	r0, r3
1a000338:	f000 faa4 	bl	1a000884 <DigitalOutputDeactivate>
    }
}
1a00033c:	bf00      	nop
1a00033e:	3708      	adds	r7, #8
1a000340:	46bd      	mov	sp, r7
1a000342:	bd80      	pop	{r7, pc}

1a000344 <ToggleLed>:

static void ToggleLed(board_t placa) {
1a000344:	b580      	push	{r7, lr}
1a000346:	b082      	sub	sp, #8
1a000348:	af00      	add	r7, sp, #0
1a00034a:	6078      	str	r0, [r7, #4]
    if (DigitalInputHasActivated(placa->tecla_3)) {
1a00034c:	687b      	ldr	r3, [r7, #4]
1a00034e:	6a1b      	ldr	r3, [r3, #32]
1a000350:	4618      	mov	r0, r3
1a000352:	f000 fb5e 	bl	1a000a12 <DigitalInputHasActivated>
1a000356:	4603      	mov	r3, r0
1a000358:	2b00      	cmp	r3, #0
1a00035a:	d004      	beq.n	1a000366 <ToggleLed+0x22>
        DigitalOutputToggle(placa->led_amarillo);
1a00035c:	687b      	ldr	r3, [r7, #4]
1a00035e:	689b      	ldr	r3, [r3, #8]
1a000360:	4618      	mov	r0, r3
1a000362:	f000 faa7 	bl	1a0008b4 <DigitalOutputToggle>
    }
}
1a000366:	bf00      	nop
1a000368:	3708      	adds	r7, #8
1a00036a:	46bd      	mov	sp, r7
1a00036c:	bd80      	pop	{r7, pc}

1a00036e <TestLed>:

static void TestLed(board_t placa) {
1a00036e:	b580      	push	{r7, lr}
1a000370:	b082      	sub	sp, #8
1a000372:	af00      	add	r7, sp, #0
1a000374:	6078      	str	r0, [r7, #4]
    if (DigitalInputGetState(placa->tecla_4)) {
1a000376:	687b      	ldr	r3, [r7, #4]
1a000378:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
1a00037a:	4618      	mov	r0, r3
1a00037c:	f000 faee 	bl	1a00095c <DigitalInputGetState>
1a000380:	4603      	mov	r3, r0
1a000382:	2b00      	cmp	r3, #0
1a000384:	d005      	beq.n	1a000392 <TestLed+0x24>
        DigitalOutputActivate(placa->led_verde);
1a000386:	687b      	ldr	r3, [r7, #4]
1a000388:	681b      	ldr	r3, [r3, #0]
1a00038a:	4618      	mov	r0, r3
1a00038c:	f000 fa58 	bl	1a000840 <DigitalOutputActivate>
    } else {
        DigitalOutputDeactivate(placa->led_verde);
    }
}
1a000390:	e004      	b.n	1a00039c <TestLed+0x2e>
        DigitalOutputDeactivate(placa->led_verde);
1a000392:	687b      	ldr	r3, [r7, #4]
1a000394:	681b      	ldr	r3, [r3, #0]
1a000396:	4618      	mov	r0, r3
1a000398:	f000 fa74 	bl	1a000884 <DigitalOutputDeactivate>
}
1a00039c:	bf00      	nop
1a00039e:	3708      	adds	r7, #8
1a0003a0:	46bd      	mov	sp, r7
1a0003a2:	bd80      	pop	{r7, pc}

1a0003a4 <Delay>:

static void Delay(void) {
1a0003a4:	b480      	push	{r7}
1a0003a6:	b083      	sub	sp, #12
1a0003a8:	af00      	add	r7, sp, #0
    for (int index = 0; index < 100; index++) {
1a0003aa:	2300      	movs	r3, #0
1a0003ac:	607b      	str	r3, [r7, #4]
1a0003ae:	e00e      	b.n	1a0003ce <Delay+0x2a>
        for (int delay = 0; delay < 25000; delay++) {
1a0003b0:	2300      	movs	r3, #0
1a0003b2:	603b      	str	r3, [r7, #0]
1a0003b4:	e003      	b.n	1a0003be <Delay+0x1a>
            __asm("NOP");
1a0003b6:	bf00      	nop
        for (int delay = 0; delay < 25000; delay++) {
1a0003b8:	683b      	ldr	r3, [r7, #0]
1a0003ba:	3301      	adds	r3, #1
1a0003bc:	603b      	str	r3, [r7, #0]
1a0003be:	683b      	ldr	r3, [r7, #0]
1a0003c0:	f246 12a7 	movw	r2, #24999	@ 0x61a7
1a0003c4:	4293      	cmp	r3, r2
1a0003c6:	ddf6      	ble.n	1a0003b6 <Delay+0x12>
    for (int index = 0; index < 100; index++) {
1a0003c8:	687b      	ldr	r3, [r7, #4]
1a0003ca:	3301      	adds	r3, #1
1a0003cc:	607b      	str	r3, [r7, #4]
1a0003ce:	687b      	ldr	r3, [r7, #4]
1a0003d0:	2b63      	cmp	r3, #99	@ 0x63
1a0003d2:	dded      	ble.n	1a0003b0 <Delay+0xc>
        }
    }
}
1a0003d4:	bf00      	nop
1a0003d6:	bf00      	nop
1a0003d8:	370c      	adds	r7, #12
1a0003da:	46bd      	mov	sp, r7
1a0003dc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0003e0:	4770      	bx	lr

1a0003e2 <main>:

/* === Public function implementation ========================================================== */

int main(void) {
1a0003e2:	b580      	push	{r7, lr}
1a0003e4:	b082      	sub	sp, #8
1a0003e6:	af00      	add	r7, sp, #0

    board_t placa = BoardCreate();
1a0003e8:	f000 f8be 	bl	1a000568 <BoardCreate>
1a0003ec:	6078      	str	r0, [r7, #4]

    while (true) {
        FlashLed(placa);
1a0003ee:	6878      	ldr	r0, [r7, #4]
1a0003f0:	f7ff ff2e 	bl	1a000250 <FlashLed>
        SwitchLed(placa);
1a0003f4:	6878      	ldr	r0, [r7, #4]
1a0003f6:	f7ff ff83 	bl	1a000300 <SwitchLed>
        ToggleLed(placa);
1a0003fa:	6878      	ldr	r0, [r7, #4]
1a0003fc:	f7ff ffa2 	bl	1a000344 <ToggleLed>
        TestLed(placa);
1a000400:	6878      	ldr	r0, [r7, #4]
1a000402:	f7ff ffb4 	bl	1a00036e <TestLed>

        Delay();
1a000406:	f7ff ffcd 	bl	1a0003a4 <Delay>
        FlashLed(placa);
1a00040a:	bf00      	nop
1a00040c:	e7ef      	b.n	1a0003ee <main+0xc>
	...

1a000410 <Chip_SCU_PinMuxSet>:
 * @return	Nothing
 * @note	Do not use for clock pins (SFSCLK0 .. SFSCLK4). Use
 * Chip_SCU_ClockPinMux() function for SFSCLKx clock pins.
 */
STATIC INLINE void Chip_SCU_PinMuxSet(uint8_t port, uint8_t pin, uint16_t modefunc)
{
1a000410:	b480      	push	{r7}
1a000412:	b083      	sub	sp, #12
1a000414:	af00      	add	r7, sp, #0
1a000416:	4603      	mov	r3, r0
1a000418:	71fb      	strb	r3, [r7, #7]
1a00041a:	460b      	mov	r3, r1
1a00041c:	71bb      	strb	r3, [r7, #6]
1a00041e:	4613      	mov	r3, r2
1a000420:	80bb      	strh	r3, [r7, #4]
	LPC_SCU->SFSP[port][pin] = modefunc;
1a000422:	4807      	ldr	r0, [pc, #28]	@ (1a000440 <Chip_SCU_PinMuxSet+0x30>)
1a000424:	79f9      	ldrb	r1, [r7, #7]
1a000426:	79bb      	ldrb	r3, [r7, #6]
1a000428:	88ba      	ldrh	r2, [r7, #4]
1a00042a:	0149      	lsls	r1, r1, #5
1a00042c:	440b      	add	r3, r1
1a00042e:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
}
1a000432:	bf00      	nop
1a000434:	370c      	adds	r7, #12
1a000436:	46bd      	mov	sp, r7
1a000438:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00043c:	4770      	bx	lr
1a00043e:	bf00      	nop
1a000440:	40086000 	.word	0x40086000

1a000444 <ConfigureLeds>:

/* === Public variable definition  ============================================================= */

/* === Private function definitions ============================================================ */

static void ConfigureLeds(struct board_s * self) {
1a000444:	b580      	push	{r7, lr}
1a000446:	b082      	sub	sp, #8
1a000448:	af00      	add	r7, sp, #0
1a00044a:	6078      	str	r0, [r7, #4]
    Chip_SCU_PinMuxSet(LED_R_PORT, LED_R_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_R_FUNC);
1a00044c:	2254      	movs	r2, #84	@ 0x54
1a00044e:	2100      	movs	r1, #0
1a000450:	2002      	movs	r0, #2
1a000452:	f7ff ffdd 	bl	1a000410 <Chip_SCU_PinMuxSet>
    self->led_rojo_rgb = DigitalOutputCreate(LED_R_GPIO, LED_R_BIT, false);
1a000456:	2200      	movs	r2, #0
1a000458:	2100      	movs	r1, #0
1a00045a:	2005      	movs	r0, #5
1a00045c:	f000 f9b6 	bl	1a0007cc <DigitalOutputCreate>
1a000460:	4602      	mov	r2, r0
1a000462:	687b      	ldr	r3, [r7, #4]
1a000464:	60da      	str	r2, [r3, #12]

    Chip_SCU_PinMuxSet(LED_G_PORT, LED_G_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_G_FUNC);
1a000466:	2254      	movs	r2, #84	@ 0x54
1a000468:	2101      	movs	r1, #1
1a00046a:	2002      	movs	r0, #2
1a00046c:	f7ff ffd0 	bl	1a000410 <Chip_SCU_PinMuxSet>
    self->led_verde_rgb = DigitalOutputCreate(LED_G_GPIO, LED_G_BIT, false);
1a000470:	2200      	movs	r2, #0
1a000472:	2101      	movs	r1, #1
1a000474:	2005      	movs	r0, #5
1a000476:	f000 f9a9 	bl	1a0007cc <DigitalOutputCreate>
1a00047a:	4602      	mov	r2, r0
1a00047c:	687b      	ldr	r3, [r7, #4]
1a00047e:	611a      	str	r2, [r3, #16]

    Chip_SCU_PinMuxSet(LED_B_PORT, LED_B_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_B_FUNC);
1a000480:	2254      	movs	r2, #84	@ 0x54
1a000482:	2102      	movs	r1, #2
1a000484:	2002      	movs	r0, #2
1a000486:	f7ff ffc3 	bl	1a000410 <Chip_SCU_PinMuxSet>
    self->led_azul_rgb = DigitalOutputCreate(LED_B_GPIO, LED_B_BIT, false);
1a00048a:	2200      	movs	r2, #0
1a00048c:	2102      	movs	r1, #2
1a00048e:	2005      	movs	r0, #5
1a000490:	f000 f99c 	bl	1a0007cc <DigitalOutputCreate>
1a000494:	4602      	mov	r2, r0
1a000496:	687b      	ldr	r3, [r7, #4]
1a000498:	615a      	str	r2, [r3, #20]

    /******************/
    Chip_SCU_PinMuxSet(LED_1_PORT, LED_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_1_FUNC);
1a00049a:	2250      	movs	r2, #80	@ 0x50
1a00049c:	210a      	movs	r1, #10
1a00049e:	2002      	movs	r0, #2
1a0004a0:	f7ff ffb6 	bl	1a000410 <Chip_SCU_PinMuxSet>
    self->led_rojo = DigitalOutputCreate(LED_1_GPIO, LED_1_BIT, false);
1a0004a4:	2200      	movs	r2, #0
1a0004a6:	210e      	movs	r1, #14
1a0004a8:	2000      	movs	r0, #0
1a0004aa:	f000 f98f 	bl	1a0007cc <DigitalOutputCreate>
1a0004ae:	4602      	mov	r2, r0
1a0004b0:	687b      	ldr	r3, [r7, #4]
1a0004b2:	605a      	str	r2, [r3, #4]

    Chip_SCU_PinMuxSet(LED_2_PORT, LED_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_2_FUNC);
1a0004b4:	2250      	movs	r2, #80	@ 0x50
1a0004b6:	210b      	movs	r1, #11
1a0004b8:	2002      	movs	r0, #2
1a0004ba:	f7ff ffa9 	bl	1a000410 <Chip_SCU_PinMuxSet>
    self->led_amarillo = DigitalOutputCreate(LED_2_GPIO, LED_2_BIT, false);
1a0004be:	2200      	movs	r2, #0
1a0004c0:	210b      	movs	r1, #11
1a0004c2:	2001      	movs	r0, #1
1a0004c4:	f000 f982 	bl	1a0007cc <DigitalOutputCreate>
1a0004c8:	4602      	mov	r2, r0
1a0004ca:	687b      	ldr	r3, [r7, #4]
1a0004cc:	609a      	str	r2, [r3, #8]

    Chip_SCU_PinMuxSet(LED_3_PORT, LED_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_3_FUNC);
1a0004ce:	2250      	movs	r2, #80	@ 0x50
1a0004d0:	210c      	movs	r1, #12
1a0004d2:	2002      	movs	r0, #2
1a0004d4:	f7ff ff9c 	bl	1a000410 <Chip_SCU_PinMuxSet>
    self->led_verde = DigitalOutputCreate(LED_3_GPIO, LED_3_BIT, false);
1a0004d8:	2200      	movs	r2, #0
1a0004da:	210c      	movs	r1, #12
1a0004dc:	2001      	movs	r0, #1
1a0004de:	f000 f975 	bl	1a0007cc <DigitalOutputCreate>
1a0004e2:	4602      	mov	r2, r0
1a0004e4:	687b      	ldr	r3, [r7, #4]
1a0004e6:	601a      	str	r2, [r3, #0]
}
1a0004e8:	bf00      	nop
1a0004ea:	3708      	adds	r7, #8
1a0004ec:	46bd      	mov	sp, r7
1a0004ee:	bd80      	pop	{r7, pc}

1a0004f0 <ConfigureKeys>:

static void ConfigureKeys(struct board_s * self) {
1a0004f0:	b580      	push	{r7, lr}
1a0004f2:	b082      	sub	sp, #8
1a0004f4:	af00      	add	r7, sp, #0
1a0004f6:	6078      	str	r0, [r7, #4]
    Chip_SCU_PinMuxSet(TEC_1_PORT, TEC_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_1_FUNC);
1a0004f8:	2240      	movs	r2, #64	@ 0x40
1a0004fa:	2100      	movs	r1, #0
1a0004fc:	2001      	movs	r0, #1
1a0004fe:	f7ff ff87 	bl	1a000410 <Chip_SCU_PinMuxSet>
    self->tecla_1 = DigitalInputCreate(TEC_1_GPIO, TEC_1_BIT, true);
1a000502:	2201      	movs	r2, #1
1a000504:	2104      	movs	r1, #4
1a000506:	2000      	movs	r0, #0
1a000508:	f000 f9ea 	bl	1a0008e0 <DigitalInputCreate>
1a00050c:	4602      	mov	r2, r0
1a00050e:	687b      	ldr	r3, [r7, #4]
1a000510:	619a      	str	r2, [r3, #24]

    Chip_SCU_PinMuxSet(TEC_2_PORT, TEC_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_2_FUNC);
1a000512:	2240      	movs	r2, #64	@ 0x40
1a000514:	2101      	movs	r1, #1
1a000516:	2001      	movs	r0, #1
1a000518:	f7ff ff7a 	bl	1a000410 <Chip_SCU_PinMuxSet>
    self->tecla_2 = DigitalInputCreate(TEC_2_GPIO, TEC_2_BIT, true);
1a00051c:	2201      	movs	r2, #1
1a00051e:	2108      	movs	r1, #8
1a000520:	2000      	movs	r0, #0
1a000522:	f000 f9dd 	bl	1a0008e0 <DigitalInputCreate>
1a000526:	4602      	mov	r2, r0
1a000528:	687b      	ldr	r3, [r7, #4]
1a00052a:	61da      	str	r2, [r3, #28]

    Chip_SCU_PinMuxSet(TEC_3_PORT, TEC_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_3_FUNC);
1a00052c:	2240      	movs	r2, #64	@ 0x40
1a00052e:	2102      	movs	r1, #2
1a000530:	2001      	movs	r0, #1
1a000532:	f7ff ff6d 	bl	1a000410 <Chip_SCU_PinMuxSet>
    self->tecla_3 = DigitalInputCreate(TEC_3_GPIO, TEC_3_BIT, true);
1a000536:	2201      	movs	r2, #1
1a000538:	2109      	movs	r1, #9
1a00053a:	2000      	movs	r0, #0
1a00053c:	f000 f9d0 	bl	1a0008e0 <DigitalInputCreate>
1a000540:	4602      	mov	r2, r0
1a000542:	687b      	ldr	r3, [r7, #4]
1a000544:	621a      	str	r2, [r3, #32]

    Chip_SCU_PinMuxSet(TEC_4_PORT, TEC_4_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_4_FUNC);
1a000546:	2240      	movs	r2, #64	@ 0x40
1a000548:	2106      	movs	r1, #6
1a00054a:	2001      	movs	r0, #1
1a00054c:	f7ff ff60 	bl	1a000410 <Chip_SCU_PinMuxSet>
    self->tecla_4 = DigitalInputCreate(TEC_4_GPIO, TEC_4_BIT, true);
1a000550:	2201      	movs	r2, #1
1a000552:	2109      	movs	r1, #9
1a000554:	2001      	movs	r0, #1
1a000556:	f000 f9c3 	bl	1a0008e0 <DigitalInputCreate>
1a00055a:	4602      	mov	r2, r0
1a00055c:	687b      	ldr	r3, [r7, #4]
1a00055e:	625a      	str	r2, [r3, #36]	@ 0x24
}
1a000560:	bf00      	nop
1a000562:	3708      	adds	r7, #8
1a000564:	46bd      	mov	sp, r7
1a000566:	bd80      	pop	{r7, pc}

1a000568 <BoardCreate>:

/* === Public function implementation ========================================================== */

board_t BoardCreate() {
1a000568:	b580      	push	{r7, lr}
1a00056a:	af00      	add	r7, sp, #0
    static struct board_s self;
    BoardSetup();
1a00056c:	f000 fb5c 	bl	1a000c28 <BoardSetup>
    ConfigureLeds(&self);
1a000570:	4804      	ldr	r0, [pc, #16]	@ (1a000584 <BoardCreate+0x1c>)
1a000572:	f7ff ff67 	bl	1a000444 <ConfigureLeds>
    ConfigureKeys(&self);
1a000576:	4803      	ldr	r0, [pc, #12]	@ (1a000584 <BoardCreate+0x1c>)
1a000578:	f7ff ffba 	bl	1a0004f0 <ConfigureKeys>
    return &self;
1a00057c:	4b01      	ldr	r3, [pc, #4]	@ (1a000584 <BoardCreate+0x1c>)
}
1a00057e:	4618      	mov	r0, r3
1a000580:	bd80      	pop	{r7, pc}
1a000582:	bf00      	nop
1a000584:	10000008 	.word	0x10000008

1a000588 <ResetISR>:
void ResetISR(void) {
1a000588:	b580      	push	{r7, lr}
1a00058a:	b088      	sub	sp, #32
1a00058c:	af00      	add	r7, sp, #0
    __asm volatile("cpsid i");
1a00058e:	b672      	cpsid	i
    unsigned int * RESET_CONTROL = (unsigned int *)0x40053100;
1a000590:	4b2c      	ldr	r3, [pc, #176]	@ (1a000644 <ResetISR+0xbc>)
1a000592:	617b      	str	r3, [r7, #20]
    *(RESET_CONTROL + 0) = 0x10DF1000;
1a000594:	697b      	ldr	r3, [r7, #20]
1a000596:	4a2c      	ldr	r2, [pc, #176]	@ (1a000648 <ResetISR+0xc0>)
1a000598:	601a      	str	r2, [r3, #0]
    *(RESET_CONTROL + 1) = 0x01DFF7FF;
1a00059a:	697b      	ldr	r3, [r7, #20]
1a00059c:	3304      	adds	r3, #4
1a00059e:	4a2b      	ldr	r2, [pc, #172]	@ (1a00064c <ResetISR+0xc4>)
1a0005a0:	601a      	str	r2, [r3, #0]
    volatile unsigned int * NVIC_ICPR = (unsigned int *)0xE000E280;
1a0005a2:	4b2b      	ldr	r3, [pc, #172]	@ (1a000650 <ResetISR+0xc8>)
1a0005a4:	613b      	str	r3, [r7, #16]
    for (irqpendloop = 0; irqpendloop < 8; irqpendloop++) {
1a0005a6:	2300      	movs	r3, #0
1a0005a8:	61fb      	str	r3, [r7, #28]
1a0005aa:	e009      	b.n	1a0005c0 <ResetISR+0x38>
        *(NVIC_ICPR + irqpendloop) = 0xFFFFFFFF;
1a0005ac:	69fb      	ldr	r3, [r7, #28]
1a0005ae:	009b      	lsls	r3, r3, #2
1a0005b0:	693a      	ldr	r2, [r7, #16]
1a0005b2:	4413      	add	r3, r2
1a0005b4:	f04f 32ff 	mov.w	r2, #4294967295
1a0005b8:	601a      	str	r2, [r3, #0]
    for (irqpendloop = 0; irqpendloop < 8; irqpendloop++) {
1a0005ba:	69fb      	ldr	r3, [r7, #28]
1a0005bc:	3301      	adds	r3, #1
1a0005be:	61fb      	str	r3, [r7, #28]
1a0005c0:	69fb      	ldr	r3, [r7, #28]
1a0005c2:	2b07      	cmp	r3, #7
1a0005c4:	d9f2      	bls.n	1a0005ac <ResetISR+0x24>
    __asm volatile("cpsie i");
1a0005c6:	b662      	cpsie	i
    SectionTableAddr = &__data_section_table;
1a0005c8:	4b22      	ldr	r3, [pc, #136]	@ (1a000654 <ResetISR+0xcc>)
1a0005ca:	61bb      	str	r3, [r7, #24]
    while (SectionTableAddr < &__data_section_table_end) {
1a0005cc:	e013      	b.n	1a0005f6 <ResetISR+0x6e>
        LoadAddr = *SectionTableAddr++;
1a0005ce:	69bb      	ldr	r3, [r7, #24]
1a0005d0:	1d1a      	adds	r2, r3, #4
1a0005d2:	61ba      	str	r2, [r7, #24]
1a0005d4:	681b      	ldr	r3, [r3, #0]
1a0005d6:	603b      	str	r3, [r7, #0]
        ExeAddr = *SectionTableAddr++;
1a0005d8:	69bb      	ldr	r3, [r7, #24]
1a0005da:	1d1a      	adds	r2, r3, #4
1a0005dc:	61ba      	str	r2, [r7, #24]
1a0005de:	681b      	ldr	r3, [r3, #0]
1a0005e0:	60bb      	str	r3, [r7, #8]
        SectionLen = *SectionTableAddr++;
1a0005e2:	69bb      	ldr	r3, [r7, #24]
1a0005e4:	1d1a      	adds	r2, r3, #4
1a0005e6:	61ba      	str	r2, [r7, #24]
1a0005e8:	681b      	ldr	r3, [r3, #0]
1a0005ea:	607b      	str	r3, [r7, #4]
        data_init(LoadAddr, ExeAddr, SectionLen);
1a0005ec:	687a      	ldr	r2, [r7, #4]
1a0005ee:	68b9      	ldr	r1, [r7, #8]
1a0005f0:	6838      	ldr	r0, [r7, #0]
1a0005f2:	f7ff fdc1 	bl	1a000178 <data_init>
    while (SectionTableAddr < &__data_section_table_end) {
1a0005f6:	69bb      	ldr	r3, [r7, #24]
1a0005f8:	4a17      	ldr	r2, [pc, #92]	@ (1a000658 <ResetISR+0xd0>)
1a0005fa:	4293      	cmp	r3, r2
1a0005fc:	d3e7      	bcc.n	1a0005ce <ResetISR+0x46>
    while (SectionTableAddr < &__bss_section_table_end) {
1a0005fe:	e00d      	b.n	1a00061c <ResetISR+0x94>
        ExeAddr = *SectionTableAddr++;
1a000600:	69bb      	ldr	r3, [r7, #24]
1a000602:	1d1a      	adds	r2, r3, #4
1a000604:	61ba      	str	r2, [r7, #24]
1a000606:	681b      	ldr	r3, [r3, #0]
1a000608:	60bb      	str	r3, [r7, #8]
        SectionLen = *SectionTableAddr++;
1a00060a:	69bb      	ldr	r3, [r7, #24]
1a00060c:	1d1a      	adds	r2, r3, #4
1a00060e:	61ba      	str	r2, [r7, #24]
1a000610:	681b      	ldr	r3, [r3, #0]
1a000612:	607b      	str	r3, [r7, #4]
        bss_init(ExeAddr, SectionLen);
1a000614:	6879      	ldr	r1, [r7, #4]
1a000616:	68b8      	ldr	r0, [r7, #8]
1a000618:	f7ff fdd1 	bl	1a0001be <bss_init>
    while (SectionTableAddr < &__bss_section_table_end) {
1a00061c:	69bb      	ldr	r3, [r7, #24]
1a00061e:	4a0f      	ldr	r2, [pc, #60]	@ (1a00065c <ResetISR+0xd4>)
1a000620:	4293      	cmp	r3, r2
1a000622:	d3ed      	bcc.n	1a000600 <ResetISR+0x78>
    asm("LDR.W R0, =0xE000ED88");
1a000624:	f8df 0040 	ldr.w	r0, [pc, #64]	@ 1a000668 <ResetISR+0xe0>
    asm("LDR R1, [R0]");
1a000628:	6801      	ldr	r1, [r0, #0]
    asm(" ORR R1, R1, #(0xF << 20)");
1a00062a:	f441 0170 	orr.w	r1, r1, #15728640	@ 0xf00000
    asm("STR R1, [R0]");
1a00062e:	6001      	str	r1, [r0, #0]
    unsigned int * pSCB_VTOR = (unsigned int *)0xE000ED08;
1a000630:	4b0b      	ldr	r3, [pc, #44]	@ (1a000660 <ResetISR+0xd8>)
1a000632:	60fb      	str	r3, [r7, #12]
        *pSCB_VTOR = (unsigned int)g_pfnVectors;
1a000634:	4a0b      	ldr	r2, [pc, #44]	@ (1a000664 <ResetISR+0xdc>)
1a000636:	68fb      	ldr	r3, [r7, #12]
1a000638:	601a      	str	r2, [r3, #0]
    main();
1a00063a:	f7ff fed2 	bl	1a0003e2 <main>
    while (1) {
1a00063e:	bf00      	nop
1a000640:	e7fd      	b.n	1a00063e <ResetISR+0xb6>
1a000642:	bf00      	nop
1a000644:	40053100 	.word	0x40053100
1a000648:	10df1000 	.word	0x10df1000
1a00064c:	01dff7ff 	.word	0x01dff7ff
1a000650:	e000e280 	.word	0xe000e280
1a000654:	1a000114 	.word	0x1a000114
1a000658:	1a000150 	.word	0x1a000150
1a00065c:	1a000178 	.word	0x1a000178
1a000660:	e000ed08 	.word	0xe000ed08
1a000664:	1a000000 	.word	0x1a000000
1a000668:	e000ed88 	.word	0xe000ed88

1a00066c <Chip_GPIO_SetPinState>:
 * @param	setting	: true for high, false for low
 * @return	Nothing
 * @note	This function replaces Chip_GPIO_WritePortBit()
 */
STATIC INLINE void Chip_GPIO_SetPinState(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin, bool setting)
{
1a00066c:	b480      	push	{r7}
1a00066e:	b083      	sub	sp, #12
1a000670:	af00      	add	r7, sp, #0
1a000672:	6078      	str	r0, [r7, #4]
1a000674:	4608      	mov	r0, r1
1a000676:	4611      	mov	r1, r2
1a000678:	461a      	mov	r2, r3
1a00067a:	4603      	mov	r3, r0
1a00067c:	70fb      	strb	r3, [r7, #3]
1a00067e:	460b      	mov	r3, r1
1a000680:	70bb      	strb	r3, [r7, #2]
1a000682:	4613      	mov	r3, r2
1a000684:	707b      	strb	r3, [r7, #1]
	pGPIO->B[port][pin] = setting;
1a000686:	78fa      	ldrb	r2, [r7, #3]
1a000688:	78bb      	ldrb	r3, [r7, #2]
1a00068a:	7878      	ldrb	r0, [r7, #1]
1a00068c:	6879      	ldr	r1, [r7, #4]
1a00068e:	0152      	lsls	r2, r2, #5
1a000690:	440a      	add	r2, r1
1a000692:	4413      	add	r3, r2
1a000694:	4602      	mov	r2, r0
1a000696:	701a      	strb	r2, [r3, #0]
}
1a000698:	bf00      	nop
1a00069a:	370c      	adds	r7, #12
1a00069c:	46bd      	mov	sp, r7
1a00069e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0006a2:	4770      	bx	lr

1a0006a4 <Chip_GPIO_ReadPortBit>:
 * @param	pin		: GPIO pin to read
 * @return	true of the GPIO is high, false if low
 * @note	It is recommended to use the Chip_GPIO_GetPinState() function instead.
 */
STATIC INLINE bool Chip_GPIO_ReadPortBit(LPC_GPIO_T *pGPIO, uint32_t port, uint8_t pin)
{
1a0006a4:	b480      	push	{r7}
1a0006a6:	b085      	sub	sp, #20
1a0006a8:	af00      	add	r7, sp, #0
1a0006aa:	60f8      	str	r0, [r7, #12]
1a0006ac:	60b9      	str	r1, [r7, #8]
1a0006ae:	4613      	mov	r3, r2
1a0006b0:	71fb      	strb	r3, [r7, #7]
	return (bool) pGPIO->B[port][pin];
1a0006b2:	79fb      	ldrb	r3, [r7, #7]
1a0006b4:	68f9      	ldr	r1, [r7, #12]
1a0006b6:	68ba      	ldr	r2, [r7, #8]
1a0006b8:	0152      	lsls	r2, r2, #5
1a0006ba:	440a      	add	r2, r1
1a0006bc:	4413      	add	r3, r2
1a0006be:	781b      	ldrb	r3, [r3, #0]
1a0006c0:	b2db      	uxtb	r3, r3
1a0006c2:	2b00      	cmp	r3, #0
1a0006c4:	bf14      	ite	ne
1a0006c6:	2301      	movne	r3, #1
1a0006c8:	2300      	moveq	r3, #0
1a0006ca:	b2db      	uxtb	r3, r3
}
1a0006cc:	4618      	mov	r0, r3
1a0006ce:	3714      	adds	r7, #20
1a0006d0:	46bd      	mov	sp, r7
1a0006d2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0006d6:	4770      	bx	lr

1a0006d8 <Chip_GPIO_SetPinDIROutput>:
 * @param	port	: GPIO Port number where @a pin is located
 * @param	pin		: GPIO pin to set direction on as output
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIROutput(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a0006d8:	b480      	push	{r7}
1a0006da:	b083      	sub	sp, #12
1a0006dc:	af00      	add	r7, sp, #0
1a0006de:	6078      	str	r0, [r7, #4]
1a0006e0:	460b      	mov	r3, r1
1a0006e2:	70fb      	strb	r3, [r7, #3]
1a0006e4:	4613      	mov	r3, r2
1a0006e6:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] |= 1UL << pin;
1a0006e8:	78fa      	ldrb	r2, [r7, #3]
1a0006ea:	687b      	ldr	r3, [r7, #4]
1a0006ec:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a0006f0:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0006f4:	78bb      	ldrb	r3, [r7, #2]
1a0006f6:	2201      	movs	r2, #1
1a0006f8:	fa02 f303 	lsl.w	r3, r2, r3
1a0006fc:	78fa      	ldrb	r2, [r7, #3]
1a0006fe:	4319      	orrs	r1, r3
1a000700:	687b      	ldr	r3, [r7, #4]
1a000702:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000706:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a00070a:	bf00      	nop
1a00070c:	370c      	adds	r7, #12
1a00070e:	46bd      	mov	sp, r7
1a000710:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000714:	4770      	bx	lr

1a000716 <Chip_GPIO_SetPinDIRInput>:
 * @param	port	: GPIO Port number where @a pin is located
 * @param	pin		: GPIO pin to set direction on as input
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIRInput(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a000716:	b480      	push	{r7}
1a000718:	b083      	sub	sp, #12
1a00071a:	af00      	add	r7, sp, #0
1a00071c:	6078      	str	r0, [r7, #4]
1a00071e:	460b      	mov	r3, r1
1a000720:	70fb      	strb	r3, [r7, #3]
1a000722:	4613      	mov	r3, r2
1a000724:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] &= ~(1UL << pin);
1a000726:	78fa      	ldrb	r2, [r7, #3]
1a000728:	687b      	ldr	r3, [r7, #4]
1a00072a:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a00072e:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000732:	78bb      	ldrb	r3, [r7, #2]
1a000734:	2201      	movs	r2, #1
1a000736:	fa02 f303 	lsl.w	r3, r2, r3
1a00073a:	43db      	mvns	r3, r3
1a00073c:	78fa      	ldrb	r2, [r7, #3]
1a00073e:	4019      	ands	r1, r3
1a000740:	687b      	ldr	r3, [r7, #4]
1a000742:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000746:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a00074a:	bf00      	nop
1a00074c:	370c      	adds	r7, #12
1a00074e:	46bd      	mov	sp, r7
1a000750:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000754:	4770      	bx	lr

1a000756 <Chip_GPIO_SetPinDIR>:
 * @param	pin		: GPIO pin to set direction for
 * @param	output	: true for output, false for input
 * @return	Nothing
 */
STATIC INLINE void Chip_GPIO_SetPinDIR(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin, bool output)
{
1a000756:	b580      	push	{r7, lr}
1a000758:	b082      	sub	sp, #8
1a00075a:	af00      	add	r7, sp, #0
1a00075c:	6078      	str	r0, [r7, #4]
1a00075e:	4608      	mov	r0, r1
1a000760:	4611      	mov	r1, r2
1a000762:	461a      	mov	r2, r3
1a000764:	4603      	mov	r3, r0
1a000766:	70fb      	strb	r3, [r7, #3]
1a000768:	460b      	mov	r3, r1
1a00076a:	70bb      	strb	r3, [r7, #2]
1a00076c:	4613      	mov	r3, r2
1a00076e:	707b      	strb	r3, [r7, #1]
	if (output) {
1a000770:	787b      	ldrb	r3, [r7, #1]
1a000772:	2b00      	cmp	r3, #0
1a000774:	d006      	beq.n	1a000784 <Chip_GPIO_SetPinDIR+0x2e>
		Chip_GPIO_SetPinDIROutput(pGPIO, port, pin);
1a000776:	78ba      	ldrb	r2, [r7, #2]
1a000778:	78fb      	ldrb	r3, [r7, #3]
1a00077a:	4619      	mov	r1, r3
1a00077c:	6878      	ldr	r0, [r7, #4]
1a00077e:	f7ff ffab 	bl	1a0006d8 <Chip_GPIO_SetPinDIROutput>
	}
	else {
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
	}
}
1a000782:	e005      	b.n	1a000790 <Chip_GPIO_SetPinDIR+0x3a>
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
1a000784:	78ba      	ldrb	r2, [r7, #2]
1a000786:	78fb      	ldrb	r3, [r7, #3]
1a000788:	4619      	mov	r1, r3
1a00078a:	6878      	ldr	r0, [r7, #4]
1a00078c:	f7ff ffc3 	bl	1a000716 <Chip_GPIO_SetPinDIRInput>
}
1a000790:	bf00      	nop
1a000792:	3708      	adds	r7, #8
1a000794:	46bd      	mov	sp, r7
1a000796:	bd80      	pop	{r7, pc}

1a000798 <Chip_GPIO_SetPinToggle>:
 * @return	None
 * @note	Any bit set as a '0' will not have it's state changed. This only
 * applies to ports configured as an output.
 */
STATIC INLINE void Chip_GPIO_SetPinToggle(LPC_GPIO_T *pGPIO, uint8_t port, uint8_t pin)
{
1a000798:	b480      	push	{r7}
1a00079a:	b083      	sub	sp, #12
1a00079c:	af00      	add	r7, sp, #0
1a00079e:	6078      	str	r0, [r7, #4]
1a0007a0:	460b      	mov	r3, r1
1a0007a2:	70fb      	strb	r3, [r7, #3]
1a0007a4:	4613      	mov	r3, r2
1a0007a6:	70bb      	strb	r3, [r7, #2]
	pGPIO->NOT[port] = (1 << pin);
1a0007a8:	78bb      	ldrb	r3, [r7, #2]
1a0007aa:	2201      	movs	r2, #1
1a0007ac:	fa02 f303 	lsl.w	r3, r2, r3
1a0007b0:	78fa      	ldrb	r2, [r7, #3]
1a0007b2:	4619      	mov	r1, r3
1a0007b4:	687b      	ldr	r3, [r7, #4]
1a0007b6:	f502 620c 	add.w	r2, r2, #2240	@ 0x8c0
1a0007ba:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a0007be:	bf00      	nop
1a0007c0:	370c      	adds	r7, #12
1a0007c2:	46bd      	mov	sp, r7
1a0007c4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007c8:	4770      	bx	lr
	...

1a0007cc <DigitalOutputCreate>:

/* === Private function definitions ============================================================ */

/* === Public function implementation ========================================================== */

digital_output_t DigitalOutputCreate(uint32_t gpio, uint8_t bit, bool inverted) {
1a0007cc:	b580      	push	{r7, lr}
1a0007ce:	b084      	sub	sp, #16
1a0007d0:	af00      	add	r7, sp, #0
1a0007d2:	6078      	str	r0, [r7, #4]
1a0007d4:	460b      	mov	r3, r1
1a0007d6:	70fb      	strb	r3, [r7, #3]
1a0007d8:	4613      	mov	r3, r2
1a0007da:	70bb      	strb	r3, [r7, #2]
    digital_output_t self = NULL;
1a0007dc:	2300      	movs	r3, #0
1a0007de:	60fb      	str	r3, [r7, #12]
    if (salidas_alocadas < INSTANCIAS_MAX) {
1a0007e0:	4b14      	ldr	r3, [pc, #80]	@ (1a000834 <DigitalOutputCreate+0x68>)
1a0007e2:	781b      	ldrb	r3, [r3, #0]
1a0007e4:	2b09      	cmp	r3, #9
1a0007e6:	d820      	bhi.n	1a00082a <DigitalOutputCreate+0x5e>
        self = &salidas_instancias[salidas_alocadas];
1a0007e8:	4b12      	ldr	r3, [pc, #72]	@ (1a000834 <DigitalOutputCreate+0x68>)
1a0007ea:	781b      	ldrb	r3, [r3, #0]
1a0007ec:	00db      	lsls	r3, r3, #3
1a0007ee:	4a12      	ldr	r2, [pc, #72]	@ (1a000838 <DigitalOutputCreate+0x6c>)
1a0007f0:	4413      	add	r3, r2
1a0007f2:	60fb      	str	r3, [r7, #12]
        salidas_alocadas++;
1a0007f4:	4b0f      	ldr	r3, [pc, #60]	@ (1a000834 <DigitalOutputCreate+0x68>)
1a0007f6:	781b      	ldrb	r3, [r3, #0]
1a0007f8:	3301      	adds	r3, #1
1a0007fa:	b2da      	uxtb	r2, r3
1a0007fc:	4b0d      	ldr	r3, [pc, #52]	@ (1a000834 <DigitalOutputCreate+0x68>)
1a0007fe:	701a      	strb	r2, [r3, #0]

        self->gpio = gpio;
1a000800:	68fb      	ldr	r3, [r7, #12]
1a000802:	687a      	ldr	r2, [r7, #4]
1a000804:	601a      	str	r2, [r3, #0]
        self->bit = bit;
1a000806:	68fb      	ldr	r3, [r7, #12]
1a000808:	78fa      	ldrb	r2, [r7, #3]
1a00080a:	711a      	strb	r2, [r3, #4]
        self->inverted = inverted;
1a00080c:	68fb      	ldr	r3, [r7, #12]
1a00080e:	78ba      	ldrb	r2, [r7, #2]
1a000810:	715a      	strb	r2, [r3, #5]

        DigitalOutputDeactivate(self);
1a000812:	68f8      	ldr	r0, [r7, #12]
1a000814:	f000 f836 	bl	1a000884 <DigitalOutputDeactivate>
        Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, self->gpio, self->bit, true);
1a000818:	68fb      	ldr	r3, [r7, #12]
1a00081a:	681b      	ldr	r3, [r3, #0]
1a00081c:	b2d9      	uxtb	r1, r3
1a00081e:	68fb      	ldr	r3, [r7, #12]
1a000820:	791a      	ldrb	r2, [r3, #4]
1a000822:	2301      	movs	r3, #1
1a000824:	4805      	ldr	r0, [pc, #20]	@ (1a00083c <DigitalOutputCreate+0x70>)
1a000826:	f7ff ff96 	bl	1a000756 <Chip_GPIO_SetPinDIR>
    }

    return self;
1a00082a:	68fb      	ldr	r3, [r7, #12]
}
1a00082c:	4618      	mov	r0, r3
1a00082e:	3710      	adds	r7, #16
1a000830:	46bd      	mov	sp, r7
1a000832:	bd80      	pop	{r7, pc}
1a000834:	100000d0 	.word	0x100000d0
1a000838:	10000030 	.word	0x10000030
1a00083c:	400f4000 	.word	0x400f4000

1a000840 <DigitalOutputActivate>:

void DigitalOutputActivate(digital_output_t self) {
1a000840:	b580      	push	{r7, lr}
1a000842:	b082      	sub	sp, #8
1a000844:	af00      	add	r7, sp, #0
1a000846:	6078      	str	r0, [r7, #4]
    if (self != NULL) {
1a000848:	687b      	ldr	r3, [r7, #4]
1a00084a:	2b00      	cmp	r3, #0
1a00084c:	d014      	beq.n	1a000878 <DigitalOutputActivate+0x38>
        Chip_GPIO_SetPinState(LPC_GPIO_PORT, self->gpio, self->bit, !self->inverted);
1a00084e:	687b      	ldr	r3, [r7, #4]
1a000850:	681b      	ldr	r3, [r3, #0]
1a000852:	b2d9      	uxtb	r1, r3
1a000854:	687b      	ldr	r3, [r7, #4]
1a000856:	791a      	ldrb	r2, [r3, #4]
1a000858:	687b      	ldr	r3, [r7, #4]
1a00085a:	795b      	ldrb	r3, [r3, #5]
1a00085c:	2b00      	cmp	r3, #0
1a00085e:	bf14      	ite	ne
1a000860:	2301      	movne	r3, #1
1a000862:	2300      	moveq	r3, #0
1a000864:	b2db      	uxtb	r3, r3
1a000866:	f083 0301 	eor.w	r3, r3, #1
1a00086a:	b2db      	uxtb	r3, r3
1a00086c:	f003 0301 	and.w	r3, r3, #1
1a000870:	b2db      	uxtb	r3, r3
1a000872:	4803      	ldr	r0, [pc, #12]	@ (1a000880 <DigitalOutputActivate+0x40>)
1a000874:	f7ff fefa 	bl	1a00066c <Chip_GPIO_SetPinState>
    }
}
1a000878:	bf00      	nop
1a00087a:	3708      	adds	r7, #8
1a00087c:	46bd      	mov	sp, r7
1a00087e:	bd80      	pop	{r7, pc}
1a000880:	400f4000 	.word	0x400f4000

1a000884 <DigitalOutputDeactivate>:

void DigitalOutputDeactivate(digital_output_t self) {
1a000884:	b580      	push	{r7, lr}
1a000886:	b082      	sub	sp, #8
1a000888:	af00      	add	r7, sp, #0
1a00088a:	6078      	str	r0, [r7, #4]
    if (self != NULL) {
1a00088c:	687b      	ldr	r3, [r7, #4]
1a00088e:	2b00      	cmp	r3, #0
1a000890:	d009      	beq.n	1a0008a6 <DigitalOutputDeactivate+0x22>
        Chip_GPIO_SetPinState(LPC_GPIO_PORT, self->gpio, self->bit, self->inverted);
1a000892:	687b      	ldr	r3, [r7, #4]
1a000894:	681b      	ldr	r3, [r3, #0]
1a000896:	b2d9      	uxtb	r1, r3
1a000898:	687b      	ldr	r3, [r7, #4]
1a00089a:	791a      	ldrb	r2, [r3, #4]
1a00089c:	687b      	ldr	r3, [r7, #4]
1a00089e:	795b      	ldrb	r3, [r3, #5]
1a0008a0:	4803      	ldr	r0, [pc, #12]	@ (1a0008b0 <DigitalOutputDeactivate+0x2c>)
1a0008a2:	f7ff fee3 	bl	1a00066c <Chip_GPIO_SetPinState>
    }
}
1a0008a6:	bf00      	nop
1a0008a8:	3708      	adds	r7, #8
1a0008aa:	46bd      	mov	sp, r7
1a0008ac:	bd80      	pop	{r7, pc}
1a0008ae:	bf00      	nop
1a0008b0:	400f4000 	.word	0x400f4000

1a0008b4 <DigitalOutputToggle>:

void DigitalOutputToggle(digital_output_t self) {
1a0008b4:	b580      	push	{r7, lr}
1a0008b6:	b082      	sub	sp, #8
1a0008b8:	af00      	add	r7, sp, #0
1a0008ba:	6078      	str	r0, [r7, #4]
    if (self != NULL) {
1a0008bc:	687b      	ldr	r3, [r7, #4]
1a0008be:	2b00      	cmp	r3, #0
1a0008c0:	d008      	beq.n	1a0008d4 <DigitalOutputToggle+0x20>
        Chip_GPIO_SetPinToggle(LPC_GPIO_PORT, self->gpio, self->bit);
1a0008c2:	687b      	ldr	r3, [r7, #4]
1a0008c4:	681b      	ldr	r3, [r3, #0]
1a0008c6:	b2d9      	uxtb	r1, r3
1a0008c8:	687b      	ldr	r3, [r7, #4]
1a0008ca:	791b      	ldrb	r3, [r3, #4]
1a0008cc:	461a      	mov	r2, r3
1a0008ce:	4803      	ldr	r0, [pc, #12]	@ (1a0008dc <DigitalOutputToggle+0x28>)
1a0008d0:	f7ff ff62 	bl	1a000798 <Chip_GPIO_SetPinToggle>
    }
}
1a0008d4:	bf00      	nop
1a0008d6:	3708      	adds	r7, #8
1a0008d8:	46bd      	mov	sp, r7
1a0008da:	bd80      	pop	{r7, pc}
1a0008dc:	400f4000 	.word	0x400f4000

1a0008e0 <DigitalInputCreate>:

digital_input_t DigitalInputCreate(uint32_t gpio, uint8_t bit, bool inverted) {
1a0008e0:	b580      	push	{r7, lr}
1a0008e2:	b084      	sub	sp, #16
1a0008e4:	af00      	add	r7, sp, #0
1a0008e6:	6078      	str	r0, [r7, #4]
1a0008e8:	460b      	mov	r3, r1
1a0008ea:	70fb      	strb	r3, [r7, #3]
1a0008ec:	4613      	mov	r3, r2
1a0008ee:	70bb      	strb	r3, [r7, #2]
    digital_input_t self = NULL;
1a0008f0:	2300      	movs	r3, #0
1a0008f2:	60fb      	str	r3, [r7, #12]
    if (entradas_alocadas < INSTANCIAS_MAX) {
1a0008f4:	4b16      	ldr	r3, [pc, #88]	@ (1a000950 <DigitalInputCreate+0x70>)
1a0008f6:	781b      	ldrb	r3, [r3, #0]
1a0008f8:	2b09      	cmp	r3, #9
1a0008fa:	d824      	bhi.n	1a000946 <DigitalInputCreate+0x66>
        self = &entradas_instancias[entradas_alocadas];
1a0008fc:	4b14      	ldr	r3, [pc, #80]	@ (1a000950 <DigitalInputCreate+0x70>)
1a0008fe:	781b      	ldrb	r3, [r3, #0]
1a000900:	00db      	lsls	r3, r3, #3
1a000902:	4a14      	ldr	r2, [pc, #80]	@ (1a000954 <DigitalInputCreate+0x74>)
1a000904:	4413      	add	r3, r2
1a000906:	60fb      	str	r3, [r7, #12]
        entradas_alocadas++;
1a000908:	4b11      	ldr	r3, [pc, #68]	@ (1a000950 <DigitalInputCreate+0x70>)
1a00090a:	781b      	ldrb	r3, [r3, #0]
1a00090c:	3301      	adds	r3, #1
1a00090e:	b2da      	uxtb	r2, r3
1a000910:	4b0f      	ldr	r3, [pc, #60]	@ (1a000950 <DigitalInputCreate+0x70>)
1a000912:	701a      	strb	r2, [r3, #0]

        self->gpio = gpio;
1a000914:	68fb      	ldr	r3, [r7, #12]
1a000916:	687a      	ldr	r2, [r7, #4]
1a000918:	601a      	str	r2, [r3, #0]
        self->bit = bit;
1a00091a:	68fb      	ldr	r3, [r7, #12]
1a00091c:	78fa      	ldrb	r2, [r7, #3]
1a00091e:	711a      	strb	r2, [r3, #4]
        self->inverted = inverted;
1a000920:	68fb      	ldr	r3, [r7, #12]
1a000922:	78ba      	ldrb	r2, [r7, #2]
1a000924:	715a      	strb	r2, [r3, #5]

        Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, self->gpio, self->bit, false);
1a000926:	68fb      	ldr	r3, [r7, #12]
1a000928:	681b      	ldr	r3, [r3, #0]
1a00092a:	b2d9      	uxtb	r1, r3
1a00092c:	68fb      	ldr	r3, [r7, #12]
1a00092e:	791a      	ldrb	r2, [r3, #4]
1a000930:	2300      	movs	r3, #0
1a000932:	4809      	ldr	r0, [pc, #36]	@ (1a000958 <DigitalInputCreate+0x78>)
1a000934:	f7ff ff0f 	bl	1a000756 <Chip_GPIO_SetPinDIR>

        self->last_state = DigitalInputGetState(self);
1a000938:	68f8      	ldr	r0, [r7, #12]
1a00093a:	f000 f80f 	bl	1a00095c <DigitalInputGetState>
1a00093e:	4603      	mov	r3, r0
1a000940:	461a      	mov	r2, r3
1a000942:	68fb      	ldr	r3, [r7, #12]
1a000944:	719a      	strb	r2, [r3, #6]
    }
    return self;
1a000946:	68fb      	ldr	r3, [r7, #12]
}
1a000948:	4618      	mov	r0, r3
1a00094a:	3710      	adds	r7, #16
1a00094c:	46bd      	mov	sp, r7
1a00094e:	bd80      	pop	{r7, pc}
1a000950:	100000d1 	.word	0x100000d1
1a000954:	10000080 	.word	0x10000080
1a000958:	400f4000 	.word	0x400f4000

1a00095c <DigitalInputGetState>:

bool DigitalInputGetState(digital_input_t self) {
1a00095c:	b580      	push	{r7, lr}
1a00095e:	b084      	sub	sp, #16
1a000960:	af00      	add	r7, sp, #0
1a000962:	6078      	str	r0, [r7, #4]
    if (self == NULL) {
1a000964:	687b      	ldr	r3, [r7, #4]
1a000966:	2b00      	cmp	r3, #0
1a000968:	d101      	bne.n	1a00096e <DigitalInputGetState+0x12>
        return false;
1a00096a:	2300      	movs	r3, #0
1a00096c:	e01b      	b.n	1a0009a6 <DigitalInputGetState+0x4a>
    }
    bool estado_pin = Chip_GPIO_ReadPortBit(LPC_GPIO_PORT, self->gpio, self->bit);
1a00096e:	687b      	ldr	r3, [r7, #4]
1a000970:	6819      	ldr	r1, [r3, #0]
1a000972:	687b      	ldr	r3, [r7, #4]
1a000974:	791b      	ldrb	r3, [r3, #4]
1a000976:	461a      	mov	r2, r3
1a000978:	480d      	ldr	r0, [pc, #52]	@ (1a0009b0 <DigitalInputGetState+0x54>)
1a00097a:	f7ff fe93 	bl	1a0006a4 <Chip_GPIO_ReadPortBit>
1a00097e:	4603      	mov	r3, r0
1a000980:	73fb      	strb	r3, [r7, #15]
    if (self->inverted) {
1a000982:	687b      	ldr	r3, [r7, #4]
1a000984:	795b      	ldrb	r3, [r3, #5]
1a000986:	2b00      	cmp	r3, #0
1a000988:	d00c      	beq.n	1a0009a4 <DigitalInputGetState+0x48>
        return !estado_pin;
1a00098a:	7bfb      	ldrb	r3, [r7, #15]
1a00098c:	2b00      	cmp	r3, #0
1a00098e:	bf14      	ite	ne
1a000990:	2301      	movne	r3, #1
1a000992:	2300      	moveq	r3, #0
1a000994:	b2db      	uxtb	r3, r3
1a000996:	f083 0301 	eor.w	r3, r3, #1
1a00099a:	b2db      	uxtb	r3, r3
1a00099c:	f003 0301 	and.w	r3, r3, #1
1a0009a0:	b2db      	uxtb	r3, r3
1a0009a2:	e000      	b.n	1a0009a6 <DigitalInputGetState+0x4a>
    } else {
        return estado_pin;
1a0009a4:	7bfb      	ldrb	r3, [r7, #15]
    }
}
1a0009a6:	4618      	mov	r0, r3
1a0009a8:	3710      	adds	r7, #16
1a0009aa:	46bd      	mov	sp, r7
1a0009ac:	bd80      	pop	{r7, pc}
1a0009ae:	bf00      	nop
1a0009b0:	400f4000 	.word	0x400f4000

1a0009b4 <DigitalInputHasChanged>:

int DigitalInputHasChanged(digital_input_t self) {
1a0009b4:	b580      	push	{r7, lr}
1a0009b6:	b084      	sub	sp, #16
1a0009b8:	af00      	add	r7, sp, #0
1a0009ba:	6078      	str	r0, [r7, #4]
    int resultado = NO_EVENT;
1a0009bc:	2300      	movs	r3, #0
1a0009be:	60fb      	str	r3, [r7, #12]
    if (self != NULL) {
1a0009c0:	687b      	ldr	r3, [r7, #4]
1a0009c2:	2b00      	cmp	r3, #0
1a0009c4:	d020      	beq.n	1a000a08 <DigitalInputHasChanged+0x54>
        bool actual = DigitalInputGetState(self);
1a0009c6:	6878      	ldr	r0, [r7, #4]
1a0009c8:	f7ff ffc8 	bl	1a00095c <DigitalInputGetState>
1a0009cc:	4603      	mov	r3, r0
1a0009ce:	72fb      	strb	r3, [r7, #11]
        if (actual && !self->last_state) {
1a0009d0:	7afb      	ldrb	r3, [r7, #11]
1a0009d2:	2b00      	cmp	r3, #0
1a0009d4:	d009      	beq.n	1a0009ea <DigitalInputHasChanged+0x36>
1a0009d6:	687b      	ldr	r3, [r7, #4]
1a0009d8:	799b      	ldrb	r3, [r3, #6]
1a0009da:	f083 0301 	eor.w	r3, r3, #1
1a0009de:	b2db      	uxtb	r3, r3
1a0009e0:	2b00      	cmp	r3, #0
1a0009e2:	d002      	beq.n	1a0009ea <DigitalInputHasChanged+0x36>
            resultado = ACTIVATE_EVENT;
1a0009e4:	2301      	movs	r3, #1
1a0009e6:	60fb      	str	r3, [r7, #12]
1a0009e8:	e00b      	b.n	1a000a02 <DigitalInputHasChanged+0x4e>
        } else if (!actual && self->last_state) {
1a0009ea:	7afb      	ldrb	r3, [r7, #11]
1a0009ec:	f083 0301 	eor.w	r3, r3, #1
1a0009f0:	b2db      	uxtb	r3, r3
1a0009f2:	2b00      	cmp	r3, #0
1a0009f4:	d005      	beq.n	1a000a02 <DigitalInputHasChanged+0x4e>
1a0009f6:	687b      	ldr	r3, [r7, #4]
1a0009f8:	799b      	ldrb	r3, [r3, #6]
1a0009fa:	2b00      	cmp	r3, #0
1a0009fc:	d001      	beq.n	1a000a02 <DigitalInputHasChanged+0x4e>
            resultado = DEACTIVATE_EVENT;
1a0009fe:	2302      	movs	r3, #2
1a000a00:	60fb      	str	r3, [r7, #12]
        }
        self->last_state = actual;
1a000a02:	687b      	ldr	r3, [r7, #4]
1a000a04:	7afa      	ldrb	r2, [r7, #11]
1a000a06:	719a      	strb	r2, [r3, #6]
    }
    return resultado;
1a000a08:	68fb      	ldr	r3, [r7, #12]
}
1a000a0a:	4618      	mov	r0, r3
1a000a0c:	3710      	adds	r7, #16
1a000a0e:	46bd      	mov	sp, r7
1a000a10:	bd80      	pop	{r7, pc}

1a000a12 <DigitalInputHasActivated>:

bool DigitalInputHasActivated(digital_input_t self) {
1a000a12:	b580      	push	{r7, lr}
1a000a14:	b082      	sub	sp, #8
1a000a16:	af00      	add	r7, sp, #0
1a000a18:	6078      	str	r0, [r7, #4]
    return DigitalInputHasChanged(self) == ACTIVATE_EVENT;
1a000a1a:	6878      	ldr	r0, [r7, #4]
1a000a1c:	f7ff ffca 	bl	1a0009b4 <DigitalInputHasChanged>
1a000a20:	4603      	mov	r3, r0
1a000a22:	2b01      	cmp	r3, #1
1a000a24:	bf0c      	ite	eq
1a000a26:	2301      	moveq	r3, #1
1a000a28:	2300      	movne	r3, #0
1a000a2a:	b2db      	uxtb	r3, r3
}
1a000a2c:	4618      	mov	r0, r3
1a000a2e:	3708      	adds	r7, #8
1a000a30:	46bd      	mov	sp, r7
1a000a32:	bd80      	pop	{r7, pc}

1a000a34 <Chip_SCU_PinMuxSet>:
{
1a000a34:	b480      	push	{r7}
1a000a36:	b083      	sub	sp, #12
1a000a38:	af00      	add	r7, sp, #0
1a000a3a:	4603      	mov	r3, r0
1a000a3c:	71fb      	strb	r3, [r7, #7]
1a000a3e:	460b      	mov	r3, r1
1a000a40:	71bb      	strb	r3, [r7, #6]
1a000a42:	4613      	mov	r3, r2
1a000a44:	80bb      	strh	r3, [r7, #4]
	LPC_SCU->SFSP[port][pin] = modefunc;
1a000a46:	4807      	ldr	r0, [pc, #28]	@ (1a000a64 <Chip_SCU_PinMuxSet+0x30>)
1a000a48:	79f9      	ldrb	r1, [r7, #7]
1a000a4a:	79bb      	ldrb	r3, [r7, #6]
1a000a4c:	88ba      	ldrh	r2, [r7, #4]
1a000a4e:	0149      	lsls	r1, r1, #5
1a000a50:	440b      	add	r3, r1
1a000a52:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
}
1a000a56:	bf00      	nop
1a000a58:	370c      	adds	r7, #12
1a000a5a:	46bd      	mov	sp, r7
1a000a5c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a60:	4770      	bx	lr
1a000a62:	bf00      	nop
1a000a64:	40086000 	.word	0x40086000

1a000a68 <Chip_CREG_SetFlashAcceleration>:
 * This function should be called with the higher frequency before the clock frequency is
 * increased and it should be called with the new lower value after the clock frequency is
 * decreased.
 */
STATIC INLINE void Chip_CREG_SetFlashAcceleration(uint32_t Hz)
{
1a000a68:	b480      	push	{r7}
1a000a6a:	b085      	sub	sp, #20
1a000a6c:	af00      	add	r7, sp, #0
1a000a6e:	6078      	str	r0, [r7, #4]
	uint32_t FAValue = Hz / 21510000;
1a000a70:	687b      	ldr	r3, [r7, #4]
1a000a72:	4a10      	ldr	r2, [pc, #64]	@ (1a000ab4 <Chip_CREG_SetFlashAcceleration+0x4c>)
1a000a74:	fba2 2303 	umull	r2, r3, r2, r3
1a000a78:	0ddb      	lsrs	r3, r3, #23
1a000a7a:	60fb      	str	r3, [r7, #12]

	LPC_CREG->FLASHCFGA = (LPC_CREG->FLASHCFGA & (~(0xF << 12))) | (FAValue << 12);
1a000a7c:	4b0e      	ldr	r3, [pc, #56]	@ (1a000ab8 <Chip_CREG_SetFlashAcceleration+0x50>)
1a000a7e:	f8d3 3120 	ldr.w	r3, [r3, #288]	@ 0x120
1a000a82:	f423 4270 	bic.w	r2, r3, #61440	@ 0xf000
1a000a86:	68fb      	ldr	r3, [r7, #12]
1a000a88:	031b      	lsls	r3, r3, #12
1a000a8a:	490b      	ldr	r1, [pc, #44]	@ (1a000ab8 <Chip_CREG_SetFlashAcceleration+0x50>)
1a000a8c:	4313      	orrs	r3, r2
1a000a8e:	f8c1 3120 	str.w	r3, [r1, #288]	@ 0x120
	LPC_CREG->FLASHCFGB = (LPC_CREG->FLASHCFGB & (~(0xF << 12))) | (FAValue << 12);
1a000a92:	4b09      	ldr	r3, [pc, #36]	@ (1a000ab8 <Chip_CREG_SetFlashAcceleration+0x50>)
1a000a94:	f8d3 3124 	ldr.w	r3, [r3, #292]	@ 0x124
1a000a98:	f423 4270 	bic.w	r2, r3, #61440	@ 0xf000
1a000a9c:	68fb      	ldr	r3, [r7, #12]
1a000a9e:	031b      	lsls	r3, r3, #12
1a000aa0:	4905      	ldr	r1, [pc, #20]	@ (1a000ab8 <Chip_CREG_SetFlashAcceleration+0x50>)
1a000aa2:	4313      	orrs	r3, r2
1a000aa4:	f8c1 3124 	str.w	r3, [r1, #292]	@ 0x124
}
1a000aa8:	bf00      	nop
1a000aaa:	3714      	adds	r7, #20
1a000aac:	46bd      	mov	sp, r7
1a000aae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ab2:	4770      	bx	lr
1a000ab4:	63d6267d 	.word	0x63d6267d
1a000ab8:	40043000 	.word	0x40043000

1a000abc <Chip_GPIO_SetPinState>:
{
1a000abc:	b480      	push	{r7}
1a000abe:	b083      	sub	sp, #12
1a000ac0:	af00      	add	r7, sp, #0
1a000ac2:	6078      	str	r0, [r7, #4]
1a000ac4:	4608      	mov	r0, r1
1a000ac6:	4611      	mov	r1, r2
1a000ac8:	461a      	mov	r2, r3
1a000aca:	4603      	mov	r3, r0
1a000acc:	70fb      	strb	r3, [r7, #3]
1a000ace:	460b      	mov	r3, r1
1a000ad0:	70bb      	strb	r3, [r7, #2]
1a000ad2:	4613      	mov	r3, r2
1a000ad4:	707b      	strb	r3, [r7, #1]
	pGPIO->B[port][pin] = setting;
1a000ad6:	78fa      	ldrb	r2, [r7, #3]
1a000ad8:	78bb      	ldrb	r3, [r7, #2]
1a000ada:	7878      	ldrb	r0, [r7, #1]
1a000adc:	6879      	ldr	r1, [r7, #4]
1a000ade:	0152      	lsls	r2, r2, #5
1a000ae0:	440a      	add	r2, r1
1a000ae2:	4413      	add	r3, r2
1a000ae4:	4602      	mov	r2, r0
1a000ae6:	701a      	strb	r2, [r3, #0]
}
1a000ae8:	bf00      	nop
1a000aea:	370c      	adds	r7, #12
1a000aec:	46bd      	mov	sp, r7
1a000aee:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000af2:	4770      	bx	lr

1a000af4 <Chip_GPIO_SetPinDIROutput>:
{
1a000af4:	b480      	push	{r7}
1a000af6:	b083      	sub	sp, #12
1a000af8:	af00      	add	r7, sp, #0
1a000afa:	6078      	str	r0, [r7, #4]
1a000afc:	460b      	mov	r3, r1
1a000afe:	70fb      	strb	r3, [r7, #3]
1a000b00:	4613      	mov	r3, r2
1a000b02:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] |= 1UL << pin;
1a000b04:	78fa      	ldrb	r2, [r7, #3]
1a000b06:	687b      	ldr	r3, [r7, #4]
1a000b08:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000b0c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000b10:	78bb      	ldrb	r3, [r7, #2]
1a000b12:	2201      	movs	r2, #1
1a000b14:	fa02 f303 	lsl.w	r3, r2, r3
1a000b18:	78fa      	ldrb	r2, [r7, #3]
1a000b1a:	4319      	orrs	r1, r3
1a000b1c:	687b      	ldr	r3, [r7, #4]
1a000b1e:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000b22:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a000b26:	bf00      	nop
1a000b28:	370c      	adds	r7, #12
1a000b2a:	46bd      	mov	sp, r7
1a000b2c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b30:	4770      	bx	lr

1a000b32 <Chip_GPIO_SetPinDIRInput>:
{
1a000b32:	b480      	push	{r7}
1a000b34:	b083      	sub	sp, #12
1a000b36:	af00      	add	r7, sp, #0
1a000b38:	6078      	str	r0, [r7, #4]
1a000b3a:	460b      	mov	r3, r1
1a000b3c:	70fb      	strb	r3, [r7, #3]
1a000b3e:	4613      	mov	r3, r2
1a000b40:	70bb      	strb	r3, [r7, #2]
	pGPIO->DIR[port] &= ~(1UL << pin);
1a000b42:	78fa      	ldrb	r2, [r7, #3]
1a000b44:	687b      	ldr	r3, [r7, #4]
1a000b46:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000b4a:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000b4e:	78bb      	ldrb	r3, [r7, #2]
1a000b50:	2201      	movs	r2, #1
1a000b52:	fa02 f303 	lsl.w	r3, r2, r3
1a000b56:	43db      	mvns	r3, r3
1a000b58:	78fa      	ldrb	r2, [r7, #3]
1a000b5a:	4019      	ands	r1, r3
1a000b5c:	687b      	ldr	r3, [r7, #4]
1a000b5e:	f502 6200 	add.w	r2, r2, #2048	@ 0x800
1a000b62:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
}
1a000b66:	bf00      	nop
1a000b68:	370c      	adds	r7, #12
1a000b6a:	46bd      	mov	sp, r7
1a000b6c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b70:	4770      	bx	lr

1a000b72 <Chip_GPIO_SetPinDIR>:
{
1a000b72:	b580      	push	{r7, lr}
1a000b74:	b082      	sub	sp, #8
1a000b76:	af00      	add	r7, sp, #0
1a000b78:	6078      	str	r0, [r7, #4]
1a000b7a:	4608      	mov	r0, r1
1a000b7c:	4611      	mov	r1, r2
1a000b7e:	461a      	mov	r2, r3
1a000b80:	4603      	mov	r3, r0
1a000b82:	70fb      	strb	r3, [r7, #3]
1a000b84:	460b      	mov	r3, r1
1a000b86:	70bb      	strb	r3, [r7, #2]
1a000b88:	4613      	mov	r3, r2
1a000b8a:	707b      	strb	r3, [r7, #1]
	if (output) {
1a000b8c:	787b      	ldrb	r3, [r7, #1]
1a000b8e:	2b00      	cmp	r3, #0
1a000b90:	d006      	beq.n	1a000ba0 <Chip_GPIO_SetPinDIR+0x2e>
		Chip_GPIO_SetPinDIROutput(pGPIO, port, pin);
1a000b92:	78ba      	ldrb	r2, [r7, #2]
1a000b94:	78fb      	ldrb	r3, [r7, #3]
1a000b96:	4619      	mov	r1, r3
1a000b98:	6878      	ldr	r0, [r7, #4]
1a000b9a:	f7ff ffab 	bl	1a000af4 <Chip_GPIO_SetPinDIROutput>
}
1a000b9e:	e005      	b.n	1a000bac <Chip_GPIO_SetPinDIR+0x3a>
		Chip_GPIO_SetPinDIRInput(pGPIO, port, pin);
1a000ba0:	78ba      	ldrb	r2, [r7, #2]
1a000ba2:	78fb      	ldrb	r3, [r7, #3]
1a000ba4:	4619      	mov	r1, r3
1a000ba6:	6878      	ldr	r0, [r7, #4]
1a000ba8:	f7ff ffc3 	bl	1a000b32 <Chip_GPIO_SetPinDIRInput>
}
1a000bac:	bf00      	nop
1a000bae:	3708      	adds	r7, #8
1a000bb0:	46bd      	mov	sp, r7
1a000bb2:	bd80      	pop	{r7, pc}

1a000bb4 <SetupClocking>:

/* === Private variable definitions ============================================================ */

/* === Private function implementation ========================================================= */

static void SetupClocking(void) {
1a000bb4:	b580      	push	{r7, lr}
1a000bb6:	b082      	sub	sp, #8
1a000bb8:	af00      	add	r7, sp, #0
    Chip_CREG_SetFlashAcceleration(MAX_CLOCK_FREQ);
1a000bba:	4818      	ldr	r0, [pc, #96]	@ (1a000c1c <SetupClocking+0x68>)
1a000bbc:	f7ff ff54 	bl	1a000a68 <Chip_CREG_SetFlashAcceleration>
    Chip_SetupCoreClock(CLKIN_CRYSTAL, MAX_CLOCK_FREQ, true);
1a000bc0:	2201      	movs	r2, #1
1a000bc2:	4916      	ldr	r1, [pc, #88]	@ (1a000c1c <SetupClocking+0x68>)
1a000bc4:	2006      	movs	r0, #6
1a000bc6:	f000 fd91 	bl	1a0016ec <Chip_SetupCoreClock>

    /* Setup system base clocks and initial states. This won't enable and
       disable individual clocks, but sets up the base clock sources for
       each individual peripheral clock. */
    for (uint32_t i = 0; i < (sizeof(InitClkStates) / sizeof(InitClkStates[0])); ++i) {
1a000bca:	2300      	movs	r3, #0
1a000bcc:	607b      	str	r3, [r7, #4]
1a000bce:	e011      	b.n	1a000bf4 <SetupClocking+0x40>
        const struct CLK_BASE_STATES * c = &InitClkStates[i];
1a000bd0:	687b      	ldr	r3, [r7, #4]
1a000bd2:	009b      	lsls	r3, r3, #2
1a000bd4:	4a12      	ldr	r2, [pc, #72]	@ (1a000c20 <SetupClocking+0x6c>)
1a000bd6:	4413      	add	r3, r2
1a000bd8:	603b      	str	r3, [r7, #0]
        Chip_Clock_SetBaseClock(c->clk, c->clkin, c->autoblock_enab, c->powerdn);
1a000bda:	683b      	ldr	r3, [r7, #0]
1a000bdc:	7818      	ldrb	r0, [r3, #0]
1a000bde:	683b      	ldr	r3, [r7, #0]
1a000be0:	7859      	ldrb	r1, [r3, #1]
1a000be2:	683b      	ldr	r3, [r7, #0]
1a000be4:	789a      	ldrb	r2, [r3, #2]
1a000be6:	683b      	ldr	r3, [r7, #0]
1a000be8:	78db      	ldrb	r3, [r3, #3]
1a000bea:	f000 fc81 	bl	1a0014f0 <Chip_Clock_SetBaseClock>
    for (uint32_t i = 0; i < (sizeof(InitClkStates) / sizeof(InitClkStates[0])); ++i) {
1a000bee:	687b      	ldr	r3, [r7, #4]
1a000bf0:	3301      	adds	r3, #1
1a000bf2:	607b      	str	r3, [r7, #4]
1a000bf4:	687b      	ldr	r3, [r7, #4]
1a000bf6:	2b00      	cmp	r3, #0
1a000bf8:	d0ea      	beq.n	1a000bd0 <SetupClocking+0x1c>
    }

    /* Reset and enable 32Khz oscillator */
    LPC_CREG->CREG0 &= ~((1 << 3) | (1 << 2));
1a000bfa:	4b0a      	ldr	r3, [pc, #40]	@ (1a000c24 <SetupClocking+0x70>)
1a000bfc:	685b      	ldr	r3, [r3, #4]
1a000bfe:	4a09      	ldr	r2, [pc, #36]	@ (1a000c24 <SetupClocking+0x70>)
1a000c00:	f023 030c 	bic.w	r3, r3, #12
1a000c04:	6053      	str	r3, [r2, #4]
    LPC_CREG->CREG0 |= (1 << 1) | (1 << 0);
1a000c06:	4b07      	ldr	r3, [pc, #28]	@ (1a000c24 <SetupClocking+0x70>)
1a000c08:	685b      	ldr	r3, [r3, #4]
1a000c0a:	4a06      	ldr	r2, [pc, #24]	@ (1a000c24 <SetupClocking+0x70>)
1a000c0c:	f043 0303 	orr.w	r3, r3, #3
1a000c10:	6053      	str	r3, [r2, #4]
}
1a000c12:	bf00      	nop
1a000c14:	3708      	adds	r7, #8
1a000c16:	46bd      	mov	sp, r7
1a000c18:	bd80      	pop	{r7, pc}
1a000c1a:	bf00      	nop
1a000c1c:	0c28cb00 	.word	0x0c28cb00
1a000c20:	1a0018d8 	.word	0x1a0018d8
1a000c24:	40043000 	.word	0x40043000

1a000c28 <BoardSetup>:

/* === Public function implementation ========================================================== */

void BoardSetup(void) {
1a000c28:	b580      	push	{r7, lr}
1a000c2a:	af00      	add	r7, sp, #0
    SetupClocking();
1a000c2c:	f7ff ffc2 	bl	1a000bb4 <SetupClocking>
    SystemCoreClockUpdate();
1a000c30:	f000 f896 	bl	1a000d60 <SystemCoreClockUpdate>
    GpioSetDirection(TEC_1, false);
    GpioSetDirection(TEC_2, false);
    GpioSetDirection(TEC_3, false);
    GpioSetDirection(TEC_4, false);
#elif defined(USE_DRIVERS)
    Chip_SCU_PinMuxSet(LED_R_PORT, LED_R_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_R_FUNC);
1a000c34:	2254      	movs	r2, #84	@ 0x54
1a000c36:	2100      	movs	r1, #0
1a000c38:	2002      	movs	r0, #2
1a000c3a:	f7ff fefb 	bl	1a000a34 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, false);
1a000c3e:	2300      	movs	r3, #0
1a000c40:	2200      	movs	r2, #0
1a000c42:	2105      	movs	r1, #5
1a000c44:	4845      	ldr	r0, [pc, #276]	@ (1a000d5c <BoardSetup+0x134>)
1a000c46:	f7ff ff39 	bl	1a000abc <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_R_GPIO, LED_R_BIT, true);
1a000c4a:	2301      	movs	r3, #1
1a000c4c:	2200      	movs	r2, #0
1a000c4e:	2105      	movs	r1, #5
1a000c50:	4842      	ldr	r0, [pc, #264]	@ (1a000d5c <BoardSetup+0x134>)
1a000c52:	f7ff ff8e 	bl	1a000b72 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_G_PORT, LED_G_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_G_FUNC);
1a000c56:	2254      	movs	r2, #84	@ 0x54
1a000c58:	2101      	movs	r1, #1
1a000c5a:	2002      	movs	r0, #2
1a000c5c:	f7ff feea 	bl	1a000a34 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, false);
1a000c60:	2300      	movs	r3, #0
1a000c62:	2201      	movs	r2, #1
1a000c64:	2105      	movs	r1, #5
1a000c66:	483d      	ldr	r0, [pc, #244]	@ (1a000d5c <BoardSetup+0x134>)
1a000c68:	f7ff ff28 	bl	1a000abc <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_G_GPIO, LED_G_BIT, true);
1a000c6c:	2301      	movs	r3, #1
1a000c6e:	2201      	movs	r2, #1
1a000c70:	2105      	movs	r1, #5
1a000c72:	483a      	ldr	r0, [pc, #232]	@ (1a000d5c <BoardSetup+0x134>)
1a000c74:	f7ff ff7d 	bl	1a000b72 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_B_PORT, LED_B_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_B_FUNC);
1a000c78:	2254      	movs	r2, #84	@ 0x54
1a000c7a:	2102      	movs	r1, #2
1a000c7c:	2002      	movs	r0, #2
1a000c7e:	f7ff fed9 	bl	1a000a34 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, false);
1a000c82:	2300      	movs	r3, #0
1a000c84:	2202      	movs	r2, #2
1a000c86:	2105      	movs	r1, #5
1a000c88:	4834      	ldr	r0, [pc, #208]	@ (1a000d5c <BoardSetup+0x134>)
1a000c8a:	f7ff ff17 	bl	1a000abc <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_B_GPIO, LED_B_BIT, true);
1a000c8e:	2301      	movs	r3, #1
1a000c90:	2202      	movs	r2, #2
1a000c92:	2105      	movs	r1, #5
1a000c94:	4831      	ldr	r0, [pc, #196]	@ (1a000d5c <BoardSetup+0x134>)
1a000c96:	f7ff ff6c 	bl	1a000b72 <Chip_GPIO_SetPinDIR>

    /******************/
    Chip_SCU_PinMuxSet(LED_1_PORT, LED_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_1_FUNC);
1a000c9a:	2250      	movs	r2, #80	@ 0x50
1a000c9c:	210a      	movs	r1, #10
1a000c9e:	2002      	movs	r0, #2
1a000ca0:	f7ff fec8 	bl	1a000a34 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, false);
1a000ca4:	2300      	movs	r3, #0
1a000ca6:	220e      	movs	r2, #14
1a000ca8:	2100      	movs	r1, #0
1a000caa:	482c      	ldr	r0, [pc, #176]	@ (1a000d5c <BoardSetup+0x134>)
1a000cac:	f7ff ff06 	bl	1a000abc <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_1_GPIO, LED_1_BIT, true);
1a000cb0:	2301      	movs	r3, #1
1a000cb2:	220e      	movs	r2, #14
1a000cb4:	2100      	movs	r1, #0
1a000cb6:	4829      	ldr	r0, [pc, #164]	@ (1a000d5c <BoardSetup+0x134>)
1a000cb8:	f7ff ff5b 	bl	1a000b72 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_2_PORT, LED_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_2_FUNC);
1a000cbc:	2250      	movs	r2, #80	@ 0x50
1a000cbe:	210b      	movs	r1, #11
1a000cc0:	2002      	movs	r0, #2
1a000cc2:	f7ff feb7 	bl	1a000a34 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, false);
1a000cc6:	2300      	movs	r3, #0
1a000cc8:	220b      	movs	r2, #11
1a000cca:	2101      	movs	r1, #1
1a000ccc:	4823      	ldr	r0, [pc, #140]	@ (1a000d5c <BoardSetup+0x134>)
1a000cce:	f7ff fef5 	bl	1a000abc <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_2_GPIO, LED_2_BIT, true);
1a000cd2:	2301      	movs	r3, #1
1a000cd4:	220b      	movs	r2, #11
1a000cd6:	2101      	movs	r1, #1
1a000cd8:	4820      	ldr	r0, [pc, #128]	@ (1a000d5c <BoardSetup+0x134>)
1a000cda:	f7ff ff4a 	bl	1a000b72 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(LED_3_PORT, LED_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_INACT | LED_3_FUNC);
1a000cde:	2250      	movs	r2, #80	@ 0x50
1a000ce0:	210c      	movs	r1, #12
1a000ce2:	2002      	movs	r0, #2
1a000ce4:	f7ff fea6 	bl	1a000a34 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinState(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, false);
1a000ce8:	2300      	movs	r3, #0
1a000cea:	220c      	movs	r2, #12
1a000cec:	2101      	movs	r1, #1
1a000cee:	481b      	ldr	r0, [pc, #108]	@ (1a000d5c <BoardSetup+0x134>)
1a000cf0:	f7ff fee4 	bl	1a000abc <Chip_GPIO_SetPinState>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, LED_3_GPIO, LED_3_BIT, true);
1a000cf4:	2301      	movs	r3, #1
1a000cf6:	220c      	movs	r2, #12
1a000cf8:	2101      	movs	r1, #1
1a000cfa:	4818      	ldr	r0, [pc, #96]	@ (1a000d5c <BoardSetup+0x134>)
1a000cfc:	f7ff ff39 	bl	1a000b72 <Chip_GPIO_SetPinDIR>

    /******************/
    Chip_SCU_PinMuxSet(TEC_1_PORT, TEC_1_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_1_FUNC);
1a000d00:	2240      	movs	r2, #64	@ 0x40
1a000d02:	2100      	movs	r1, #0
1a000d04:	2001      	movs	r0, #1
1a000d06:	f7ff fe95 	bl	1a000a34 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_1_GPIO, TEC_1_BIT, false);
1a000d0a:	2300      	movs	r3, #0
1a000d0c:	2204      	movs	r2, #4
1a000d0e:	2100      	movs	r1, #0
1a000d10:	4812      	ldr	r0, [pc, #72]	@ (1a000d5c <BoardSetup+0x134>)
1a000d12:	f7ff ff2e 	bl	1a000b72 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_2_PORT, TEC_2_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_2_FUNC);
1a000d16:	2240      	movs	r2, #64	@ 0x40
1a000d18:	2101      	movs	r1, #1
1a000d1a:	2001      	movs	r0, #1
1a000d1c:	f7ff fe8a 	bl	1a000a34 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_2_GPIO, TEC_2_BIT, false);
1a000d20:	2300      	movs	r3, #0
1a000d22:	2208      	movs	r2, #8
1a000d24:	2100      	movs	r1, #0
1a000d26:	480d      	ldr	r0, [pc, #52]	@ (1a000d5c <BoardSetup+0x134>)
1a000d28:	f7ff ff23 	bl	1a000b72 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_3_PORT, TEC_3_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_3_FUNC);
1a000d2c:	2240      	movs	r2, #64	@ 0x40
1a000d2e:	2102      	movs	r1, #2
1a000d30:	2001      	movs	r0, #1
1a000d32:	f7ff fe7f 	bl	1a000a34 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_3_GPIO, TEC_3_BIT, false);
1a000d36:	2300      	movs	r3, #0
1a000d38:	2209      	movs	r2, #9
1a000d3a:	2100      	movs	r1, #0
1a000d3c:	4807      	ldr	r0, [pc, #28]	@ (1a000d5c <BoardSetup+0x134>)
1a000d3e:	f7ff ff18 	bl	1a000b72 <Chip_GPIO_SetPinDIR>

    Chip_SCU_PinMuxSet(TEC_4_PORT, TEC_4_PIN, SCU_MODE_INBUFF_EN | SCU_MODE_PULLUP | TEC_4_FUNC);
1a000d42:	2240      	movs	r2, #64	@ 0x40
1a000d44:	2106      	movs	r1, #6
1a000d46:	2001      	movs	r0, #1
1a000d48:	f7ff fe74 	bl	1a000a34 <Chip_SCU_PinMuxSet>
    Chip_GPIO_SetPinDIR(LPC_GPIO_PORT, TEC_4_GPIO, TEC_4_BIT, false);
1a000d4c:	2300      	movs	r3, #0
1a000d4e:	2209      	movs	r2, #9
1a000d50:	2101      	movs	r1, #1
1a000d52:	4802      	ldr	r0, [pc, #8]	@ (1a000d5c <BoardSetup+0x134>)
1a000d54:	f7ff ff0d 	bl	1a000b72 <Chip_GPIO_SetPinDIR>
    the program does not execute when the board is not in debugging
    */
#if (ENABLE_ARM_SEMIHOSTING)
    initialise_monitor_handles();
#endif
}
1a000d58:	bf00      	nop
1a000d5a:	bd80      	pop	{r7, pc}
1a000d5c:	400f4000 	.word	0x400f4000

1a000d60 <SystemCoreClockUpdate>:


/* Update system core clock rate, should be called if the system has
   a clock rate change */
void SystemCoreClockUpdate(void)
{
1a000d60:	b580      	push	{r7, lr}
1a000d62:	af00      	add	r7, sp, #0
	/* CPU core speed */
	SystemCoreClock = Chip_Clock_GetRate(CLK_MX_MXCORE);
1a000d64:	2069      	movs	r0, #105	@ 0x69
1a000d66:	f000 fc37 	bl	1a0015d8 <Chip_Clock_GetRate>
1a000d6a:	4603      	mov	r3, r0
1a000d6c:	4a01      	ldr	r2, [pc, #4]	@ (1a000d74 <SystemCoreClockUpdate+0x14>)
1a000d6e:	6013      	str	r3, [r2, #0]
}
1a000d70:	bf00      	nop
1a000d72:	bd80      	pop	{r7, pc}
1a000d74:	100000d4 	.word	0x100000d4

1a000d78 <ABS>:

/*****************************************************************************
 * Private functions
 ****************************************************************************/
__STATIC_INLINE uint32_t ABS(int val)
{
1a000d78:	b480      	push	{r7}
1a000d7a:	b083      	sub	sp, #12
1a000d7c:	af00      	add	r7, sp, #0
1a000d7e:	6078      	str	r0, [r7, #4]
	if (val < 0)
1a000d80:	687b      	ldr	r3, [r7, #4]
1a000d82:	2b00      	cmp	r3, #0
1a000d84:	da02      	bge.n	1a000d8c <ABS+0x14>
		return -val;
1a000d86:	687b      	ldr	r3, [r7, #4]
1a000d88:	425b      	negs	r3, r3
1a000d8a:	e000      	b.n	1a000d8e <ABS+0x16>
	return val;
1a000d8c:	687b      	ldr	r3, [r7, #4]
}
1a000d8e:	4618      	mov	r0, r3
1a000d90:	370c      	adds	r7, #12
1a000d92:	46bd      	mov	sp, r7
1a000d94:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d98:	4770      	bx	lr
	...

1a000d9c <pll_calc_divs>:

static void pll_calc_divs(uint32_t freq, PLL_PARAM_T *ppll)
{
1a000d9c:	b580      	push	{r7, lr}
1a000d9e:	b088      	sub	sp, #32
1a000da0:	af00      	add	r7, sp, #0
1a000da2:	6078      	str	r0, [r7, #4]
1a000da4:	6039      	str	r1, [r7, #0]

	uint32_t prev = freq;
1a000da6:	687b      	ldr	r3, [r7, #4]
1a000da8:	61fb      	str	r3, [r7, #28]
	int n, m, p;

	/* When direct mode is set FBSEL should be a don't care */
	if (ppll->ctrl & (1 << 7)) {
1a000daa:	683b      	ldr	r3, [r7, #0]
1a000dac:	681b      	ldr	r3, [r3, #0]
1a000dae:	f003 0380 	and.w	r3, r3, #128	@ 0x80
1a000db2:	2b00      	cmp	r3, #0
1a000db4:	d005      	beq.n	1a000dc2 <pll_calc_divs+0x26>
		ppll->ctrl &= ~(1 << 6);
1a000db6:	683b      	ldr	r3, [r7, #0]
1a000db8:	681b      	ldr	r3, [r3, #0]
1a000dba:	f023 0240 	bic.w	r2, r3, #64	@ 0x40
1a000dbe:	683b      	ldr	r3, [r7, #0]
1a000dc0:	601a      	str	r2, [r3, #0]
	}
	for (n = 1; n <= 4; n++) {
1a000dc2:	2301      	movs	r3, #1
1a000dc4:	61bb      	str	r3, [r7, #24]
1a000dc6:	e06f      	b.n	1a000ea8 <pll_calc_divs+0x10c>
		for (p = 0; p < 4; p ++) {
1a000dc8:	2300      	movs	r3, #0
1a000dca:	613b      	str	r3, [r7, #16]
1a000dcc:	e066      	b.n	1a000e9c <pll_calc_divs+0x100>
			for (m = 1; m <= 256; m++) {
1a000dce:	2301      	movs	r3, #1
1a000dd0:	617b      	str	r3, [r7, #20]
1a000dd2:	e05a      	b.n	1a000e8a <pll_calc_divs+0xee>
				uint32_t fcco, fout;
				if (ppll->ctrl & (1 << 6)) {
1a000dd4:	683b      	ldr	r3, [r7, #0]
1a000dd6:	681b      	ldr	r3, [r3, #0]
1a000dd8:	f003 0340 	and.w	r3, r3, #64	@ 0x40
1a000ddc:	2b00      	cmp	r3, #0
1a000dde:	d00e      	beq.n	1a000dfe <pll_calc_divs+0x62>
					fcco = ((m << (p + 1)) * ppll->fin) / n;
1a000de0:	693b      	ldr	r3, [r7, #16]
1a000de2:	3301      	adds	r3, #1
1a000de4:	697a      	ldr	r2, [r7, #20]
1a000de6:	fa02 f303 	lsl.w	r3, r2, r3
1a000dea:	461a      	mov	r2, r3
1a000dec:	683b      	ldr	r3, [r7, #0]
1a000dee:	695b      	ldr	r3, [r3, #20]
1a000df0:	fb03 f202 	mul.w	r2, r3, r2
1a000df4:	69bb      	ldr	r3, [r7, #24]
1a000df6:	fbb2 f3f3 	udiv	r3, r2, r3
1a000dfa:	60fb      	str	r3, [r7, #12]
1a000dfc:	e008      	b.n	1a000e10 <pll_calc_divs+0x74>
				} else {
					fcco = (m * ppll->fin) / n;
1a000dfe:	683b      	ldr	r3, [r7, #0]
1a000e00:	695b      	ldr	r3, [r3, #20]
1a000e02:	697a      	ldr	r2, [r7, #20]
1a000e04:	fb03 f202 	mul.w	r2, r3, r2
1a000e08:	69bb      	ldr	r3, [r7, #24]
1a000e0a:	fbb2 f3f3 	udiv	r3, r2, r3
1a000e0e:	60fb      	str	r3, [r7, #12]
				}
				if (fcco < PLL_MIN_CCO_FREQ) continue;
1a000e10:	68fb      	ldr	r3, [r7, #12]
1a000e12:	4a29      	ldr	r2, [pc, #164]	@ (1a000eb8 <pll_calc_divs+0x11c>)
1a000e14:	4293      	cmp	r3, r2
1a000e16:	d934      	bls.n	1a000e82 <pll_calc_divs+0xe6>
				if (fcco > PLL_MAX_CCO_FREQ) break;
1a000e18:	68fb      	ldr	r3, [r7, #12]
1a000e1a:	4a28      	ldr	r2, [pc, #160]	@ (1a000ebc <pll_calc_divs+0x120>)
1a000e1c:	4293      	cmp	r3, r2
1a000e1e:	d839      	bhi.n	1a000e94 <pll_calc_divs+0xf8>
				if (ppll->ctrl & (1 << 7)) {
1a000e20:	683b      	ldr	r3, [r7, #0]
1a000e22:	681b      	ldr	r3, [r3, #0]
1a000e24:	f003 0380 	and.w	r3, r3, #128	@ 0x80
1a000e28:	2b00      	cmp	r3, #0
1a000e2a:	d002      	beq.n	1a000e32 <pll_calc_divs+0x96>
					fout = fcco;
1a000e2c:	68fb      	ldr	r3, [r7, #12]
1a000e2e:	60bb      	str	r3, [r7, #8]
1a000e30:	e005      	b.n	1a000e3e <pll_calc_divs+0xa2>
				} else {
					fout = fcco >> (p + 1);
1a000e32:	693b      	ldr	r3, [r7, #16]
1a000e34:	3301      	adds	r3, #1
1a000e36:	68fa      	ldr	r2, [r7, #12]
1a000e38:	fa22 f303 	lsr.w	r3, r2, r3
1a000e3c:	60bb      	str	r3, [r7, #8]
				}

				if (ABS(freq - fout) < prev) {
1a000e3e:	687a      	ldr	r2, [r7, #4]
1a000e40:	68bb      	ldr	r3, [r7, #8]
1a000e42:	1ad3      	subs	r3, r2, r3
1a000e44:	4618      	mov	r0, r3
1a000e46:	f7ff ff97 	bl	1a000d78 <ABS>
1a000e4a:	4602      	mov	r2, r0
1a000e4c:	69fb      	ldr	r3, [r7, #28]
1a000e4e:	4293      	cmp	r3, r2
1a000e50:	d918      	bls.n	1a000e84 <pll_calc_divs+0xe8>
					ppll->nsel = n;
1a000e52:	683b      	ldr	r3, [r7, #0]
1a000e54:	69ba      	ldr	r2, [r7, #24]
1a000e56:	609a      	str	r2, [r3, #8]
					ppll->psel = p + 1;
1a000e58:	693b      	ldr	r3, [r7, #16]
1a000e5a:	1c5a      	adds	r2, r3, #1
1a000e5c:	683b      	ldr	r3, [r7, #0]
1a000e5e:	60da      	str	r2, [r3, #12]
					ppll->msel = m;
1a000e60:	683b      	ldr	r3, [r7, #0]
1a000e62:	697a      	ldr	r2, [r7, #20]
1a000e64:	611a      	str	r2, [r3, #16]
					ppll->fout = fout;
1a000e66:	683b      	ldr	r3, [r7, #0]
1a000e68:	68ba      	ldr	r2, [r7, #8]
1a000e6a:	619a      	str	r2, [r3, #24]
					ppll->fcco = fcco;
1a000e6c:	683b      	ldr	r3, [r7, #0]
1a000e6e:	68fa      	ldr	r2, [r7, #12]
1a000e70:	61da      	str	r2, [r3, #28]
					prev = ABS(freq - fout);
1a000e72:	687a      	ldr	r2, [r7, #4]
1a000e74:	68bb      	ldr	r3, [r7, #8]
1a000e76:	1ad3      	subs	r3, r2, r3
1a000e78:	4618      	mov	r0, r3
1a000e7a:	f7ff ff7d 	bl	1a000d78 <ABS>
1a000e7e:	61f8      	str	r0, [r7, #28]
1a000e80:	e000      	b.n	1a000e84 <pll_calc_divs+0xe8>
				if (fcco < PLL_MIN_CCO_FREQ) continue;
1a000e82:	bf00      	nop
			for (m = 1; m <= 256; m++) {
1a000e84:	697b      	ldr	r3, [r7, #20]
1a000e86:	3301      	adds	r3, #1
1a000e88:	617b      	str	r3, [r7, #20]
1a000e8a:	697b      	ldr	r3, [r7, #20]
1a000e8c:	f5b3 7f80 	cmp.w	r3, #256	@ 0x100
1a000e90:	dda0      	ble.n	1a000dd4 <pll_calc_divs+0x38>
1a000e92:	e000      	b.n	1a000e96 <pll_calc_divs+0xfa>
				if (fcco > PLL_MAX_CCO_FREQ) break;
1a000e94:	bf00      	nop
		for (p = 0; p < 4; p ++) {
1a000e96:	693b      	ldr	r3, [r7, #16]
1a000e98:	3301      	adds	r3, #1
1a000e9a:	613b      	str	r3, [r7, #16]
1a000e9c:	693b      	ldr	r3, [r7, #16]
1a000e9e:	2b03      	cmp	r3, #3
1a000ea0:	dd95      	ble.n	1a000dce <pll_calc_divs+0x32>
	for (n = 1; n <= 4; n++) {
1a000ea2:	69bb      	ldr	r3, [r7, #24]
1a000ea4:	3301      	adds	r3, #1
1a000ea6:	61bb      	str	r3, [r7, #24]
1a000ea8:	69bb      	ldr	r3, [r7, #24]
1a000eaa:	2b04      	cmp	r3, #4
1a000eac:	dd8c      	ble.n	1a000dc8 <pll_calc_divs+0x2c>
				}
			}
		}
	}
}
1a000eae:	bf00      	nop
1a000eb0:	bf00      	nop
1a000eb2:	3720      	adds	r7, #32
1a000eb4:	46bd      	mov	sp, r7
1a000eb6:	bd80      	pop	{r7, pc}
1a000eb8:	094c5eff 	.word	0x094c5eff
1a000ebc:	1312d000 	.word	0x1312d000

1a000ec0 <pll_get_frac>:

static void pll_get_frac(uint32_t freq, PLL_PARAM_T *ppll)
{
1a000ec0:	b5b0      	push	{r4, r5, r7, lr}
1a000ec2:	b09e      	sub	sp, #120	@ 0x78
1a000ec4:	af00      	add	r7, sp, #0
1a000ec6:	6078      	str	r0, [r7, #4]
1a000ec8:	6039      	str	r1, [r7, #0]
	int diff[3];
	PLL_PARAM_T pll[3] = {{0},{0},{0}};
1a000eca:	f107 030c 	add.w	r3, r7, #12
1a000ece:	2260      	movs	r2, #96	@ 0x60
1a000ed0:	2100      	movs	r1, #0
1a000ed2:	4618      	mov	r0, r3
1a000ed4:	f000 fcae 	bl	1a001834 <memset>

	/* Try direct mode */
	pll[0].ctrl |= (1 << 7);
1a000ed8:	68fb      	ldr	r3, [r7, #12]
1a000eda:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
1a000ede:	60fb      	str	r3, [r7, #12]
	pll[0].fin = ppll->fin;
1a000ee0:	683b      	ldr	r3, [r7, #0]
1a000ee2:	695b      	ldr	r3, [r3, #20]
1a000ee4:	623b      	str	r3, [r7, #32]
	pll[0].srcin = ppll->srcin;
1a000ee6:	683b      	ldr	r3, [r7, #0]
1a000ee8:	791b      	ldrb	r3, [r3, #4]
1a000eea:	743b      	strb	r3, [r7, #16]
	pll_calc_divs(freq, &pll[0]);
1a000eec:	f107 030c 	add.w	r3, r7, #12
1a000ef0:	4619      	mov	r1, r3
1a000ef2:	6878      	ldr	r0, [r7, #4]
1a000ef4:	f7ff ff52 	bl	1a000d9c <pll_calc_divs>
	if (pll[0].fout == freq) {
1a000ef8:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
1a000efa:	687a      	ldr	r2, [r7, #4]
1a000efc:	429a      	cmp	r2, r3
1a000efe:	d10a      	bne.n	1a000f16 <pll_get_frac+0x56>
		*ppll = pll[0];
1a000f00:	683b      	ldr	r3, [r7, #0]
1a000f02:	461d      	mov	r5, r3
1a000f04:	f107 040c 	add.w	r4, r7, #12
1a000f08:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000f0a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000f0c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000f10:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
		return ;
1a000f14:	e08e      	b.n	1a001034 <pll_get_frac+0x174>
	}
	diff[0] = ABS(freq - pll[0].fout);
1a000f16:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
1a000f18:	687a      	ldr	r2, [r7, #4]
1a000f1a:	1ad3      	subs	r3, r2, r3
1a000f1c:	4618      	mov	r0, r3
1a000f1e:	f7ff ff2b 	bl	1a000d78 <ABS>
1a000f22:	4603      	mov	r3, r0
1a000f24:	66fb      	str	r3, [r7, #108]	@ 0x6c

	/* Try non-Integer mode */
	pll[2].ctrl &= ~(1 << 6);			// need to set FBSEL to 0
1a000f26:	6cfb      	ldr	r3, [r7, #76]	@ 0x4c
1a000f28:	f023 0340 	bic.w	r3, r3, #64	@ 0x40
1a000f2c:	64fb      	str	r3, [r7, #76]	@ 0x4c
	pll[2].fin = ppll->fin;
1a000f2e:	683b      	ldr	r3, [r7, #0]
1a000f30:	695b      	ldr	r3, [r3, #20]
1a000f32:	663b      	str	r3, [r7, #96]	@ 0x60
	pll[2].srcin = ppll->srcin;
1a000f34:	683b      	ldr	r3, [r7, #0]
1a000f36:	791b      	ldrb	r3, [r3, #4]
1a000f38:	f887 3050 	strb.w	r3, [r7, #80]	@ 0x50
	pll_calc_divs(freq, &pll[2]);
1a000f3c:	f107 030c 	add.w	r3, r7, #12
1a000f40:	3340      	adds	r3, #64	@ 0x40
1a000f42:	4619      	mov	r1, r3
1a000f44:	6878      	ldr	r0, [r7, #4]
1a000f46:	f7ff ff29 	bl	1a000d9c <pll_calc_divs>
	if (pll[2].fout == freq) {
1a000f4a:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
1a000f4c:	687a      	ldr	r2, [r7, #4]
1a000f4e:	429a      	cmp	r2, r3
1a000f50:	d10a      	bne.n	1a000f68 <pll_get_frac+0xa8>
		*ppll = pll[2];
1a000f52:	683b      	ldr	r3, [r7, #0]
1a000f54:	461d      	mov	r5, r3
1a000f56:	f107 044c 	add.w	r4, r7, #76	@ 0x4c
1a000f5a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000f5c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000f5e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000f62:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
		return ;
1a000f66:	e065      	b.n	1a001034 <pll_get_frac+0x174>
	}
	diff[2] = ABS(freq - pll[2].fout);
1a000f68:	6e7b      	ldr	r3, [r7, #100]	@ 0x64
1a000f6a:	687a      	ldr	r2, [r7, #4]
1a000f6c:	1ad3      	subs	r3, r2, r3
1a000f6e:	4618      	mov	r0, r3
1a000f70:	f7ff ff02 	bl	1a000d78 <ABS>
1a000f74:	4603      	mov	r3, r0
1a000f76:	677b      	str	r3, [r7, #116]	@ 0x74

	if (freq <= 110000000) {
1a000f78:	687b      	ldr	r3, [r7, #4]
1a000f7a:	4a30      	ldr	r2, [pc, #192]	@ (1a00103c <pll_get_frac+0x17c>)
1a000f7c:	4293      	cmp	r3, r2
1a000f7e:	d81a      	bhi.n	1a000fb6 <pll_get_frac+0xf6>
		/* Try integer mode */
		pll[1].ctrl = (1 << 6);
1a000f80:	2340      	movs	r3, #64	@ 0x40
1a000f82:	62fb      	str	r3, [r7, #44]	@ 0x2c
		pll[1].fin = ppll->fin;
1a000f84:	683b      	ldr	r3, [r7, #0]
1a000f86:	695b      	ldr	r3, [r3, #20]
1a000f88:	643b      	str	r3, [r7, #64]	@ 0x40
		pll_calc_divs(freq, &pll[1]);
1a000f8a:	f107 030c 	add.w	r3, r7, #12
1a000f8e:	3320      	adds	r3, #32
1a000f90:	4619      	mov	r1, r3
1a000f92:	6878      	ldr	r0, [r7, #4]
1a000f94:	f7ff ff02 	bl	1a000d9c <pll_calc_divs>
		if (pll[1].fout == freq) {
1a000f98:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
1a000f9a:	687a      	ldr	r2, [r7, #4]
1a000f9c:	429a      	cmp	r2, r3
1a000f9e:	d10a      	bne.n	1a000fb6 <pll_get_frac+0xf6>
			*ppll = pll[1];
1a000fa0:	683b      	ldr	r3, [r7, #0]
1a000fa2:	461d      	mov	r5, r3
1a000fa4:	f107 042c 	add.w	r4, r7, #44	@ 0x2c
1a000fa8:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000faa:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000fac:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000fb0:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
			return ;
1a000fb4:	e03e      	b.n	1a001034 <pll_get_frac+0x174>
		}
	}
	diff[1] = ABS(freq - pll[1].fout);
1a000fb6:	6c7b      	ldr	r3, [r7, #68]	@ 0x44
1a000fb8:	687a      	ldr	r2, [r7, #4]
1a000fba:	1ad3      	subs	r3, r2, r3
1a000fbc:	4618      	mov	r0, r3
1a000fbe:	f7ff fedb 	bl	1a000d78 <ABS>
1a000fc2:	4603      	mov	r3, r0
1a000fc4:	673b      	str	r3, [r7, #112]	@ 0x70

	/* Find the min of 3 and return */
	if (diff[0] <= diff[1]) {
1a000fc6:	6efa      	ldr	r2, [r7, #108]	@ 0x6c
1a000fc8:	6f3b      	ldr	r3, [r7, #112]	@ 0x70
1a000fca:	429a      	cmp	r2, r3
1a000fcc:	dc19      	bgt.n	1a001002 <pll_get_frac+0x142>
		if (diff[0] <= diff[2]) {
1a000fce:	6efa      	ldr	r2, [r7, #108]	@ 0x6c
1a000fd0:	6f7b      	ldr	r3, [r7, #116]	@ 0x74
1a000fd2:	429a      	cmp	r2, r3
1a000fd4:	dc0a      	bgt.n	1a000fec <pll_get_frac+0x12c>
			*ppll = pll[0];
1a000fd6:	683b      	ldr	r3, [r7, #0]
1a000fd8:	461d      	mov	r5, r3
1a000fda:	f107 040c 	add.w	r4, r7, #12
1a000fde:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000fe0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000fe2:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000fe6:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a000fea:	e023      	b.n	1a001034 <pll_get_frac+0x174>
		} else {
			*ppll = pll[2];
1a000fec:	683b      	ldr	r3, [r7, #0]
1a000fee:	461d      	mov	r5, r3
1a000ff0:	f107 044c 	add.w	r4, r7, #76	@ 0x4c
1a000ff4:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a000ff6:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a000ff8:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a000ffc:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001000:	e018      	b.n	1a001034 <pll_get_frac+0x174>
		}
	} else {
		if (diff[1] <= diff[2]) {
1a001002:	6f3a      	ldr	r2, [r7, #112]	@ 0x70
1a001004:	6f7b      	ldr	r3, [r7, #116]	@ 0x74
1a001006:	429a      	cmp	r2, r3
1a001008:	dc0a      	bgt.n	1a001020 <pll_get_frac+0x160>
			*ppll = pll[1];
1a00100a:	683b      	ldr	r3, [r7, #0]
1a00100c:	461d      	mov	r5, r3
1a00100e:	f107 042c 	add.w	r4, r7, #44	@ 0x2c
1a001012:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001014:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001016:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00101a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00101e:	e009      	b.n	1a001034 <pll_get_frac+0x174>
		} else {
			*ppll = pll[2];
1a001020:	683b      	ldr	r3, [r7, #0]
1a001022:	461d      	mov	r5, r3
1a001024:	f107 044c 	add.w	r4, r7, #76	@ 0x4c
1a001028:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00102a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00102c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001030:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
		}
	}
}
1a001034:	3778      	adds	r7, #120	@ 0x78
1a001036:	46bd      	mov	sp, r7
1a001038:	bdb0      	pop	{r4, r5, r7, pc}
1a00103a:	bf00      	nop
1a00103c:	068e7780 	.word	0x068e7780

1a001040 <Chip_Clock_GetDivRate>:
	return TestHz;
}

/* Returns clock rate out of a divider */
static uint32_t Chip_Clock_GetDivRate(CHIP_CGU_CLKIN_T clock, CHIP_CGU_IDIV_T divider)
{
1a001040:	b580      	push	{r7, lr}
1a001042:	b084      	sub	sp, #16
1a001044:	af00      	add	r7, sp, #0
1a001046:	4603      	mov	r3, r0
1a001048:	460a      	mov	r2, r1
1a00104a:	71fb      	strb	r3, [r7, #7]
1a00104c:	4613      	mov	r3, r2
1a00104e:	71bb      	strb	r3, [r7, #6]
	CHIP_CGU_CLKIN_T input;
	uint32_t div;

	input = Chip_Clock_GetDividerSource(divider);
1a001050:	79bb      	ldrb	r3, [r7, #6]
1a001052:	4618      	mov	r0, r3
1a001054:	f000 f95e 	bl	1a001314 <Chip_Clock_GetDividerSource>
1a001058:	4603      	mov	r3, r0
1a00105a:	73fb      	strb	r3, [r7, #15]
	div = Chip_Clock_GetDividerDivisor(divider);
1a00105c:	79bb      	ldrb	r3, [r7, #6]
1a00105e:	4618      	mov	r0, r3
1a001060:	f000 f978 	bl	1a001354 <Chip_Clock_GetDividerDivisor>
1a001064:	60b8      	str	r0, [r7, #8]
	return Chip_Clock_GetClockInputHz(input) / (div + 1);
1a001066:	7bfb      	ldrb	r3, [r7, #15]
1a001068:	4618      	mov	r0, r3
1a00106a:	f000 f98f 	bl	1a00138c <Chip_Clock_GetClockInputHz>
1a00106e:	4602      	mov	r2, r0
1a001070:	68bb      	ldr	r3, [r7, #8]
1a001072:	3301      	adds	r3, #1
1a001074:	fbb2 f3f3 	udiv	r3, r2, r3
}
1a001078:	4618      	mov	r0, r3
1a00107a:	3710      	adds	r7, #16
1a00107c:	46bd      	mov	sp, r7
1a00107e:	bd80      	pop	{r7, pc}

1a001080 <Chip_Clock_FindBaseClock>:

/* Finds the base clock for the peripheral clock */
static CHIP_CGU_BASE_CLK_T Chip_Clock_FindBaseClock(CHIP_CCU_CLK_T clk)
{
1a001080:	b480      	push	{r7}
1a001082:	b085      	sub	sp, #20
1a001084:	af00      	add	r7, sp, #0
1a001086:	4603      	mov	r3, r0
1a001088:	80fb      	strh	r3, [r7, #6]
	CHIP_CGU_BASE_CLK_T baseclk = CLK_BASE_NONE;
1a00108a:	231c      	movs	r3, #28
1a00108c:	73fb      	strb	r3, [r7, #15]
	int i = 0;
1a00108e:	2300      	movs	r3, #0
1a001090:	60bb      	str	r3, [r7, #8]

	while ((baseclk == CLK_BASE_NONE) && (periph_to_base[i].clkbase != baseclk)) {
1a001092:	e024      	b.n	1a0010de <Chip_Clock_FindBaseClock+0x5e>
		if ((clk >= periph_to_base[i].clkstart) && (clk <= periph_to_base[i].clkend)) {
1a001094:	491d      	ldr	r1, [pc, #116]	@ (1a00110c <Chip_Clock_FindBaseClock+0x8c>)
1a001096:	68ba      	ldr	r2, [r7, #8]
1a001098:	4613      	mov	r3, r2
1a00109a:	005b      	lsls	r3, r3, #1
1a00109c:	4413      	add	r3, r2
1a00109e:	005b      	lsls	r3, r3, #1
1a0010a0:	440b      	add	r3, r1
1a0010a2:	881b      	ldrh	r3, [r3, #0]
1a0010a4:	88fa      	ldrh	r2, [r7, #6]
1a0010a6:	429a      	cmp	r2, r3
1a0010a8:	d316      	bcc.n	1a0010d8 <Chip_Clock_FindBaseClock+0x58>
1a0010aa:	4918      	ldr	r1, [pc, #96]	@ (1a00110c <Chip_Clock_FindBaseClock+0x8c>)
1a0010ac:	68ba      	ldr	r2, [r7, #8]
1a0010ae:	4613      	mov	r3, r2
1a0010b0:	005b      	lsls	r3, r3, #1
1a0010b2:	4413      	add	r3, r2
1a0010b4:	005b      	lsls	r3, r3, #1
1a0010b6:	440b      	add	r3, r1
1a0010b8:	3302      	adds	r3, #2
1a0010ba:	881b      	ldrh	r3, [r3, #0]
1a0010bc:	88fa      	ldrh	r2, [r7, #6]
1a0010be:	429a      	cmp	r2, r3
1a0010c0:	d80a      	bhi.n	1a0010d8 <Chip_Clock_FindBaseClock+0x58>
			baseclk = periph_to_base[i].clkbase;
1a0010c2:	4912      	ldr	r1, [pc, #72]	@ (1a00110c <Chip_Clock_FindBaseClock+0x8c>)
1a0010c4:	68ba      	ldr	r2, [r7, #8]
1a0010c6:	4613      	mov	r3, r2
1a0010c8:	005b      	lsls	r3, r3, #1
1a0010ca:	4413      	add	r3, r2
1a0010cc:	005b      	lsls	r3, r3, #1
1a0010ce:	440b      	add	r3, r1
1a0010d0:	3304      	adds	r3, #4
1a0010d2:	781b      	ldrb	r3, [r3, #0]
1a0010d4:	73fb      	strb	r3, [r7, #15]
1a0010d6:	e002      	b.n	1a0010de <Chip_Clock_FindBaseClock+0x5e>
		}
		else {
			i++;
1a0010d8:	68bb      	ldr	r3, [r7, #8]
1a0010da:	3301      	adds	r3, #1
1a0010dc:	60bb      	str	r3, [r7, #8]
	while ((baseclk == CLK_BASE_NONE) && (periph_to_base[i].clkbase != baseclk)) {
1a0010de:	7bfb      	ldrb	r3, [r7, #15]
1a0010e0:	2b1c      	cmp	r3, #28
1a0010e2:	d10b      	bne.n	1a0010fc <Chip_Clock_FindBaseClock+0x7c>
1a0010e4:	4909      	ldr	r1, [pc, #36]	@ (1a00110c <Chip_Clock_FindBaseClock+0x8c>)
1a0010e6:	68ba      	ldr	r2, [r7, #8]
1a0010e8:	4613      	mov	r3, r2
1a0010ea:	005b      	lsls	r3, r3, #1
1a0010ec:	4413      	add	r3, r2
1a0010ee:	005b      	lsls	r3, r3, #1
1a0010f0:	440b      	add	r3, r1
1a0010f2:	3304      	adds	r3, #4
1a0010f4:	781b      	ldrb	r3, [r3, #0]
1a0010f6:	7bfa      	ldrb	r2, [r7, #15]
1a0010f8:	429a      	cmp	r2, r3
1a0010fa:	d1cb      	bne.n	1a001094 <Chip_Clock_FindBaseClock+0x14>
		}
	}

	return baseclk;
1a0010fc:	7bfb      	ldrb	r3, [r7, #15]
}
1a0010fe:	4618      	mov	r0, r3
1a001100:	3714      	adds	r7, #20
1a001102:	46bd      	mov	sp, r7
1a001104:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001108:	4770      	bx	lr
1a00110a:	bf00      	nop
1a00110c:	1a0018e4 	.word	0x1a0018e4

1a001110 <Chip_Clock_EnableCrystal>:
 * Public functions
 ****************************************************************************/

/* Enables the crystal oscillator */
void Chip_Clock_EnableCrystal(void)
{
1a001110:	b480      	push	{r7}
1a001112:	b083      	sub	sp, #12
1a001114:	af00      	add	r7, sp, #0
	volatile uint32_t delay = 1000;
1a001116:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
1a00111a:	603b      	str	r3, [r7, #0]

	uint32_t OldCrystalConfig = LPC_CGU->XTAL_OSC_CTRL;
1a00111c:	4b15      	ldr	r3, [pc, #84]	@ (1a001174 <Chip_Clock_EnableCrystal+0x64>)
1a00111e:	699b      	ldr	r3, [r3, #24]
1a001120:	607b      	str	r3, [r7, #4]

	/* Clear bypass mode */
	OldCrystalConfig &= (~2);
1a001122:	687b      	ldr	r3, [r7, #4]
1a001124:	f023 0302 	bic.w	r3, r3, #2
1a001128:	607b      	str	r3, [r7, #4]
	if (OldCrystalConfig != LPC_CGU->XTAL_OSC_CTRL) {
1a00112a:	4b12      	ldr	r3, [pc, #72]	@ (1a001174 <Chip_Clock_EnableCrystal+0x64>)
1a00112c:	699b      	ldr	r3, [r3, #24]
1a00112e:	687a      	ldr	r2, [r7, #4]
1a001130:	429a      	cmp	r2, r3
1a001132:	d002      	beq.n	1a00113a <Chip_Clock_EnableCrystal+0x2a>
		LPC_CGU->XTAL_OSC_CTRL = OldCrystalConfig;
1a001134:	4a0f      	ldr	r2, [pc, #60]	@ (1a001174 <Chip_Clock_EnableCrystal+0x64>)
1a001136:	687b      	ldr	r3, [r7, #4]
1a001138:	6193      	str	r3, [r2, #24]
	}

	/* Enable crystal oscillator */
	OldCrystalConfig &= (~1);
1a00113a:	687b      	ldr	r3, [r7, #4]
1a00113c:	f023 0301 	bic.w	r3, r3, #1
1a001140:	607b      	str	r3, [r7, #4]
	if (OscRateIn >= 20000000) {
1a001142:	4b0d      	ldr	r3, [pc, #52]	@ (1a001178 <Chip_Clock_EnableCrystal+0x68>)
1a001144:	681b      	ldr	r3, [r3, #0]
1a001146:	4a0d      	ldr	r2, [pc, #52]	@ (1a00117c <Chip_Clock_EnableCrystal+0x6c>)
1a001148:	4293      	cmp	r3, r2
1a00114a:	d903      	bls.n	1a001154 <Chip_Clock_EnableCrystal+0x44>
		OldCrystalConfig |= 4;	/* Set high frequency mode */
1a00114c:	687b      	ldr	r3, [r7, #4]
1a00114e:	f043 0304 	orr.w	r3, r3, #4
1a001152:	607b      	str	r3, [r7, #4]

	}
	LPC_CGU->XTAL_OSC_CTRL = OldCrystalConfig;
1a001154:	4a07      	ldr	r2, [pc, #28]	@ (1a001174 <Chip_Clock_EnableCrystal+0x64>)
1a001156:	687b      	ldr	r3, [r7, #4]
1a001158:	6193      	str	r3, [r2, #24]

	/* Delay for 250uSec */
	while(delay--) {}
1a00115a:	bf00      	nop
1a00115c:	683b      	ldr	r3, [r7, #0]
1a00115e:	1e5a      	subs	r2, r3, #1
1a001160:	603a      	str	r2, [r7, #0]
1a001162:	2b00      	cmp	r3, #0
1a001164:	d1fa      	bne.n	1a00115c <Chip_Clock_EnableCrystal+0x4c>
}
1a001166:	bf00      	nop
1a001168:	bf00      	nop
1a00116a:	370c      	adds	r7, #12
1a00116c:	46bd      	mov	sp, r7
1a00116e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001172:	4770      	bx	lr
1a001174:	40050000 	.word	0x40050000
1a001178:	1a0018e0 	.word	0x1a0018e0
1a00117c:	01312cff 	.word	0x01312cff

1a001180 <Chip_Clock_CalcMainPLLValue>:

/* Calculate the Main PLL div values */
int Chip_Clock_CalcMainPLLValue(uint32_t freq, PLL_PARAM_T *ppll)
{
1a001180:	b580      	push	{r7, lr}
1a001182:	b082      	sub	sp, #8
1a001184:	af00      	add	r7, sp, #0
1a001186:	6078      	str	r0, [r7, #4]
1a001188:	6039      	str	r1, [r7, #0]
	ppll->fin = Chip_Clock_GetClockInputHz(ppll->srcin);
1a00118a:	683b      	ldr	r3, [r7, #0]
1a00118c:	791b      	ldrb	r3, [r3, #4]
1a00118e:	4618      	mov	r0, r3
1a001190:	f000 f8fc 	bl	1a00138c <Chip_Clock_GetClockInputHz>
1a001194:	4602      	mov	r2, r0
1a001196:	683b      	ldr	r3, [r7, #0]
1a001198:	615a      	str	r2, [r3, #20]

	/* Do sanity check on frequency */
	if (freq > MAX_CLOCK_FREQ || freq < (PLL_MIN_CCO_FREQ / 16) || !ppll->fin) {
1a00119a:	687b      	ldr	r3, [r7, #4]
1a00119c:	4a2b      	ldr	r2, [pc, #172]	@ (1a00124c <Chip_Clock_CalcMainPLLValue+0xcc>)
1a00119e:	4293      	cmp	r3, r2
1a0011a0:	d807      	bhi.n	1a0011b2 <Chip_Clock_CalcMainPLLValue+0x32>
1a0011a2:	687b      	ldr	r3, [r7, #4]
1a0011a4:	4a2a      	ldr	r2, [pc, #168]	@ (1a001250 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a0011a6:	4293      	cmp	r3, r2
1a0011a8:	d903      	bls.n	1a0011b2 <Chip_Clock_CalcMainPLLValue+0x32>
1a0011aa:	683b      	ldr	r3, [r7, #0]
1a0011ac:	695b      	ldr	r3, [r3, #20]
1a0011ae:	2b00      	cmp	r3, #0
1a0011b0:	d102      	bne.n	1a0011b8 <Chip_Clock_CalcMainPLLValue+0x38>
		return -1;
1a0011b2:	f04f 33ff 	mov.w	r3, #4294967295
1a0011b6:	e044      	b.n	1a001242 <Chip_Clock_CalcMainPLLValue+0xc2>
	}

	ppll->ctrl = 1 << 7; /* Enable direct mode [If possible] */
1a0011b8:	683b      	ldr	r3, [r7, #0]
1a0011ba:	2280      	movs	r2, #128	@ 0x80
1a0011bc:	601a      	str	r2, [r3, #0]
	ppll->nsel = 0;
1a0011be:	683b      	ldr	r3, [r7, #0]
1a0011c0:	2200      	movs	r2, #0
1a0011c2:	609a      	str	r2, [r3, #8]
	ppll->psel = 0;
1a0011c4:	683b      	ldr	r3, [r7, #0]
1a0011c6:	2200      	movs	r2, #0
1a0011c8:	60da      	str	r2, [r3, #12]
	ppll->msel = freq / ppll->fin;
1a0011ca:	683b      	ldr	r3, [r7, #0]
1a0011cc:	695b      	ldr	r3, [r3, #20]
1a0011ce:	687a      	ldr	r2, [r7, #4]
1a0011d0:	fbb2 f3f3 	udiv	r3, r2, r3
1a0011d4:	461a      	mov	r2, r3
1a0011d6:	683b      	ldr	r3, [r7, #0]
1a0011d8:	611a      	str	r2, [r3, #16]

	if (freq < PLL_MIN_CCO_FREQ || ppll->msel * ppll->fin != freq) {
1a0011da:	687b      	ldr	r3, [r7, #4]
1a0011dc:	4a1d      	ldr	r2, [pc, #116]	@ (1a001254 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a0011de:	4293      	cmp	r3, r2
1a0011e0:	d909      	bls.n	1a0011f6 <Chip_Clock_CalcMainPLLValue+0x76>
1a0011e2:	683b      	ldr	r3, [r7, #0]
1a0011e4:	691b      	ldr	r3, [r3, #16]
1a0011e6:	461a      	mov	r2, r3
1a0011e8:	683b      	ldr	r3, [r7, #0]
1a0011ea:	695b      	ldr	r3, [r3, #20]
1a0011ec:	fb02 f303 	mul.w	r3, r2, r3
1a0011f0:	687a      	ldr	r2, [r7, #4]
1a0011f2:	429a      	cmp	r2, r3
1a0011f4:	d00f      	beq.n	1a001216 <Chip_Clock_CalcMainPLLValue+0x96>
		pll_get_frac(freq, ppll);
1a0011f6:	6839      	ldr	r1, [r7, #0]
1a0011f8:	6878      	ldr	r0, [r7, #4]
1a0011fa:	f7ff fe61 	bl	1a000ec0 <pll_get_frac>
		if (!ppll->nsel) {
1a0011fe:	683b      	ldr	r3, [r7, #0]
1a001200:	689b      	ldr	r3, [r3, #8]
1a001202:	2b00      	cmp	r3, #0
1a001204:	d102      	bne.n	1a00120c <Chip_Clock_CalcMainPLLValue+0x8c>
			return -1;
1a001206:	f04f 33ff 	mov.w	r3, #4294967295
1a00120a:	e01a      	b.n	1a001242 <Chip_Clock_CalcMainPLLValue+0xc2>
		}
		ppll->nsel --;
1a00120c:	683b      	ldr	r3, [r7, #0]
1a00120e:	689b      	ldr	r3, [r3, #8]
1a001210:	1e5a      	subs	r2, r3, #1
1a001212:	683b      	ldr	r3, [r7, #0]
1a001214:	609a      	str	r2, [r3, #8]
	}

	if (ppll->msel == 0) {
1a001216:	683b      	ldr	r3, [r7, #0]
1a001218:	691b      	ldr	r3, [r3, #16]
1a00121a:	2b00      	cmp	r3, #0
1a00121c:	d102      	bne.n	1a001224 <Chip_Clock_CalcMainPLLValue+0xa4>
		return - 1;
1a00121e:	f04f 33ff 	mov.w	r3, #4294967295
1a001222:	e00e      	b.n	1a001242 <Chip_Clock_CalcMainPLLValue+0xc2>
	}

	if (ppll->psel) {
1a001224:	683b      	ldr	r3, [r7, #0]
1a001226:	68db      	ldr	r3, [r3, #12]
1a001228:	2b00      	cmp	r3, #0
1a00122a:	d004      	beq.n	1a001236 <Chip_Clock_CalcMainPLLValue+0xb6>
		ppll->psel --;
1a00122c:	683b      	ldr	r3, [r7, #0]
1a00122e:	68db      	ldr	r3, [r3, #12]
1a001230:	1e5a      	subs	r2, r3, #1
1a001232:	683b      	ldr	r3, [r7, #0]
1a001234:	60da      	str	r2, [r3, #12]
	}

	ppll->msel --;
1a001236:	683b      	ldr	r3, [r7, #0]
1a001238:	691b      	ldr	r3, [r3, #16]
1a00123a:	1e5a      	subs	r2, r3, #1
1a00123c:	683b      	ldr	r3, [r7, #0]
1a00123e:	611a      	str	r2, [r3, #16]

	return 0;
1a001240:	2300      	movs	r3, #0
}
1a001242:	4618      	mov	r0, r3
1a001244:	3708      	adds	r7, #8
1a001246:	46bd      	mov	sp, r7
1a001248:	bd80      	pop	{r7, pc}
1a00124a:	bf00      	nop
1a00124c:	0c28cb00 	.word	0x0c28cb00
1a001250:	0094c5ef 	.word	0x0094c5ef
1a001254:	094c5eff 	.word	0x094c5eff

1a001258 <Chip_Clock_GetMainPLLHz>:
	return freq;
}

/* Returns the frequency of the main PLL */
uint32_t Chip_Clock_GetMainPLLHz(void)
{
1a001258:	b580      	push	{r7, lr}
1a00125a:	b08c      	sub	sp, #48	@ 0x30
1a00125c:	af00      	add	r7, sp, #0
	uint32_t PLLReg = LPC_CGU->PLL1_CTRL;
1a00125e:	4b2b      	ldr	r3, [pc, #172]	@ (1a00130c <Chip_Clock_GetMainPLLHz+0xb4>)
1a001260:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
1a001262:	62fb      	str	r3, [r7, #44]	@ 0x2c
	uint32_t freq = Chip_Clock_GetClockInputHz((CHIP_CGU_CLKIN_T) ((PLLReg >> 24) & 0xF));
1a001264:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a001266:	0e1b      	lsrs	r3, r3, #24
1a001268:	b2db      	uxtb	r3, r3
1a00126a:	f003 030f 	and.w	r3, r3, #15
1a00126e:	b2db      	uxtb	r3, r3
1a001270:	4618      	mov	r0, r3
1a001272:	f000 f88b 	bl	1a00138c <Chip_Clock_GetClockInputHz>
1a001276:	62b8      	str	r0, [r7, #40]	@ 0x28
	uint32_t msel, nsel, psel, direct, fbsel;
	uint32_t m, n, p;
	const uint8_t ptab[] = {1, 2, 4, 8};
1a001278:	4b25      	ldr	r3, [pc, #148]	@ (1a001310 <Chip_Clock_GetMainPLLHz+0xb8>)
1a00127a:	607b      	str	r3, [r7, #4]

	/* No lock? */
	if (!(LPC_CGU->PLL1_STAT & 1)) {
1a00127c:	4b23      	ldr	r3, [pc, #140]	@ (1a00130c <Chip_Clock_GetMainPLLHz+0xb4>)
1a00127e:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
1a001280:	f003 0301 	and.w	r3, r3, #1
1a001284:	2b00      	cmp	r3, #0
1a001286:	d101      	bne.n	1a00128c <Chip_Clock_GetMainPLLHz+0x34>
		return 0;
1a001288:	2300      	movs	r3, #0
1a00128a:	e03b      	b.n	1a001304 <Chip_Clock_GetMainPLLHz+0xac>
	}

	msel = (PLLReg >> 16) & 0xFF;
1a00128c:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a00128e:	0c1b      	lsrs	r3, r3, #16
1a001290:	b2db      	uxtb	r3, r3
1a001292:	627b      	str	r3, [r7, #36]	@ 0x24
	nsel = (PLLReg >> 12) & 0x3;
1a001294:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a001296:	0b1b      	lsrs	r3, r3, #12
1a001298:	f003 0303 	and.w	r3, r3, #3
1a00129c:	623b      	str	r3, [r7, #32]
	psel = (PLLReg >> 8) & 0x3;
1a00129e:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a0012a0:	0a1b      	lsrs	r3, r3, #8
1a0012a2:	f003 0303 	and.w	r3, r3, #3
1a0012a6:	61fb      	str	r3, [r7, #28]
	direct = (PLLReg >> 7) & 0x1;
1a0012a8:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a0012aa:	09db      	lsrs	r3, r3, #7
1a0012ac:	f003 0301 	and.w	r3, r3, #1
1a0012b0:	61bb      	str	r3, [r7, #24]
	fbsel = (PLLReg >> 6) & 0x1;
1a0012b2:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a0012b4:	099b      	lsrs	r3, r3, #6
1a0012b6:	f003 0301 	and.w	r3, r3, #1
1a0012ba:	617b      	str	r3, [r7, #20]

	m = msel + 1;
1a0012bc:	6a7b      	ldr	r3, [r7, #36]	@ 0x24
1a0012be:	3301      	adds	r3, #1
1a0012c0:	613b      	str	r3, [r7, #16]
	n = nsel + 1;
1a0012c2:	6a3b      	ldr	r3, [r7, #32]
1a0012c4:	3301      	adds	r3, #1
1a0012c6:	60fb      	str	r3, [r7, #12]
	p = ptab[psel];
1a0012c8:	1d3a      	adds	r2, r7, #4
1a0012ca:	69fb      	ldr	r3, [r7, #28]
1a0012cc:	4413      	add	r3, r2
1a0012ce:	781b      	ldrb	r3, [r3, #0]
1a0012d0:	60bb      	str	r3, [r7, #8]

	if (direct || fbsel) {
1a0012d2:	69bb      	ldr	r3, [r7, #24]
1a0012d4:	2b00      	cmp	r3, #0
1a0012d6:	d102      	bne.n	1a0012de <Chip_Clock_GetMainPLLHz+0x86>
1a0012d8:	697b      	ldr	r3, [r7, #20]
1a0012da:	2b00      	cmp	r3, #0
1a0012dc:	d007      	beq.n	1a0012ee <Chip_Clock_GetMainPLLHz+0x96>
		return m * (freq / n);
1a0012de:	6aba      	ldr	r2, [r7, #40]	@ 0x28
1a0012e0:	68fb      	ldr	r3, [r7, #12]
1a0012e2:	fbb2 f3f3 	udiv	r3, r2, r3
1a0012e6:	693a      	ldr	r2, [r7, #16]
1a0012e8:	fb02 f303 	mul.w	r3, r2, r3
1a0012ec:	e00a      	b.n	1a001304 <Chip_Clock_GetMainPLLHz+0xac>
	}

	return (m / (2 * p)) * (freq / n);
1a0012ee:	68bb      	ldr	r3, [r7, #8]
1a0012f0:	005b      	lsls	r3, r3, #1
1a0012f2:	693a      	ldr	r2, [r7, #16]
1a0012f4:	fbb2 f3f3 	udiv	r3, r2, r3
1a0012f8:	6ab9      	ldr	r1, [r7, #40]	@ 0x28
1a0012fa:	68fa      	ldr	r2, [r7, #12]
1a0012fc:	fbb1 f2f2 	udiv	r2, r1, r2
1a001300:	fb02 f303 	mul.w	r3, r2, r3
}
1a001304:	4618      	mov	r0, r3
1a001306:	3730      	adds	r7, #48	@ 0x30
1a001308:	46bd      	mov	sp, r7
1a00130a:	bd80      	pop	{r7, pc}
1a00130c:	40050000 	.word	0x40050000
1a001310:	08040201 	.word	0x08040201

1a001314 <Chip_Clock_GetDividerSource>:
	}
}

/* Gets a CGU clock divider source */
CHIP_CGU_CLKIN_T Chip_Clock_GetDividerSource(CHIP_CGU_IDIV_T Divider)
{
1a001314:	b480      	push	{r7}
1a001316:	b085      	sub	sp, #20
1a001318:	af00      	add	r7, sp, #0
1a00131a:	4603      	mov	r3, r0
1a00131c:	71fb      	strb	r3, [r7, #7]
	uint32_t reg = LPC_CGU->IDIV_CTRL[Divider];
1a00131e:	4a0c      	ldr	r2, [pc, #48]	@ (1a001350 <Chip_Clock_GetDividerSource+0x3c>)
1a001320:	79fb      	ldrb	r3, [r7, #7]
1a001322:	3312      	adds	r3, #18
1a001324:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001328:	60fb      	str	r3, [r7, #12]

	if (reg & 1) {	/* divider is powered down */
1a00132a:	68fb      	ldr	r3, [r7, #12]
1a00132c:	f003 0301 	and.w	r3, r3, #1
1a001330:	2b00      	cmp	r3, #0
1a001332:	d001      	beq.n	1a001338 <Chip_Clock_GetDividerSource+0x24>
		return CLKINPUT_PD;
1a001334:	2311      	movs	r3, #17
1a001336:	e005      	b.n	1a001344 <Chip_Clock_GetDividerSource+0x30>
	}

	return (CHIP_CGU_CLKIN_T) ((reg >> 24) & 0x1F);
1a001338:	68fb      	ldr	r3, [r7, #12]
1a00133a:	0e1b      	lsrs	r3, r3, #24
1a00133c:	b2db      	uxtb	r3, r3
1a00133e:	f003 031f 	and.w	r3, r3, #31
1a001342:	b2db      	uxtb	r3, r3
}
1a001344:	4618      	mov	r0, r3
1a001346:	3714      	adds	r7, #20
1a001348:	46bd      	mov	sp, r7
1a00134a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00134e:	4770      	bx	lr
1a001350:	40050000 	.word	0x40050000

1a001354 <Chip_Clock_GetDividerDivisor>:

/* Gets a CGU clock divider divisor */
uint32_t Chip_Clock_GetDividerDivisor(CHIP_CGU_IDIV_T Divider)
{
1a001354:	b480      	push	{r7}
1a001356:	b083      	sub	sp, #12
1a001358:	af00      	add	r7, sp, #0
1a00135a:	4603      	mov	r3, r0
1a00135c:	71fb      	strb	r3, [r7, #7]
	return (CHIP_CGU_CLKIN_T) ((LPC_CGU->IDIV_CTRL[Divider] >> 2) & CHIP_CGU_IDIV_MASK(Divider));
1a00135e:	4a09      	ldr	r2, [pc, #36]	@ (1a001384 <Chip_Clock_GetDividerDivisor+0x30>)
1a001360:	79fb      	ldrb	r3, [r7, #7]
1a001362:	3312      	adds	r3, #18
1a001364:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001368:	089b      	lsrs	r3, r3, #2
1a00136a:	b2da      	uxtb	r2, r3
1a00136c:	79fb      	ldrb	r3, [r7, #7]
1a00136e:	4906      	ldr	r1, [pc, #24]	@ (1a001388 <Chip_Clock_GetDividerDivisor+0x34>)
1a001370:	5ccb      	ldrb	r3, [r1, r3]
1a001372:	4013      	ands	r3, r2
1a001374:	b2db      	uxtb	r3, r3
}
1a001376:	4618      	mov	r0, r3
1a001378:	370c      	adds	r7, #12
1a00137a:	46bd      	mov	sp, r7
1a00137c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001380:	4770      	bx	lr
1a001382:	bf00      	nop
1a001384:	40050000 	.word	0x40050000
1a001388:	1a001950 	.word	0x1a001950

1a00138c <Chip_Clock_GetClockInputHz>:

/* Returns the frequency of the specified input clock source */
uint32_t Chip_Clock_GetClockInputHz(CHIP_CGU_CLKIN_T input)
{
1a00138c:	b580      	push	{r7, lr}
1a00138e:	b084      	sub	sp, #16
1a001390:	af00      	add	r7, sp, #0
1a001392:	4603      	mov	r3, r0
1a001394:	71fb      	strb	r3, [r7, #7]
	uint32_t rate = 0;
1a001396:	2300      	movs	r3, #0
1a001398:	60fb      	str	r3, [r7, #12]

	switch (input) {
1a00139a:	79fb      	ldrb	r3, [r7, #7]
1a00139c:	2b11      	cmp	r3, #17
1a00139e:	d87f      	bhi.n	1a0014a0 <Chip_Clock_GetClockInputHz+0x114>
1a0013a0:	a201      	add	r2, pc, #4	@ (adr r2, 1a0013a8 <Chip_Clock_GetClockInputHz+0x1c>)
1a0013a2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a0013a6:	bf00      	nop
1a0013a8:	1a0013f1 	.word	0x1a0013f1
1a0013ac:	1a0013f9 	.word	0x1a0013f9
1a0013b0:	1a0013ff 	.word	0x1a0013ff
1a0013b4:	1a001413 	.word	0x1a001413
1a0013b8:	1a00142d 	.word	0x1a00142d
1a0013bc:	1a0014a1 	.word	0x1a0014a1
1a0013c0:	1a001435 	.word	0x1a001435
1a0013c4:	1a00143d 	.word	0x1a00143d
1a0013c8:	1a001445 	.word	0x1a001445
1a0013cc:	1a00144d 	.word	0x1a00144d
1a0013d0:	1a0014a1 	.word	0x1a0014a1
1a0013d4:	1a0014a1 	.word	0x1a0014a1
1a0013d8:	1a001455 	.word	0x1a001455
1a0013dc:	1a001463 	.word	0x1a001463
1a0013e0:	1a001471 	.word	0x1a001471
1a0013e4:	1a00147f 	.word	0x1a00147f
1a0013e8:	1a00148d 	.word	0x1a00148d
1a0013ec:	1a00149b 	.word	0x1a00149b
	case CLKIN_32K:
		rate = CRYSTAL_32K_FREQ_IN;
1a0013f0:	f44f 4300 	mov.w	r3, #32768	@ 0x8000
1a0013f4:	60fb      	str	r3, [r7, #12]
		break;
1a0013f6:	e056      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IRC:
		rate = CGU_IRC_FREQ;
1a0013f8:	4b2d      	ldr	r3, [pc, #180]	@ (1a0014b0 <Chip_Clock_GetClockInputHz+0x124>)
1a0013fa:	60fb      	str	r3, [r7, #12]
		break;
1a0013fc:	e053      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_ENET_RX:
		if ((LPC_CREG->CREG6 & 0x07) != 0x4) {
1a0013fe:	4b2d      	ldr	r3, [pc, #180]	@ (1a0014b4 <Chip_Clock_GetClockInputHz+0x128>)
1a001400:	f8d3 312c 	ldr.w	r3, [r3, #300]	@ 0x12c
1a001404:	f003 0307 	and.w	r3, r3, #7
1a001408:	2b04      	cmp	r3, #4
1a00140a:	d04b      	beq.n	1a0014a4 <Chip_Clock_GetClockInputHz+0x118>
			/* MII mode requires 25MHz clock */
			rate = 25000000;
1a00140c:	4b2a      	ldr	r3, [pc, #168]	@ (1a0014b8 <Chip_Clock_GetClockInputHz+0x12c>)
1a00140e:	60fb      	str	r3, [r7, #12]
		}
		break;
1a001410:	e048      	b.n	1a0014a4 <Chip_Clock_GetClockInputHz+0x118>

	case CLKIN_ENET_TX:
		if ((LPC_CREG->CREG6 & 0x07) != 0x4) {
1a001412:	4b28      	ldr	r3, [pc, #160]	@ (1a0014b4 <Chip_Clock_GetClockInputHz+0x128>)
1a001414:	f8d3 312c 	ldr.w	r3, [r3, #300]	@ 0x12c
1a001418:	f003 0307 	and.w	r3, r3, #7
1a00141c:	2b04      	cmp	r3, #4
1a00141e:	d002      	beq.n	1a001426 <Chip_Clock_GetClockInputHz+0x9a>
			rate = 25000000; /* MII uses 25 MHz */
1a001420:	4b25      	ldr	r3, [pc, #148]	@ (1a0014b8 <Chip_Clock_GetClockInputHz+0x12c>)
1a001422:	60fb      	str	r3, [r7, #12]
		} else {
			rate = 50000000; /* RMII uses 50 MHz */
		}
		break;
1a001424:	e03f      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>
			rate = 50000000; /* RMII uses 50 MHz */
1a001426:	4b25      	ldr	r3, [pc, #148]	@ (1a0014bc <Chip_Clock_GetClockInputHz+0x130>)
1a001428:	60fb      	str	r3, [r7, #12]
		break;
1a00142a:	e03c      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_CLKIN:
		rate = ExtRateIn;
1a00142c:	4b24      	ldr	r3, [pc, #144]	@ (1a0014c0 <Chip_Clock_GetClockInputHz+0x134>)
1a00142e:	681b      	ldr	r3, [r3, #0]
1a001430:	60fb      	str	r3, [r7, #12]
		break;
1a001432:	e038      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_CRYSTAL:
		rate = OscRateIn;
1a001434:	4b23      	ldr	r3, [pc, #140]	@ (1a0014c4 <Chip_Clock_GetClockInputHz+0x138>)
1a001436:	681b      	ldr	r3, [r3, #0]
1a001438:	60fb      	str	r3, [r7, #12]
		break;
1a00143a:	e034      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_USBPLL:
		rate = audio_usb_pll_freq[CGU_USB_PLL];
1a00143c:	4b22      	ldr	r3, [pc, #136]	@ (1a0014c8 <Chip_Clock_GetClockInputHz+0x13c>)
1a00143e:	681b      	ldr	r3, [r3, #0]
1a001440:	60fb      	str	r3, [r7, #12]
		break;
1a001442:	e030      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_AUDIOPLL:
		rate = audio_usb_pll_freq[CGU_AUDIO_PLL];
1a001444:	4b20      	ldr	r3, [pc, #128]	@ (1a0014c8 <Chip_Clock_GetClockInputHz+0x13c>)
1a001446:	685b      	ldr	r3, [r3, #4]
1a001448:	60fb      	str	r3, [r7, #12]
		break;
1a00144a:	e02c      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_MAINPLL:
		rate = Chip_Clock_GetMainPLLHz();
1a00144c:	f7ff ff04 	bl	1a001258 <Chip_Clock_GetMainPLLHz>
1a001450:	60f8      	str	r0, [r7, #12]
		break;
1a001452:	e028      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVA:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_A);
1a001454:	79fb      	ldrb	r3, [r7, #7]
1a001456:	2100      	movs	r1, #0
1a001458:	4618      	mov	r0, r3
1a00145a:	f7ff fdf1 	bl	1a001040 <Chip_Clock_GetDivRate>
1a00145e:	60f8      	str	r0, [r7, #12]
		break;
1a001460:	e021      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVB:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_B);
1a001462:	79fb      	ldrb	r3, [r7, #7]
1a001464:	2101      	movs	r1, #1
1a001466:	4618      	mov	r0, r3
1a001468:	f7ff fdea 	bl	1a001040 <Chip_Clock_GetDivRate>
1a00146c:	60f8      	str	r0, [r7, #12]
		break;
1a00146e:	e01a      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVC:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_C);
1a001470:	79fb      	ldrb	r3, [r7, #7]
1a001472:	2102      	movs	r1, #2
1a001474:	4618      	mov	r0, r3
1a001476:	f7ff fde3 	bl	1a001040 <Chip_Clock_GetDivRate>
1a00147a:	60f8      	str	r0, [r7, #12]
		break;
1a00147c:	e013      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVD:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_D);
1a00147e:	79fb      	ldrb	r3, [r7, #7]
1a001480:	2103      	movs	r1, #3
1a001482:	4618      	mov	r0, r3
1a001484:	f7ff fddc 	bl	1a001040 <Chip_Clock_GetDivRate>
1a001488:	60f8      	str	r0, [r7, #12]
		break;
1a00148a:	e00c      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKIN_IDIVE:
		rate = Chip_Clock_GetDivRate(input, CLK_IDIV_E);
1a00148c:	79fb      	ldrb	r3, [r7, #7]
1a00148e:	2104      	movs	r1, #4
1a001490:	4618      	mov	r0, r3
1a001492:	f7ff fdd5 	bl	1a001040 <Chip_Clock_GetDivRate>
1a001496:	60f8      	str	r0, [r7, #12]
		break;
1a001498:	e005      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	case CLKINPUT_PD:
		rate = 0;
1a00149a:	2300      	movs	r3, #0
1a00149c:	60fb      	str	r3, [r7, #12]
		break;
1a00149e:	e002      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>

	default:
		break;
1a0014a0:	bf00      	nop
1a0014a2:	e000      	b.n	1a0014a6 <Chip_Clock_GetClockInputHz+0x11a>
		break;
1a0014a4:	bf00      	nop
	}

	return rate;
1a0014a6:	68fb      	ldr	r3, [r7, #12]
}
1a0014a8:	4618      	mov	r0, r3
1a0014aa:	3710      	adds	r7, #16
1a0014ac:	46bd      	mov	sp, r7
1a0014ae:	bd80      	pop	{r7, pc}
1a0014b0:	00b71b00 	.word	0x00b71b00
1a0014b4:	40043000 	.word	0x40043000
1a0014b8:	017d7840 	.word	0x017d7840
1a0014bc:	02faf080 	.word	0x02faf080
1a0014c0:	1a0018dc 	.word	0x1a0018dc
1a0014c4:	1a0018e0 	.word	0x1a0018e0
1a0014c8:	100000d8 	.word	0x100000d8

1a0014cc <Chip_Clock_GetBaseClocktHz>:

/* Returns the frequency of the specified base clock source */
uint32_t Chip_Clock_GetBaseClocktHz(CHIP_CGU_BASE_CLK_T clock)
{
1a0014cc:	b580      	push	{r7, lr}
1a0014ce:	b082      	sub	sp, #8
1a0014d0:	af00      	add	r7, sp, #0
1a0014d2:	4603      	mov	r3, r0
1a0014d4:	71fb      	strb	r3, [r7, #7]
	return Chip_Clock_GetClockInputHz(Chip_Clock_GetBaseClock(clock));
1a0014d6:	79fb      	ldrb	r3, [r7, #7]
1a0014d8:	4618      	mov	r0, r3
1a0014da:	f000 f857 	bl	1a00158c <Chip_Clock_GetBaseClock>
1a0014de:	4603      	mov	r3, r0
1a0014e0:	4618      	mov	r0, r3
1a0014e2:	f7ff ff53 	bl	1a00138c <Chip_Clock_GetClockInputHz>
1a0014e6:	4603      	mov	r3, r0
}
1a0014e8:	4618      	mov	r0, r3
1a0014ea:	3708      	adds	r7, #8
1a0014ec:	46bd      	mov	sp, r7
1a0014ee:	bd80      	pop	{r7, pc}

1a0014f0 <Chip_Clock_SetBaseClock>:

/* Sets a CGU Base Clock clock source */
void Chip_Clock_SetBaseClock(CHIP_CGU_BASE_CLK_T BaseClock, CHIP_CGU_CLKIN_T Input, bool autoblocken, bool powerdn)
{
1a0014f0:	b490      	push	{r4, r7}
1a0014f2:	b084      	sub	sp, #16
1a0014f4:	af00      	add	r7, sp, #0
1a0014f6:	4604      	mov	r4, r0
1a0014f8:	4608      	mov	r0, r1
1a0014fa:	4611      	mov	r1, r2
1a0014fc:	461a      	mov	r2, r3
1a0014fe:	4623      	mov	r3, r4
1a001500:	71fb      	strb	r3, [r7, #7]
1a001502:	4603      	mov	r3, r0
1a001504:	71bb      	strb	r3, [r7, #6]
1a001506:	460b      	mov	r3, r1
1a001508:	717b      	strb	r3, [r7, #5]
1a00150a:	4613      	mov	r3, r2
1a00150c:	713b      	strb	r3, [r7, #4]
	uint32_t reg = LPC_CGU->BASE_CLK[BaseClock];
1a00150e:	4a1d      	ldr	r2, [pc, #116]	@ (1a001584 <Chip_Clock_SetBaseClock+0x94>)
1a001510:	79fb      	ldrb	r3, [r7, #7]
1a001512:	3316      	adds	r3, #22
1a001514:	009b      	lsls	r3, r3, #2
1a001516:	4413      	add	r3, r2
1a001518:	685b      	ldr	r3, [r3, #4]
1a00151a:	60fb      	str	r3, [r7, #12]

	if (BaseClock < CLK_BASE_NONE) {
1a00151c:	79fb      	ldrb	r3, [r7, #7]
1a00151e:	2b1b      	cmp	r3, #27
1a001520:	d821      	bhi.n	1a001566 <Chip_Clock_SetBaseClock+0x76>
		if (Input != CLKINPUT_PD) {
1a001522:	79bb      	ldrb	r3, [r7, #6]
1a001524:	2b11      	cmp	r3, #17
1a001526:	d027      	beq.n	1a001578 <Chip_Clock_SetBaseClock+0x88>
			/* Mask off fields we plan to update */
			reg &= ~((0x1F << 24) | 1 | (1 << 11));
1a001528:	68fa      	ldr	r2, [r7, #12]
1a00152a:	4b17      	ldr	r3, [pc, #92]	@ (1a001588 <Chip_Clock_SetBaseClock+0x98>)
1a00152c:	4013      	ands	r3, r2
1a00152e:	60fb      	str	r3, [r7, #12]

			if (autoblocken) {
1a001530:	797b      	ldrb	r3, [r7, #5]
1a001532:	2b00      	cmp	r3, #0
1a001534:	d003      	beq.n	1a00153e <Chip_Clock_SetBaseClock+0x4e>
				reg |= (1 << 11);
1a001536:	68fb      	ldr	r3, [r7, #12]
1a001538:	f443 6300 	orr.w	r3, r3, #2048	@ 0x800
1a00153c:	60fb      	str	r3, [r7, #12]
			}
			if (powerdn) {
1a00153e:	793b      	ldrb	r3, [r7, #4]
1a001540:	2b00      	cmp	r3, #0
1a001542:	d003      	beq.n	1a00154c <Chip_Clock_SetBaseClock+0x5c>
				reg |= (1 << 0);
1a001544:	68fb      	ldr	r3, [r7, #12]
1a001546:	f043 0301 	orr.w	r3, r3, #1
1a00154a:	60fb      	str	r3, [r7, #12]
			}

			/* Set clock source */
			reg |= (Input << 24);
1a00154c:	79bb      	ldrb	r3, [r7, #6]
1a00154e:	061b      	lsls	r3, r3, #24
1a001550:	68fa      	ldr	r2, [r7, #12]
1a001552:	4313      	orrs	r3, r2
1a001554:	60fb      	str	r3, [r7, #12]

			LPC_CGU->BASE_CLK[BaseClock] = reg;
1a001556:	4a0b      	ldr	r2, [pc, #44]	@ (1a001584 <Chip_Clock_SetBaseClock+0x94>)
1a001558:	79fb      	ldrb	r3, [r7, #7]
1a00155a:	3316      	adds	r3, #22
1a00155c:	009b      	lsls	r3, r3, #2
1a00155e:	4413      	add	r3, r2
1a001560:	68fa      	ldr	r2, [r7, #12]
1a001562:	605a      	str	r2, [r3, #4]
		}
	}
	else {
		LPC_CGU->BASE_CLK[BaseClock] = reg | 1;	/* Power down this base clock */
	}
}
1a001564:	e008      	b.n	1a001578 <Chip_Clock_SetBaseClock+0x88>
		LPC_CGU->BASE_CLK[BaseClock] = reg | 1;	/* Power down this base clock */
1a001566:	4907      	ldr	r1, [pc, #28]	@ (1a001584 <Chip_Clock_SetBaseClock+0x94>)
1a001568:	79fb      	ldrb	r3, [r7, #7]
1a00156a:	68fa      	ldr	r2, [r7, #12]
1a00156c:	f042 0201 	orr.w	r2, r2, #1
1a001570:	3316      	adds	r3, #22
1a001572:	009b      	lsls	r3, r3, #2
1a001574:	440b      	add	r3, r1
1a001576:	605a      	str	r2, [r3, #4]
}
1a001578:	bf00      	nop
1a00157a:	3710      	adds	r7, #16
1a00157c:	46bd      	mov	sp, r7
1a00157e:	bc90      	pop	{r4, r7}
1a001580:	4770      	bx	lr
1a001582:	bf00      	nop
1a001584:	40050000 	.word	0x40050000
1a001588:	e0fff7fe 	.word	0xe0fff7fe

1a00158c <Chip_Clock_GetBaseClock>:
	return enabled;
}

/* Gets a CGU Base Clock clock source */
CHIP_CGU_CLKIN_T Chip_Clock_GetBaseClock(CHIP_CGU_BASE_CLK_T BaseClock)
{
1a00158c:	b480      	push	{r7}
1a00158e:	b085      	sub	sp, #20
1a001590:	af00      	add	r7, sp, #0
1a001592:	4603      	mov	r3, r0
1a001594:	71fb      	strb	r3, [r7, #7]
	uint32_t reg;

	if (BaseClock >= CLK_BASE_NONE) {
1a001596:	79fb      	ldrb	r3, [r7, #7]
1a001598:	2b1b      	cmp	r3, #27
1a00159a:	d901      	bls.n	1a0015a0 <Chip_Clock_GetBaseClock+0x14>
		return CLKINPUT_PD;
1a00159c:	2311      	movs	r3, #17
1a00159e:	e013      	b.n	1a0015c8 <Chip_Clock_GetBaseClock+0x3c>
	}

	reg = LPC_CGU->BASE_CLK[BaseClock];
1a0015a0:	4a0c      	ldr	r2, [pc, #48]	@ (1a0015d4 <Chip_Clock_GetBaseClock+0x48>)
1a0015a2:	79fb      	ldrb	r3, [r7, #7]
1a0015a4:	3316      	adds	r3, #22
1a0015a6:	009b      	lsls	r3, r3, #2
1a0015a8:	4413      	add	r3, r2
1a0015aa:	685b      	ldr	r3, [r3, #4]
1a0015ac:	60fb      	str	r3, [r7, #12]

	/* base clock is powered down? */
	if (reg & 1) {
1a0015ae:	68fb      	ldr	r3, [r7, #12]
1a0015b0:	f003 0301 	and.w	r3, r3, #1
1a0015b4:	2b00      	cmp	r3, #0
1a0015b6:	d001      	beq.n	1a0015bc <Chip_Clock_GetBaseClock+0x30>
		return CLKINPUT_PD;
1a0015b8:	2311      	movs	r3, #17
1a0015ba:	e005      	b.n	1a0015c8 <Chip_Clock_GetBaseClock+0x3c>
	}

	return (CHIP_CGU_CLKIN_T) ((reg >> 24) & 0x1F);
1a0015bc:	68fb      	ldr	r3, [r7, #12]
1a0015be:	0e1b      	lsrs	r3, r3, #24
1a0015c0:	b2db      	uxtb	r3, r3
1a0015c2:	f003 031f 	and.w	r3, r3, #31
1a0015c6:	b2db      	uxtb	r3, r3
}
1a0015c8:	4618      	mov	r0, r3
1a0015ca:	3714      	adds	r7, #20
1a0015cc:	46bd      	mov	sp, r7
1a0015ce:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015d2:	4770      	bx	lr
1a0015d4:	40050000 	.word	0x40050000

1a0015d8 <Chip_Clock_GetRate>:
	LPC_CCU2->PM = 0;
}

/* Returns a peripheral clock rate */
uint32_t Chip_Clock_GetRate(CHIP_CCU_CLK_T clk)
{
1a0015d8:	b580      	push	{r7, lr}
1a0015da:	b086      	sub	sp, #24
1a0015dc:	af00      	add	r7, sp, #0
1a0015de:	4603      	mov	r3, r0
1a0015e0:	80fb      	strh	r3, [r7, #6]
	CHIP_CGU_BASE_CLK_T baseclk;
	uint32_t reg, div, rate;

	/* Get CCU config register for clock */
	if (clk >= CLK_CCU2_START) {
1a0015e2:	88fb      	ldrh	r3, [r7, #6]
1a0015e4:	f5b3 7fa1 	cmp.w	r3, #322	@ 0x142
1a0015e8:	d308      	bcc.n	1a0015fc <Chip_Clock_GetRate+0x24>
		reg = LPC_CCU2->CLKCCU[clk - CLK_CCU2_START].CFG;
1a0015ea:	4a1b      	ldr	r2, [pc, #108]	@ (1a001658 <Chip_Clock_GetRate+0x80>)
1a0015ec:	88fb      	ldrh	r3, [r7, #6]
1a0015ee:	f5a3 73a1 	sub.w	r3, r3, #322	@ 0x142
1a0015f2:	3320      	adds	r3, #32
1a0015f4:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a0015f8:	617b      	str	r3, [r7, #20]
1a0015fa:	e005      	b.n	1a001608 <Chip_Clock_GetRate+0x30>
	}
	else {
		reg = LPC_CCU1->CLKCCU[clk].CFG;
1a0015fc:	4a17      	ldr	r2, [pc, #92]	@ (1a00165c <Chip_Clock_GetRate+0x84>)
1a0015fe:	88fb      	ldrh	r3, [r7, #6]
1a001600:	3320      	adds	r3, #32
1a001602:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001606:	617b      	str	r3, [r7, #20]
	}

	/* Is the clock enabled? */
	if (reg & 1) {
1a001608:	697b      	ldr	r3, [r7, #20]
1a00160a:	f003 0301 	and.w	r3, r3, #1
1a00160e:	2b00      	cmp	r3, #0
1a001610:	d01b      	beq.n	1a00164a <Chip_Clock_GetRate+0x72>
		/* Get base clock for this peripheral clock */
		baseclk = Chip_Clock_FindBaseClock(clk);
1a001612:	88fb      	ldrh	r3, [r7, #6]
1a001614:	4618      	mov	r0, r3
1a001616:	f7ff fd33 	bl	1a001080 <Chip_Clock_FindBaseClock>
1a00161a:	4603      	mov	r3, r0
1a00161c:	72fb      	strb	r3, [r7, #11]

		/* Get base clock rate */
		rate = Chip_Clock_GetBaseClocktHz(baseclk);
1a00161e:	7afb      	ldrb	r3, [r7, #11]
1a001620:	4618      	mov	r0, r3
1a001622:	f7ff ff53 	bl	1a0014cc <Chip_Clock_GetBaseClocktHz>
1a001626:	60f8      	str	r0, [r7, #12]

		/* Get divider for this clock */
		if (((reg >> 5) & 0x7) == 0) {
1a001628:	697b      	ldr	r3, [r7, #20]
1a00162a:	095b      	lsrs	r3, r3, #5
1a00162c:	f003 0307 	and.w	r3, r3, #7
1a001630:	2b00      	cmp	r3, #0
1a001632:	d102      	bne.n	1a00163a <Chip_Clock_GetRate+0x62>
			div = 1;
1a001634:	2301      	movs	r3, #1
1a001636:	613b      	str	r3, [r7, #16]
1a001638:	e001      	b.n	1a00163e <Chip_Clock_GetRate+0x66>
		}
		else {
			div = 2;/* No other dividers supported */
1a00163a:	2302      	movs	r3, #2
1a00163c:	613b      	str	r3, [r7, #16]

		}
		rate = rate / div;
1a00163e:	68fa      	ldr	r2, [r7, #12]
1a001640:	693b      	ldr	r3, [r7, #16]
1a001642:	fbb2 f3f3 	udiv	r3, r2, r3
1a001646:	60fb      	str	r3, [r7, #12]
1a001648:	e001      	b.n	1a00164e <Chip_Clock_GetRate+0x76>
	}
	else {
		rate = 0;
1a00164a:	2300      	movs	r3, #0
1a00164c:	60fb      	str	r3, [r7, #12]
	}

	return rate;
1a00164e:	68fb      	ldr	r3, [r7, #12]
}
1a001650:	4618      	mov	r0, r3
1a001652:	3718      	adds	r7, #24
1a001654:	46bd      	mov	sp, r7
1a001656:	bd80      	pop	{r7, pc}
1a001658:	40052000 	.word	0x40052000
1a00165c:	40051000 	.word	0x40051000

1a001660 <Chip_Clock_DisableMainPLL>:
 * @return	none
 * Make sure the main PLL is not needed to clock the part before disabling it.
 * Saves power if the main PLL is not needed.
 */
__STATIC_INLINE void Chip_Clock_DisableMainPLL(void)
{
1a001660:	b480      	push	{r7}
1a001662:	af00      	add	r7, sp, #0
	/* power down main PLL */
	LPC_CGU->PLL1_CTRL |= 1;
1a001664:	4b05      	ldr	r3, [pc, #20]	@ (1a00167c <Chip_Clock_DisableMainPLL+0x1c>)
1a001666:	6c5b      	ldr	r3, [r3, #68]	@ 0x44
1a001668:	4a04      	ldr	r2, [pc, #16]	@ (1a00167c <Chip_Clock_DisableMainPLL+0x1c>)
1a00166a:	f043 0301 	orr.w	r3, r3, #1
1a00166e:	6453      	str	r3, [r2, #68]	@ 0x44
}
1a001670:	bf00      	nop
1a001672:	46bd      	mov	sp, r7
1a001674:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001678:	4770      	bx	lr
1a00167a:	bf00      	nop
1a00167c:	40050000 	.word	0x40050000

1a001680 <Chip_Clock_SetupMainPLL>:
 * @param	ppll	: Pointer to pll param structure #PLL_PARAM_T
 * @return	none
 * Make sure the main PLL is enabled.
 */
__STATIC_INLINE void Chip_Clock_SetupMainPLL(const PLL_PARAM_T *ppll)
{
1a001680:	b480      	push	{r7}
1a001682:	b083      	sub	sp, #12
1a001684:	af00      	add	r7, sp, #0
1a001686:	6078      	str	r0, [r7, #4]
	/* power up main PLL */
    LPC_CGU->PLL1_CTRL = ppll->ctrl | ((uint32_t) ppll->srcin << 24) | (ppll->msel << 16) | (ppll->nsel << 12) | (ppll->psel << 8) | ( 1 << 11);
1a001688:	687b      	ldr	r3, [r7, #4]
1a00168a:	681b      	ldr	r3, [r3, #0]
1a00168c:	461a      	mov	r2, r3
1a00168e:	687b      	ldr	r3, [r7, #4]
1a001690:	791b      	ldrb	r3, [r3, #4]
1a001692:	061b      	lsls	r3, r3, #24
1a001694:	431a      	orrs	r2, r3
1a001696:	687b      	ldr	r3, [r7, #4]
1a001698:	691b      	ldr	r3, [r3, #16]
1a00169a:	041b      	lsls	r3, r3, #16
1a00169c:	431a      	orrs	r2, r3
1a00169e:	687b      	ldr	r3, [r7, #4]
1a0016a0:	689b      	ldr	r3, [r3, #8]
1a0016a2:	031b      	lsls	r3, r3, #12
1a0016a4:	431a      	orrs	r2, r3
1a0016a6:	687b      	ldr	r3, [r7, #4]
1a0016a8:	68db      	ldr	r3, [r3, #12]
1a0016aa:	021b      	lsls	r3, r3, #8
1a0016ac:	4313      	orrs	r3, r2
1a0016ae:	4a05      	ldr	r2, [pc, #20]	@ (1a0016c4 <Chip_Clock_SetupMainPLL+0x44>)
1a0016b0:	f443 6300 	orr.w	r3, r3, #2048	@ 0x800
1a0016b4:	6453      	str	r3, [r2, #68]	@ 0x44
}
1a0016b6:	bf00      	nop
1a0016b8:	370c      	adds	r7, #12
1a0016ba:	46bd      	mov	sp, r7
1a0016bc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016c0:	4770      	bx	lr
1a0016c2:	bf00      	nop
1a0016c4:	40050000 	.word	0x40050000

1a0016c8 <Chip_Clock_MainPLLLocked>:
 * @brief	Wait for Main PLL to be locked
 * @return	1 - PLL is LOCKED; 0 - PLL is not locked
 * @note	The main PLL should be locked prior to using it as a clock input for a base clock.
 */
__STATIC_INLINE int Chip_Clock_MainPLLLocked(void)
{
1a0016c8:	b480      	push	{r7}
1a0016ca:	af00      	add	r7, sp, #0
	/* Return true if locked */
	return (LPC_CGU->PLL1_STAT & 1) != 0;
1a0016cc:	4b06      	ldr	r3, [pc, #24]	@ (1a0016e8 <Chip_Clock_MainPLLLocked+0x20>)
1a0016ce:	6c1b      	ldr	r3, [r3, #64]	@ 0x40
1a0016d0:	f003 0301 	and.w	r3, r3, #1
1a0016d4:	2b00      	cmp	r3, #0
1a0016d6:	bf14      	ite	ne
1a0016d8:	2301      	movne	r3, #1
1a0016da:	2300      	moveq	r3, #0
1a0016dc:	b2db      	uxtb	r3, r3
}
1a0016de:	4618      	mov	r0, r3
1a0016e0:	46bd      	mov	sp, r7
1a0016e2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016e6:	4770      	bx	lr
1a0016e8:	40050000 	.word	0x40050000

1a0016ec <Chip_SetupCoreClock>:
/*****************************************************************************
 * Public functions
 ****************************************************************************/
/* Setup Chip Core clock */
void Chip_SetupCoreClock(CHIP_CGU_CLKIN_T clkin, uint32_t core_freq, bool setbase)
{
1a0016ec:	b590      	push	{r4, r7, lr}
1a0016ee:	b08f      	sub	sp, #60	@ 0x3c
1a0016f0:	af00      	add	r7, sp, #0
1a0016f2:	4603      	mov	r3, r0
1a0016f4:	6039      	str	r1, [r7, #0]
1a0016f6:	71fb      	strb	r3, [r7, #7]
1a0016f8:	4613      	mov	r3, r2
1a0016fa:	71bb      	strb	r3, [r7, #6]
	int i;
	volatile uint32_t delay = 500;
1a0016fc:	f44f 73fa 	mov.w	r3, #500	@ 0x1f4
1a001700:	62bb      	str	r3, [r7, #40]	@ 0x28
	uint32_t direct = 0, pdivide = 0;
1a001702:	2300      	movs	r3, #0
1a001704:	633b      	str	r3, [r7, #48]	@ 0x30
1a001706:	2300      	movs	r3, #0
1a001708:	62fb      	str	r3, [r7, #44]	@ 0x2c
	PLL_PARAM_T ppll;

	if (clkin == CLKIN_CRYSTAL) {
1a00170a:	79fb      	ldrb	r3, [r7, #7]
1a00170c:	2b06      	cmp	r3, #6
1a00170e:	d101      	bne.n	1a001714 <Chip_SetupCoreClock+0x28>
		/* Switch main system clocking to crystal */
		Chip_Clock_EnableCrystal();
1a001710:	f7ff fcfe 	bl	1a001110 <Chip_Clock_EnableCrystal>
	}
	Chip_Clock_SetBaseClock(CLK_BASE_MX, clkin, true, false);
1a001714:	79f9      	ldrb	r1, [r7, #7]
1a001716:	2300      	movs	r3, #0
1a001718:	2201      	movs	r2, #1
1a00171a:	2004      	movs	r0, #4
1a00171c:	f7ff fee8 	bl	1a0014f0 <Chip_Clock_SetBaseClock>
	Chip_Clock_DisableMainPLL(); /* Disable PLL */
1a001720:	f7ff ff9e 	bl	1a001660 <Chip_Clock_DisableMainPLL>

	/* Calculate the PLL Parameters */
	ppll.srcin = clkin;
1a001724:	79fb      	ldrb	r3, [r7, #7]
1a001726:	733b      	strb	r3, [r7, #12]
	Chip_Clock_CalcMainPLLValue(core_freq, &ppll);
1a001728:	f107 0308 	add.w	r3, r7, #8
1a00172c:	4619      	mov	r1, r3
1a00172e:	6838      	ldr	r0, [r7, #0]
1a001730:	f7ff fd26 	bl	1a001180 <Chip_Clock_CalcMainPLLValue>

	if (core_freq > 110000000UL) {
1a001734:	683b      	ldr	r3, [r7, #0]
1a001736:	4a3d      	ldr	r2, [pc, #244]	@ (1a00182c <Chip_SetupCoreClock+0x140>)
1a001738:	4293      	cmp	r3, r2
1a00173a:	d917      	bls.n	1a00176c <Chip_SetupCoreClock+0x80>
		if (ppll.ctrl & (1 << 6)) {
1a00173c:	68bb      	ldr	r3, [r7, #8]
1a00173e:	f003 0340 	and.w	r3, r3, #64	@ 0x40
1a001742:	2b00      	cmp	r3, #0
1a001744:	d001      	beq.n	1a00174a <Chip_SetupCoreClock+0x5e>
			while(1);		// to run in integer mode above 110 MHz, you need to use IDIV clock to boot strap CPU to that freq
1a001746:	bf00      	nop
1a001748:	e7fd      	b.n	1a001746 <Chip_SetupCoreClock+0x5a>
		} else if (ppll.ctrl & (1 << 7)){
1a00174a:	68bb      	ldr	r3, [r7, #8]
1a00174c:	f003 0380 	and.w	r3, r3, #128	@ 0x80
1a001750:	2b00      	cmp	r3, #0
1a001752:	d006      	beq.n	1a001762 <Chip_SetupCoreClock+0x76>
			direct = 1;
1a001754:	2301      	movs	r3, #1
1a001756:	633b      	str	r3, [r7, #48]	@ 0x30
			ppll.ctrl &= ~(1 << 7);
1a001758:	68bb      	ldr	r3, [r7, #8]
1a00175a:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
1a00175e:	60bb      	str	r3, [r7, #8]
1a001760:	e004      	b.n	1a00176c <Chip_SetupCoreClock+0x80>
		} else {
			pdivide = 1;
1a001762:	2301      	movs	r3, #1
1a001764:	62fb      	str	r3, [r7, #44]	@ 0x2c
			ppll.psel++;
1a001766:	697b      	ldr	r3, [r7, #20]
1a001768:	3301      	adds	r3, #1
1a00176a:	617b      	str	r3, [r7, #20]
		}
	}

	/* Setup and start the PLL */
	Chip_Clock_SetupMainPLL(&ppll);
1a00176c:	f107 0308 	add.w	r3, r7, #8
1a001770:	4618      	mov	r0, r3
1a001772:	f7ff ff85 	bl	1a001680 <Chip_Clock_SetupMainPLL>

	/* Wait for the PLL to lock */
	while(!Chip_Clock_MainPLLLocked()) {}
1a001776:	bf00      	nop
1a001778:	f7ff ffa6 	bl	1a0016c8 <Chip_Clock_MainPLLLocked>
1a00177c:	4603      	mov	r3, r0
1a00177e:	2b00      	cmp	r3, #0
1a001780:	d0fa      	beq.n	1a001778 <Chip_SetupCoreClock+0x8c>

	/* Set core clock base as PLL1 */
	Chip_Clock_SetBaseClock(CLK_BASE_MX, CLKIN_MAINPLL, true, false);
1a001782:	2300      	movs	r3, #0
1a001784:	2201      	movs	r2, #1
1a001786:	2109      	movs	r1, #9
1a001788:	2004      	movs	r0, #4
1a00178a:	f7ff feb1 	bl	1a0014f0 <Chip_Clock_SetBaseClock>

	if (direct) {
1a00178e:	6b3b      	ldr	r3, [r7, #48]	@ 0x30
1a001790:	2b00      	cmp	r3, #0
1a001792:	d012      	beq.n	1a0017ba <Chip_SetupCoreClock+0xce>
		delay = 1000;
1a001794:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
1a001798:	62bb      	str	r3, [r7, #40]	@ 0x28
		while(delay --){} /* Wait for approx 50 uSec -- for power supply to stabilize*/
1a00179a:	bf00      	nop
1a00179c:	6abb      	ldr	r3, [r7, #40]	@ 0x28
1a00179e:	1e5a      	subs	r2, r3, #1
1a0017a0:	62ba      	str	r2, [r7, #40]	@ 0x28
1a0017a2:	2b00      	cmp	r3, #0
1a0017a4:	d1fa      	bne.n	1a00179c <Chip_SetupCoreClock+0xb0>
		ppll.ctrl |= 1 << 7;
1a0017a6:	68bb      	ldr	r3, [r7, #8]
1a0017a8:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
1a0017ac:	60bb      	str	r3, [r7, #8]
		Chip_Clock_SetupMainPLL(&ppll); /* Set DIRECT to operate at full frequency */
1a0017ae:	f107 0308 	add.w	r3, r7, #8
1a0017b2:	4618      	mov	r0, r3
1a0017b4:	f7ff ff64 	bl	1a001680 <Chip_Clock_SetupMainPLL>
1a0017b8:	e013      	b.n	1a0017e2 <Chip_SetupCoreClock+0xf6>
	} else if (pdivide) {
1a0017ba:	6afb      	ldr	r3, [r7, #44]	@ 0x2c
1a0017bc:	2b00      	cmp	r3, #0
1a0017be:	d010      	beq.n	1a0017e2 <Chip_SetupCoreClock+0xf6>
		delay = 1000;
1a0017c0:	f44f 737a 	mov.w	r3, #1000	@ 0x3e8
1a0017c4:	62bb      	str	r3, [r7, #40]	@ 0x28
		while(delay --){} /* Wait for approx 50 uSec -- for power supply to stabilize */
1a0017c6:	bf00      	nop
1a0017c8:	6abb      	ldr	r3, [r7, #40]	@ 0x28
1a0017ca:	1e5a      	subs	r2, r3, #1
1a0017cc:	62ba      	str	r2, [r7, #40]	@ 0x28
1a0017ce:	2b00      	cmp	r3, #0
1a0017d0:	d1fa      	bne.n	1a0017c8 <Chip_SetupCoreClock+0xdc>
		ppll.psel--;
1a0017d2:	697b      	ldr	r3, [r7, #20]
1a0017d4:	3b01      	subs	r3, #1
1a0017d6:	617b      	str	r3, [r7, #20]
		Chip_Clock_SetupMainPLL(&ppll); /* Set PDIV to operate at full frequency */
1a0017d8:	f107 0308 	add.w	r3, r7, #8
1a0017dc:	4618      	mov	r0, r3
1a0017de:	f7ff ff4f 	bl	1a001680 <Chip_Clock_SetupMainPLL>
	}

	if (setbase) {
1a0017e2:	79bb      	ldrb	r3, [r7, #6]
1a0017e4:	2b00      	cmp	r3, #0
1a0017e6:	d01d      	beq.n	1a001824 <Chip_SetupCoreClock+0x138>
		/* Setup system base clocks and initial states. This won't enable and
		   disable individual clocks, but sets up the base clock sources for
		   each individual peripheral clock. */
		for (i = 0; i < (sizeof(InitClkStates) / sizeof(InitClkStates[0])); i++) {
1a0017e8:	2300      	movs	r3, #0
1a0017ea:	637b      	str	r3, [r7, #52]	@ 0x34
1a0017ec:	e017      	b.n	1a00181e <Chip_SetupCoreClock+0x132>
			Chip_Clock_SetBaseClock(InitClkStates[i].clk, InitClkStates[i].clkin,
1a0017ee:	4a10      	ldr	r2, [pc, #64]	@ (1a001830 <Chip_SetupCoreClock+0x144>)
1a0017f0:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a0017f2:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a0017f6:	4a0e      	ldr	r2, [pc, #56]	@ (1a001830 <Chip_SetupCoreClock+0x144>)
1a0017f8:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a0017fa:	009b      	lsls	r3, r3, #2
1a0017fc:	4413      	add	r3, r2
1a0017fe:	7859      	ldrb	r1, [r3, #1]
									InitClkStates[i].autoblock_enab, InitClkStates[i].powerdn);
1a001800:	4a0b      	ldr	r2, [pc, #44]	@ (1a001830 <Chip_SetupCoreClock+0x144>)
1a001802:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a001804:	009b      	lsls	r3, r3, #2
1a001806:	4413      	add	r3, r2
1a001808:	789a      	ldrb	r2, [r3, #2]
1a00180a:	4c09      	ldr	r4, [pc, #36]	@ (1a001830 <Chip_SetupCoreClock+0x144>)
1a00180c:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a00180e:	009b      	lsls	r3, r3, #2
1a001810:	4423      	add	r3, r4
1a001812:	78db      	ldrb	r3, [r3, #3]
			Chip_Clock_SetBaseClock(InitClkStates[i].clk, InitClkStates[i].clkin,
1a001814:	f7ff fe6c 	bl	1a0014f0 <Chip_Clock_SetBaseClock>
		for (i = 0; i < (sizeof(InitClkStates) / sizeof(InitClkStates[0])); i++) {
1a001818:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a00181a:	3301      	adds	r3, #1
1a00181c:	637b      	str	r3, [r7, #52]	@ 0x34
1a00181e:	6b7b      	ldr	r3, [r7, #52]	@ 0x34
1a001820:	2b11      	cmp	r3, #17
1a001822:	d9e4      	bls.n	1a0017ee <Chip_SetupCoreClock+0x102>
		}
	}
}
1a001824:	bf00      	nop
1a001826:	373c      	adds	r7, #60	@ 0x3c
1a001828:	46bd      	mov	sp, r7
1a00182a:	bd90      	pop	{r4, r7, pc}
1a00182c:	068e7780 	.word	0x068e7780
1a001830:	1a001958 	.word	0x1a001958

1a001834 <memset>:
1a001834:	0783      	lsls	r3, r0, #30
1a001836:	b530      	push	{r4, r5, lr}
1a001838:	d047      	beq.n	1a0018ca <memset+0x96>
1a00183a:	1e54      	subs	r4, r2, #1
1a00183c:	2a00      	cmp	r2, #0
1a00183e:	d03e      	beq.n	1a0018be <memset+0x8a>
1a001840:	b2ca      	uxtb	r2, r1
1a001842:	4603      	mov	r3, r0
1a001844:	e001      	b.n	1a00184a <memset+0x16>
1a001846:	3c01      	subs	r4, #1
1a001848:	d339      	bcc.n	1a0018be <memset+0x8a>
1a00184a:	f803 2b01 	strb.w	r2, [r3], #1
1a00184e:	079d      	lsls	r5, r3, #30
1a001850:	d1f9      	bne.n	1a001846 <memset+0x12>
1a001852:	2c03      	cmp	r4, #3
1a001854:	d92c      	bls.n	1a0018b0 <memset+0x7c>
1a001856:	b2cd      	uxtb	r5, r1
1a001858:	eb05 2505 	add.w	r5, r5, r5, lsl #8
1a00185c:	2c0f      	cmp	r4, #15
1a00185e:	eb05 4505 	add.w	r5, r5, r5, lsl #16
1a001862:	d935      	bls.n	1a0018d0 <memset+0x9c>
1a001864:	f1a4 0210 	sub.w	r2, r4, #16
1a001868:	f022 0c0f 	bic.w	ip, r2, #15
1a00186c:	f103 0e10 	add.w	lr, r3, #16
1a001870:	44e6      	add	lr, ip
1a001872:	ea4f 1c12 	mov.w	ip, r2, lsr #4
1a001876:	461a      	mov	r2, r3
1a001878:	e9c2 5500 	strd	r5, r5, [r2]
1a00187c:	e9c2 5502 	strd	r5, r5, [r2, #8]
1a001880:	3210      	adds	r2, #16
1a001882:	4572      	cmp	r2, lr
1a001884:	d1f8      	bne.n	1a001878 <memset+0x44>
1a001886:	f10c 0201 	add.w	r2, ip, #1
1a00188a:	f014 0f0c 	tst.w	r4, #12
1a00188e:	eb03 1202 	add.w	r2, r3, r2, lsl #4
1a001892:	f004 0c0f 	and.w	ip, r4, #15
1a001896:	d013      	beq.n	1a0018c0 <memset+0x8c>
1a001898:	f1ac 0304 	sub.w	r3, ip, #4
1a00189c:	f023 0303 	bic.w	r3, r3, #3
1a0018a0:	3304      	adds	r3, #4
1a0018a2:	4413      	add	r3, r2
1a0018a4:	f842 5b04 	str.w	r5, [r2], #4
1a0018a8:	4293      	cmp	r3, r2
1a0018aa:	d1fb      	bne.n	1a0018a4 <memset+0x70>
1a0018ac:	f00c 0403 	and.w	r4, ip, #3
1a0018b0:	b12c      	cbz	r4, 1a0018be <memset+0x8a>
1a0018b2:	b2c9      	uxtb	r1, r1
1a0018b4:	441c      	add	r4, r3
1a0018b6:	f803 1b01 	strb.w	r1, [r3], #1
1a0018ba:	42a3      	cmp	r3, r4
1a0018bc:	d1fb      	bne.n	1a0018b6 <memset+0x82>
1a0018be:	bd30      	pop	{r4, r5, pc}
1a0018c0:	4664      	mov	r4, ip
1a0018c2:	4613      	mov	r3, r2
1a0018c4:	2c00      	cmp	r4, #0
1a0018c6:	d1f4      	bne.n	1a0018b2 <memset+0x7e>
1a0018c8:	e7f9      	b.n	1a0018be <memset+0x8a>
1a0018ca:	4603      	mov	r3, r0
1a0018cc:	4614      	mov	r4, r2
1a0018ce:	e7c0      	b.n	1a001852 <memset+0x1e>
1a0018d0:	461a      	mov	r2, r3
1a0018d2:	46a4      	mov	ip, r4
1a0018d4:	e7e0      	b.n	1a001898 <memset+0x64>
1a0018d6:	bf00      	nop

1a0018d8 <InitClkStates>:
1a0018d8:	0f01 0101                                   ....

1a0018dc <ExtRateIn>:
1a0018dc:	0000 0000                                   ....

1a0018e0 <OscRateIn>:
1a0018e0:	1b00 00b7                                   ....

1a0018e4 <periph_to_base>:
1a0018e4:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a0018f4:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a001904:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a001914:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a001924:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a001934:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a001944:	0222 0222 000d 0223 0223 001c 0f03 0f0f     "."...#.#.......
1a001954:	00ff 0000                                   ....

1a001958 <InitClkStates>:
1a001958:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a001968:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a001978:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a001988:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a001998:	111a 0001 111b 0001                         ........
