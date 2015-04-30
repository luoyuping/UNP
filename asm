ELF Header:
  Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00 
  Class:                             ELF64
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              EXEC (Executable file)
  Machine:                           Advanced Micro Devices X86-64
  Version:                           0x1
  Entry point address:               0x400afb
  Start of program headers:          64 (bytes into file)
  Start of section headers:          8768 (bytes into file)
  Flags:                             0x0
  Size of this header:               64 (bytes)
  Size of program headers:           56 (bytes)
  Number of program headers:         9
  Size of section headers:           64 (bytes)
  Number of section headers:         30
  Section header string table index: 27

Section Headers:
  [Nr] Name              Type             Address           Offset
       Size              EntSize          Flags  Link  Info  Align
  [ 0]                   NULL             0000000000000000  00000000
       0000000000000000  0000000000000000           0     0     0
  [ 1] .interp           PROGBITS         0000000000400238  00000238
       000000000000001c  0000000000000000   A       0     0     1
  [ 2] .note.ABI-tag     NOTE             0000000000400254  00000254
       0000000000000020  0000000000000000   A       0     0     4
  [ 3] .note.gnu.build-i NOTE             0000000000400274  00000274
       0000000000000024  0000000000000000   A       0     0     4
  [ 4] .gnu.hash         GNU_HASH         0000000000400298  00000298
       0000000000000030  0000000000000000   A       5     0     8
  [ 5] .dynsym           DYNSYM           00000000004002c8  000002c8
       0000000000000240  0000000000000018   A       6     1     8
  [ 6] .dynstr           STRTAB           0000000000400508  00000508
       00000000000001d3  0000000000000000   A       0     0     1
  [ 7] .gnu.version      VERSYM           00000000004006dc  000006dc
       0000000000000030  0000000000000002   A       5     0     2
  [ 8] .gnu.version_r    VERNEED          0000000000400710  00000710
       0000000000000040  0000000000000000   A       6     2     8
  [ 9] .rela.dyn         RELA             0000000000400750  00000750
       0000000000000030  0000000000000018   A       5     0     8
  [10] .rela.plt         RELA             0000000000400780  00000780
       00000000000001c8  0000000000000018   A       5    12     8
  [11] .init             PROGBITS         0000000000400948  00000948
       000000000000001a  0000000000000000  AX       0     0     4
  [12] .plt              PROGBITS         0000000000400970  00000970
       0000000000000140  0000000000000010  AX       0     0     16
  [13] .text             PROGBITS         0000000000400ab0  00000ab0
       00000000000003c2  0000000000000000  AX       0     0     16
  [14] .fini             PROGBITS         0000000000400e74  00000e74
       0000000000000009  0000000000000000  AX       0     0     4
  [15] .rodata           PROGBITS         0000000000400e80  00000e80
       0000000000000059  0000000000000000   A       0     0     4
  [16] .eh_frame_hdr     PROGBITS         0000000000400edc  00000edc
       000000000000004c  0000000000000000   A       0     0     4
  [17] .eh_frame         PROGBITS         0000000000400f28  00000f28
       0000000000000154  0000000000000000   A       0     0     8
  [18] .init_array       INIT_ARRAY       0000000000601dd8  00001dd8
       0000000000000010  0000000000000000  WA       0     0     8
  [19] .fini_array       FINI_ARRAY       0000000000601de8  00001de8
       0000000000000008  0000000000000000  WA       0     0     8
  [20] .jcr              PROGBITS         0000000000601df0  00001df0
       0000000000000008  0000000000000000  WA       0     0     8
  [21] .dynamic          DYNAMIC          0000000000601df8  00001df8
       0000000000000200  0000000000000010  WA       6     0     8
  [22] .got              PROGBITS         0000000000601ff8  00001ff8
       0000000000000008  0000000000000008  WA       0     0     8
  [23] .got.plt          PROGBITS         0000000000602000  00002000
       00000000000000b0  0000000000000008  WA       0     0     8
  [24] .data             PROGBITS         00000000006020b0  000020b0
       0000000000000010  0000000000000000  WA       0     0     8
  [25] .bss              NOBITS           00000000006020c0  000020c0
       0000000000000118  0000000000000000  WA       0     0     32
  [26] .comment          PROGBITS         0000000000000000  000020c0
       0000000000000072  0000000000000001  MS       0     0     1
  [27] .shstrtab         STRTAB           0000000000000000  00002132
       0000000000000108  0000000000000000           0     0     1
  [28] .symtab           SYMTAB           0000000000000000  000029c0
       0000000000000828  0000000000000018          29    50     8
  [29] .strtab           STRTAB           0000000000000000  000031e8
       000000000000047e  0000000000000000           0     0     1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings), l (large)
  I (info), L (link order), G (group), T (TLS), E (exclude), x (unknown)
  O (extra OS processing required) o (OS specific), p (processor specific)

