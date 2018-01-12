/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2.aml, Sat Dec 30 02:43:12 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000466 (1126)
 *     Revision         0x01
 *     Checksum         0x7E
 *     OEM ID           "Isct"
 *     OEM Table ID     "IsctAsl"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20110112 (537985298)
 */
DefinitionBlock ("", "SSDT", 1, "Isct", "IsctAsl", 0x00003000)
{
    /*
     * iASL Warning: There was 1 external control method found during
     * disassembly, but only 0 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.ODGW, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.ASLC, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.ASLE, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.PARD, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.STAT, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.GFX0.TCHE, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.ECRG, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.LIDS, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.SCCB, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.SCCS, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.SCWD, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.SCWT, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.WLS3, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.WWS3, IntObj)    // Warning: Unknown object
    External (PMEN, UnknownObj)    // Warning: Unknown object

    Scope (\_SB)
    {
        Device (ISCT)
        {
            OperationRegion (SCTN, SystemMemory, 0xABE3DC98, 0x0007)
            Field (SCTN, AnyAcc, Lock, Preserve)
            {
                WKRS,   8, 
                ASCT,   8, 
                AOS1,   8, 
                GNPT,   32
            }

            Name (_HID, "INT33A0")  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Name (ANS1, 0x00)
            Name (AWS1, 0x00)
            Name (AOWD, 0x00)
            Method (GABS, 0, NotSerialized)
            {
                Return (ASCT)
            }

            Method (GAOS, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Store (\_SB.PCI0.LPCB.EC0.SCCB, Local0)
                }

                Return (Local0)
            }

            Method (SAOS, 1, NotSerialized)
            {
                \_SB.ODGW (Or (0x5400, Arg0))
                Or (\PMEN, 0x10, \PMEN)
                If (And (\_SB.PCI0.GFX0.TCHE, 0x0100))
                {
                    If (LAnd (LAnd (And (\_SB.PCI0.LPCB.EC0.SCCB, 0x01), LOr (And (\_SB.PCI0.LPCB.EC0.SCCS, 0x02), And (\_SB.PCI0.LPCB.EC0.SCCS, 0x08))), LNot (And (Arg0, 0x01))))
                    {
                        If (LNot (\_SB.PCI0.GFX0.PARD))
                        {
                            Store (And (\_SB.PCI0.GFX0.STAT, Not (0x03)), \_SB.PCI0.GFX0.STAT)
                            Store (Or (\_SB.PCI0.GFX0.ASLC, 0x0100), \_SB.PCI0.GFX0.ASLC)
                            Store (0x01, \_SB.PCI0.GFX0.ASLE)
                        }
                    }
                }

                If (LEqual (And (Arg0, 0x01), 0x01))
                {
                    Store (0x01, AOS1)
                }
                Else
                {
                    Store (0x00, AOS1)
                }

                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Store (Arg0, \_SB.PCI0.LPCB.EC0.SCCB)
                }
            }

            Method (GANS, 0, NotSerialized)
            {
                Return (ANS1)
            }

            Method (SANS, 1, NotSerialized)
            {
                If (LEqual (And (Arg0, 0x01), 0x01))
                {
                    Store (0x01, ANS1)
                }
                Else
                {
                    Store (0x00, ANS1)
                }
            }

            Method (GWLS, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC0.WLS3)
                {
                    Return (0x02)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (SWLS, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    If (LEqual (And (Arg0, 0x02), 0x02))
                    {
                        Store (0x01, \_SB.PCI0.LPCB.EC0.WLS3)
                    }
                    Else
                    {
                        Store (0x00, \_SB.PCI0.LPCB.EC0.WLS3)
                    }
                }
            }

            Method (GWWS, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC0.WWS3)
                {
                    Return (0x02)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Method (SWWS, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    If (LEqual (And (Arg0, 0x02), 0x02))
                    {
                        Store (0x01, \_SB.PCI0.LPCB.EC0.WWS3)
                    }
                    Else
                    {
                        Store (0x00, \_SB.PCI0.LPCB.EC0.WWS3)
                    }
                }
            }

            Method (SASD, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Divide (Arg0, 0x1E, Local1, Local0)
                    Store (Local0, \_SB.PCI0.LPCB.EC0.SCWT)
                }
            }

            Method (GPWR, 0, NotSerialized)
            {
                Store (0x01, Local0)
                If (LNotEqual (WKRS, 0x00))
                {
                    Store (WKRS, Local0)
                }

                Return (Local0)
            }

            Method (GPCS, 0, NotSerialized)
            {
                Store (0x01, Local0)
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Store (\_SB.PCI0.LPCB.EC0.LIDS, Local0)
                }

                Return (Local0)
            }

            Method (GAWD, 0, NotSerialized)
            {
                Return (AOWD)
            }

            Method (SAWD, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Store (Arg0, \_SB.PCI0.LPCB.EC0.SCWD)
                }

                Store (Arg0, AOWD)
            }
        }
    }
}

