/* Linker script to configure memory regions. */

SEARCH_DIR(.)
GROUP(-lgcc -lc -lnosys)

MEMORY
{
  FLASH (rx) : ORIGIN = 0x27000, LENGTH = 0xF4000 - 0x27000 - 0x4000
  USER_STORE (rw) : ORIGIN = 0xF4000 - 0x4000, LENGTH = 0x2000
  BOND_STORE (rw) : ORIGIN = 0xF4000 - 0x2000, LENGTH = 0x2000
  RAM (rwx)  : ORIGIN = 0x20006000, LENGTH = 0x20040000 - 0x20006000
}

INCLUDE "nrf52_common.ld"