There are no section groups in this file.

Program Headers:
  Type           Offset             VirtAddr           PhysAddr
                 FileSiz            MemSiz              Flags  Align
  PHDR           0x0000000000000040 0x0000000000400040 0x0000000000400040
                 0x00000000000001f8 0x00000000000001f8  R E    8
  INTERP         0x0000000000000238 0x0000000000400238 0x0000000000400238
                 0x000000000000001c 0x000000000000001c  R      1
      [Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]
  LOAD           0x0000000000000000 0x0000000000400000 0x0000000000400000
                 0x000000000000107c 0x000000000000107c  R E    200000
  LOAD           0x0000000000001dd8 0x0000000000601dd8 0x0000000000601dd8
                 0x00000000000002e8 0x0000000000000400  RW     200000
  DYNAMIC        0x0000000000001df8 0x0000000000601df8 0x0000000000601df8
                 0x0000000000000200 0x0000000000000200  RW     8
  NOTE           0x0000000000000254 0x0000000000400254 0x0000000000400254
                 0x0000000000000044 0x0000000000000044  R      4
  GNU_EH_FRAME   0x0000000000000edc 0x0000000000400edc 0x0000000000400edc
                 0x000000000000004c 0x000000000000004c  R      4
  GNU_STACK      0x0000000000000000 0x0000000000000000 0x0000000000000000
                 0x0000000000000000 0x0000000000000000  RW     10
  GNU_RELRO      0x0000000000001dd8 0x0000000000601dd8 0x0000000000601dd8
                 0x0000000000000228 0x0000000000000228  R      1

 Section to Segment mapping:
  Segment Sections...
   00     
   01     .interp 
   02     .interp .note.ABI-tag .note.gnu.build-id .gnu.hash .dynsym .dynstr .gnu.version .gnu.version_r .rela.dyn .rela.plt .init .plt .text .fini .rodata .eh_frame_hdr .eh_frame 
   03     .init_array .fini_array .jcr .dynamic .got .got.plt .data .bss 
   04     .dynamic 
   05     .note.ABI-tag .note.gnu.build-id 
   06     .eh_frame_hdr 
   07     
   08     .init_array .fini_array .jcr .dynamic .got 

