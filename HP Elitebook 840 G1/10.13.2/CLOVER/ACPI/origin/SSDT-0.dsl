/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-0.aml, Sat Dec 30 02:43:12 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000313 (787)
 *     Revision         0x01
 *     Checksum         0x7A
 *     OEM ID           "HPQOEM"
 *     OEM Table ID     "SataAhci"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20110112 (537985298)
 */
DefinitionBlock ("", "SSDT", 1, "HPQOEM", "SataAhci", 0x00001000)
{
    External (_SB_.PCI0.SATA, DeviceObj)    // Warning: Unknown object
    External (_SB_.PEPD, UnknownObj)    // Warning: Unknown object
    External (DVS0, UnknownObj)    // Warning: Unknown object
    External (DVS1, UnknownObj)    // Warning: Unknown object
    External (DVS2, UnknownObj)    // Warning: Unknown object
    External (DVS3, UnknownObj)    // Warning: Unknown object
    External (OSYS, UnknownObj)    // Warning: Unknown object
    External (PEPC, UnknownObj)    // Warning: Unknown object
    External (S0ID, UnknownObj)    // Warning: Unknown object

    Scope (\_SB.PCI0.SATA)
    {
        Method (_DEP, 0, NotSerialized)  // _DEP: Dependencies
        {
            If (LGreaterEqual (OSYS, 0x07DD))
            {
                If (LAnd (LEqual (S0ID, 0x01), LNotEqual (And (PEPC, 0x03), 0x00)))
                {
                    Return (Package (0x01)
                    {
                        \_SB.PEPD
                    })
                }
            }

            Return (Package (0x00) {})
        }

        Device (PRT0)
        {
            Name (_ADR, 0xFFFF)  // _ADR: Address
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
            {
                CreateByteField (Arg0, 0x9D, BFDS)
                ToInteger (BFDS, FDEV)
                CreateByteField (Arg0, 0x9A, BFRP)
                ToInteger (BFRP, FDRP)
            }

            Method (_GTF, 0, Serialized)  // _GTF: Get Task File
            {
                If (LAnd (LAnd (LEqual (DVS0, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Name (PIB1, Buffer (0x07)
                    {
                         0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF       
                    })
                    Return (PIB1)
                }

                Name (PIB2, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                })
                Return (PIB2)
            }
        }

        Device (PRT1)
        {
            Name (_ADR, 0x0001FFFF)  // _ADR: Address
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
            {
                CreateByteField (Arg0, 0x9D, BFDS)
                ToInteger (BFDS, FDEV)
                CreateByteField (Arg0, 0x9A, BFRP)
                ToInteger (BFRP, FDRP)
            }

            Method (_GTF, 0, Serialized)  // _GTF: Get Task File
            {
                If (LAnd (LAnd (LEqual (DVS1, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Name (PIB1, Buffer (0x07)
                    {
                         0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF       
                    })
                    Return (PIB1)
                }

                Name (PIB2, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                })
                Return (PIB2)
            }
        }

        Device (PRT2)
        {
            Name (_ADR, 0x0002FFFF)  // _ADR: Address
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
            {
                CreateByteField (Arg0, 0x9D, BFDS)
                ToInteger (BFDS, FDEV)
                CreateByteField (Arg0, 0x9A, BFRP)
                ToInteger (BFRP, FDRP)
            }

            Method (_GTF, 0, Serialized)  // _GTF: Get Task File
            {
                If (LAnd (LAnd (LEqual (DVS2, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Name (PIB1, Buffer (0x07)
                    {
                         0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF       
                    })
                    Return (PIB1)
                }

                Name (PIB2, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                })
                Return (PIB2)
            }
        }

        Device (PRT3)
        {
            Name (_ADR, 0x0003FFFF)  // _ADR: Address
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Method (_SDD, 1, Serialized)  // _SDD: Set Device Data
            {
                CreateByteField (Arg0, 0x9D, BFDS)
                ToInteger (BFDS, FDEV)
                CreateByteField (Arg0, 0x9A, BFRP)
                ToInteger (BFRP, FDRP)
            }

            Method (_GTF, 0, Serialized)  // _GTF: Get Task File
            {
                If (LAnd (LAnd (LEqual (DVS3, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Name (PIB1, Buffer (0x07)
                    {
                         0x10, 0x09, 0x00, 0x00, 0x00, 0xB0, 0xEF       
                    })
                    Return (PIB1)
                }

                Name (PIB2, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00       
                })
                Return (PIB2)
            }
        }

        Device (PRT5)
        {
            Name (_ADR, 0x0005FFFF)  // _ADR: Address
            Name (GTF5, Buffer (0x07)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00       
            })
            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (Buffer (0x07)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00       
                    }, GTF5)
                Return (GTF5)
            }
        }
    }
}