Dynamic section at offset 0x1df8 contains 27 entries:
  Tag        Type                         Name/Value
 0x0000000000000001 (NEEDED)             Shared library: [libstdc++.so.6]
 0x0000000000000001 (NEEDED)             Shared library: [libm.so.6]
 0x0000000000000001 (NEEDED)             Shared library: [libgcc_s.so.1]
 0x0000000000000001 (NEEDED)             Shared library: [libc.so.6]
 0x000000000000000c (INIT)               0x400948
 0x000000000000000d (FINI)               0x400e74
 0x0000000000000019 (INIT_ARRAY)         0x601dd8
 0x000000000000001b (INIT_ARRAYSZ)       16 (bytes)
 0x000000000000001a (FINI_ARRAY)         0x601de8
 0x000000000000001c (FINI_ARRAYSZ)       8 (bytes)
 0x000000006ffffef5 (GNU_HASH)           0x400298
 0x0000000000000005 (STRTAB)             0x400508
 0x0000000000000006 (SYMTAB)             0x4002c8
 0x000000000000000a (STRSZ)              467 (bytes)
 0x000000000000000b (SYMENT)             24 (bytes)
 0x0000000000000015 (DEBUG)              0x0
 0x0000000000000003 (PLTGOT)             0x602000
 0x0000000000000002 (PLTRELSZ)           456 (bytes)
 0x0000000000000014 (PLTREL)             RELA
 0x0000000000000017 (JMPREL)             0x400780
 0x0000000000000007 (RELA)               0x400750
 0x0000000000000008 (RELASZ)             48 (bytes)
 0x0000000000000009 (RELAENT)            24 (bytes)
 0x000000006ffffffe (VERNEED)            0x400710
 0x000000006fffffff (VERNEEDNUM)         2
 0x000000006ffffff0 (VERSYM)             0x4006dc
 0x0000000000000000 (NULL)               0x0

Relocation section '.rela.dyn' at offset 0x750 contains 2 entries:
  Offset          Info           Type           Sym. Value    Sym. Name + Addend
000000601ff8  000400000006 R_X86_64_GLOB_DAT 0000000000000000 __gmon_start__ + 0
0000006020c0  001700000005 R_X86_64_COPY     00000000006020c0 _ZSt4cout + 0

Relocation section '.rela.plt' at offset 0x780 contains 19 entries:
  Offset          Info           Type           Sym. Value    Sym. Name + Addend
000000602018  000100000007 R_X86_64_JUMP_SLO 0000000000000000 memset + 0
000000602020  000200000007 R_X86_64_JUMP_SLO 0000000000000000 shutdown + 0
000000602028  000300000007 R_X86_64_JUMP_SLO 0000000000000000 inet_pton + 0
000000602030  000400000007 R_X86_64_JUMP_SLO 0000000000000000 __gmon_start__ + 0
000000602038  000600000007 R_X86_64_JUMP_SLO 0000000000000000 htons + 0
000000602040  000700000007 R_X86_64_JUMP_SLO 0000000000000000 __assert_fail + 0
000000602048  000800000007 R_X86_64_JUMP_SLO 0000000000000000 _ZNSt8ios_base4InitC1E + 0
000000602050  000900000007 R_X86_64_JUMP_SLO 0000000000000000 __libc_start_main + 0
000000602058  000a00000007 R_X86_64_JUMP_SLO 0000000000000000 __cxa_atexit + 0
000000602060  001600000007 R_X86_64_JUMP_SLO 0000000000400a10 _ZNSt8ios_base4InitD1E + 0
000000602068  000c00000007 R_X86_64_JUMP_SLO 0000000000000000 _ZStlsISt11char_traits + 0
000000602070  000e00000007 R_X86_64_JUMP_SLO 0000000000000000 listen + 0
000000602078  000f00000007 R_X86_64_JUMP_SLO 0000000000000000 sleep + 0
000000602080  001000000007 R_X86_64_JUMP_SLO 0000000000000000 atoi + 0
000000602088  001100000007 R_X86_64_JUMP_SLO 0000000000000000 signal + 0
000000602090  001200000007 R_X86_64_JUMP_SLO 0000000000000000 socket + 0
000000602098  001300000007 R_X86_64_JUMP_SLO 0000000000000000 _ZNSolsEPFRSoS_E + 0
0000006020a0  001500000007 R_X86_64_JUMP_SLO 0000000000400a90 _ZSt4endlIcSt11char_tr + 0
0000006020a8  001400000007 R_X86_64_JUMP_SLO 0000000000000000 bind + 0

The decoding of unwind sections for machine type Advanced Micro Devices X86-64 is not currently supported.

Symbol table '.dynsym' contains 24 entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
     0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND 
     1: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND memset@GLIBC_2.2.5 (2)
     2: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND shutdown@GLIBC_2.2.5 (2)
     3: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND inet_pton@GLIBC_2.2.5 (2)
     4: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND __gmon_start__
     5: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND _Jv_RegisterClasses
     6: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND htons@GLIBC_2.2.5 (2)
     7: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND __assert_fail@GLIBC_2.2.5 (2)
     8: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND _ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4 (3)
     9: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND __libc_start_main@GLIBC_2.2.5 (2)
    10: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND __cxa_atexit@GLIBC_2.2.5 (2)
    11: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND _ITM_deregisterTMCloneTab
    12: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND _ZStlsISt11char_traitsIcE@GLIBCXX_3.4 (3)
    13: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND _ITM_registerTMCloneTable
    14: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND listen@GLIBC_2.2.5 (2)
    15: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND sleep@GLIBC_2.2.5 (2)
    16: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND atoi@GLIBC_2.2.5 (2)
    17: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND signal@GLIBC_2.2.5 (2)
    18: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND socket@GLIBC_2.2.5 (2)
    19: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND _ZNSolsEPFRSoS_E@GLIBCXX_3.4 (3)
    20: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND bind@GLIBC_2.2.5 (2)
    21: 0000000000400a90     0 FUNC    GLOBAL DEFAULT  UND _ZSt4endlIcSt11char_trait@GLIBCXX_3.4 (3)
    22: 0000000000400a10     0 FUNC    GLOBAL DEFAULT  UND _ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4 (3)
    23: 00000000006020c0   272 OBJECT  GLOBAL DEFAULT   25 _ZSt4cout@GLIBCXX_3.4 (3)

Symbol table '.symtab' contains 87 entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
     0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND 
     1: 0000000000400238     0 SECTION LOCAL  DEFAULT    1 
     2: 0000000000400254     0 SECTION LOCAL  DEFAULT    2 
     3: 0000000000400274     0 SECTION LOCAL  DEFAULT    3 
     4: 0000000000400298     0 SECTION LOCAL  DEFAULT    4 
     5: 00000000004002c8     0 SECTION LOCAL  DEFAULT    5 
     6: 0000000000400508     0 SECTION LOCAL  DEFAULT    6 
     7: 00000000004006dc     0 SECTION LOCAL  DEFAULT    7 
     8: 0000000000400710     0 SECTION LOCAL  DEFAULT    8 
     9: 0000000000400750     0 SECTION LOCAL  DEFAULT    9 
    10: 0000000000400780     0 SECTION LOCAL  DEFAULT   10 
    11: 0000000000400948     0 SECTION LOCAL  DEFAULT   11 
    12: 0000000000400970     0 SECTION LOCAL  DEFAULT   12 
    13: 0000000000400ab0     0 SECTION LOCAL  DEFAULT   13 
    14: 0000000000400e74     0 SECTION LOCAL  DEFAULT   14 
    15: 0000000000400e80     0 SECTION LOCAL  DEFAULT   15 
    16: 0000000000400edc     0 SECTION LOCAL  DEFAULT   16 
    17: 0000000000400f28     0 SECTION LOCAL  DEFAULT   17 
    18: 0000000000601dd8     0 SECTION LOCAL  DEFAULT   18 
    19: 0000000000601de8     0 SECTION LOCAL  DEFAULT   19 
    20: 0000000000601df0     0 SECTION LOCAL  DEFAULT   20 
    21: 0000000000601df8     0 SECTION LOCAL  DEFAULT   21 
    22: 0000000000601ff8     0 SECTION LOCAL  DEFAULT   22 
    23: 0000000000602000     0 SECTION LOCAL  DEFAULT   23 
    24: 00000000006020b0     0 SECTION LOCAL  DEFAULT   24 
    25: 00000000006020c0     0 SECTION LOCAL  DEFAULT   25 
    26: 0000000000000000     0 SECTION LOCAL  DEFAULT   26 
    27: 0000000000000000     0 FILE    LOCAL  DEFAULT  ABS backlog.cpp
    28: 0000000000400af0    11 FUNC    LOCAL  DEFAULT   13 _GLOBAL__I_a
    29: 0000000000400de0    17 FUNC    LOCAL  DEFAULT   13 _ZL11handle_termi
    30: 00000000006021d5     1 OBJECT  LOCAL  DEFAULT   25 _ZL4stop
    31: 00000000006021d4     1 OBJECT  LOCAL  DEFAULT   25 _ZStL8__ioinit
    32: 0000000000400ab0    59 FUNC    LOCAL  DEFAULT   13 __cxx_global_var_init
    33: 0000000000000000     0 FILE    LOCAL  DEFAULT  ABS crtstuff.c
    34: 0000000000601df0     0 OBJECT  LOCAL  DEFAULT   20 __JCR_LIST__
    35: 0000000000400b30     0 FUNC    LOCAL  DEFAULT   13 deregister_tm_clones
    36: 0000000000400b60     0 FUNC    LOCAL  DEFAULT   13 register_tm_clones
    37: 0000000000400ba0     0 FUNC    LOCAL  DEFAULT   13 __do_global_dtors_aux
    38: 00000000006021d0     1 OBJECT  LOCAL  DEFAULT   25 completed.6972
    39: 0000000000601de8     0 OBJECT  LOCAL  DEFAULT   19 __do_global_dtors_aux_fin
    40: 0000000000400bc0     0 FUNC    LOCAL  DEFAULT   13 frame_dummy
    41: 0000000000601dd8     0 OBJECT  LOCAL  DEFAULT   18 __frame_dummy_init_array_
    42: 0000000000000000     0 FILE    LOCAL  DEFAULT  ABS crtstuff.c
    43: 0000000000401078     0 OBJECT  LOCAL  DEFAULT   17 __FRAME_END__
    44: 0000000000601df0     0 OBJECT  LOCAL  DEFAULT   20 __JCR_END__
    45: 0000000000000000     0 FILE    LOCAL  DEFAULT  ABS 
    46: 0000000000602000     0 OBJECT  LOCAL  DEFAULT   23 _GLOBAL_OFFSET_TABLE_
    47: 0000000000601de8     0 NOTYPE  LOCAL  DEFAULT   18 __init_array_end
    48: 0000000000601dd8     0 NOTYPE  LOCAL  DEFAULT   18 __init_array_start
    49: 0000000000601df8     0 OBJECT  LOCAL  DEFAULT   21 _DYNAMIC
    50: 00000000006020b0     0 NOTYPE  WEAK   DEFAULT   24 data_start
    51: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND memset@@GLIBC_2.2.5
    52: 0000000000400e70     2 FUNC    GLOBAL DEFAULT   13 __libc_csu_fini
    53: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND shutdown@@GLIBC_2.2.5
    54: 0000000000400afb     0 FUNC    GLOBAL DEFAULT   13 _start
    55: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND inet_pton@@GLIBC_2.2.5
    56: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND __gmon_start__
    57: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND _Jv_RegisterClasses
    58: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND htons@@GLIBC_2.2.5
    59: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND __assert_fail@@GLIBC_2.2.
    60: 0000000000400e74     0 FUNC    GLOBAL DEFAULT   14 _fini
    61: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND _ZNSt8ios_base4InitC1Ev@@
    62: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND __libc_start_main@@GLIBC_
    63: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND __cxa_atexit@@GLIBC_2.2.5
    64: 0000000000400a10     0 FUNC    GLOBAL DEFAULT  UND _ZNSt8ios_base4InitD1Ev@@
    65: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND _ITM_deregisterTMCloneTab
    66: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND _ZStlsISt11char_traitsIcE
    67: 0000000000400e80     4 OBJECT  GLOBAL DEFAULT   15 _IO_stdin_used
    68: 0000000000000000     0 NOTYPE  WEAK   DEFAULT  UND _ITM_registerTMCloneTable
    69: 00000000006020b0     0 NOTYPE  GLOBAL DEFAULT   24 __data_start
    70: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND listen@@GLIBC_2.2.5
    71: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND sleep@@GLIBC_2.2.5
    72: 00000000006020c0     0 OBJECT  GLOBAL HIDDEN    24 __TMC_END__
    73: 00000000006020c0   272 OBJECT  GLOBAL DEFAULT   25 _ZSt4cout@@GLIBCXX_3.4
    74: 00000000006020b8     0 OBJECT  GLOBAL HIDDEN    24 __dso_handle
    75: 0000000000400e00   101 FUNC    GLOBAL DEFAULT   13 __libc_csu_init
    76: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND atoi@@GLIBC_2.2.5
    77: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND signal@@GLIBC_2.2.5
    78: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND socket@@GLIBC_2.2.5
    79: 00000000006020c0     0 NOTYPE  GLOBAL DEFAULT   25 __bss_start
    80: 00000000006021d8     0 NOTYPE  GLOBAL DEFAULT   25 _end
    81: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND _ZNSolsEPFRSoS_E@@GLIBCXX
    82: 0000000000400a90     0 FUNC    GLOBAL DEFAULT  UND _ZSt4endlIcSt11char_trait
    83: 0000000000000000     0 FUNC    GLOBAL DEFAULT  UND bind@@GLIBC_2.2.5
    84: 00000000006020c0     0 NOTYPE  GLOBAL DEFAULT   24 _edata
    85: 0000000000400bf0   491 FUNC    GLOBAL DEFAULT   13 main
    86: 0000000000400948     0 FUNC    GLOBAL DEFAULT   11 _init

Histogram for `.gnu.hash' bucket list length (total of 3 buckets):
 Length  Number     % of total  Coverage
      0  1          ( 33.3%)
      1  1          ( 33.3%)     33.3%
      2  1          ( 33.3%)    100.0%

Version symbols section '.gnu.version' contains 24 entries:
 Addr: 00000000004006dc  Offset: 0x0006dc  Link: 5 (.dynsym)
  000:   0 (*local*)       2 (GLIBC_2.2.5)   2 (GLIBC_2.2.5)   2 (GLIBC_2.2.5)
  004:   0 (*local*)       0 (*local*)       2 (GLIBC_2.2.5)   2 (GLIBC_2.2.5)
  008:   3 (GLIBCXX_3.4)   2 (GLIBC_2.2.5)   2 (GLIBC_2.2.5)   0 (*local*)    
  00c:   3 (GLIBCXX_3.4)   0 (*local*)       2 (GLIBC_2.2.5)   2 (GLIBC_2.2.5)
  010:   2 (GLIBC_2.2.5)   2 (GLIBC_2.2.5)   2 (GLIBC_2.2.5)   3 (GLIBCXX_3.4)
  014:   2 (GLIBC_2.2.5)   3 (GLIBCXX_3.4)   3 (GLIBCXX_3.4)   3 (GLIBCXX_3.4)

Version needs section '.gnu.version_r' contains 2 entries:
 Addr: 0x0000000000400710  Offset: 0x000710  Link: 6 (.dynstr)
  000000: Version: 1  File: libstdc++.so.6  Cnt: 1
  0x0010:   Name: GLIBCXX_3.4  Flags: none  Version: 3
  0x0020: Version: 1  File: libc.so.6  Cnt: 1
  0x0030:   Name: GLIBC_2.2.5  Flags: none  Version: 2

Displaying notes found at file offset 0x00000254 with length 0x00000020:
  Owner                 Data size	Description
  GNU                  0x00000010	NT_GNU_ABI_TAG (ABI version tag)
    OS: Linux, ABI: 2.6.24

Displaying notes found at file offset 0x00000274 with length 0x00000024:
  Owner                 Data size	Description
  GNU                  0x00000014	NT_GNU_BUILD_ID (unique build ID bitstring)
    Build ID: 6cfc87887733a2fe084e8a5dcefb1256f17c4489
