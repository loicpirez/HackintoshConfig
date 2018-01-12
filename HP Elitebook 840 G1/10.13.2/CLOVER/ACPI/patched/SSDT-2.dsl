/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2.aml, Sat Dec 30 02:27:20 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000013CA (5066)
 *     Revision         0x01
 *     Checksum         0x61
 *     OEM ID           "HP"
 *     OEM Table ID     "AMDSGTBL"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20140424 (538182692)
 */
DefinitionBlock ("", "SSDT", 1, "HP", "AMDSGTBL", 0x00001000)
{
    /*
     * iASL Warning: There were 14 external control methods found during
     * disassembly, but only 0 were resolved (14 unresolved). Additional
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
    External (_SB_.F4EV, UnknownObj)    // Warning: Unknown object
    External (_SB_.LID_._LID, IntObj)    // Warning: Unknown object
    External (_SB_.ODGW, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.IGPU, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU._DOD, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD01._ADR, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD01._DGS, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD02._ADR, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD02._BCL, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD02._BCM, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD02._BQC, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD02._DCS, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD02._DGS, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD03._ADR, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD03._DGS, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD04._ADR, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD04._DGS, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD05._ADR, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD05._DGS, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD06._ADR, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD06._DGS, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD07._ADR, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD07._DGS, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD08._ADR, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.IGPU.DD08._DGS, IntObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.GACS, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.LPCB.EC0_.GPID, UnknownObj)    // Warning: Unknown object
    External (_SB_.PCI0.RP05, DeviceObj)    // Warning: Unknown object
    External (_SB_.PCI0.RP05.DGFX, DeviceObj)    // Warning: Unknown object
    External (_SB_.SBRC, IntObj)    // Warning: Unknown object
    External (DCAP, UnknownObj)    // Warning: Unknown object
    External (DDL2, UnknownObj)    // Warning: Unknown object
    External (DDL3, UnknownObj)    // Warning: Unknown object
    External (DDL4, UnknownObj)    // Warning: Unknown object
    External (DDL5, UnknownObj)    // Warning: Unknown object
    External (DDL6, UnknownObj)    // Warning: Unknown object
    External (DDL7, UnknownObj)    // Warning: Unknown object
    External (DDL8, UnknownObj)    // Warning: Unknown object
    External (DID1, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (DID2, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (DID3, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (DID4, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (DID5, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (DID6, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (DID7, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (DID8, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (DIDL, UnknownObj)    // Warning: Unknown object
    External (EECP, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (GBAS, UnknownObj)    // Warning: Unknown object
    External (HLRS, UnknownObj)    // Warning: Unknown object
    External (NDID, UnknownObj)    // Warning: Unknown object
    External (PWEN, UnknownObj)    // Warning: Unknown object
    External (RDSS, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (SDDL, IntObj)    // Warning: Unknown object
    External (SGFL, UnknownObj)    // Warning: Unknown object
    External (SGGP, UnknownObj)    // Warning: Unknown object
    External (SGMD, UnknownObj)    // Warning: Unknown object
    External (SGME, UnknownObj)    // Warning: Unknown object
    External (VDCE, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (VRMB, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (VRMS, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (WCOS, UnknownObj)    // Warning: Unknown object
    External (WDGN, IntObj)    // Warning: Unknown object
    External (WDPE, UnknownObj)    // Warning: Unknown object
    External (WDSA, UnknownObj)    // Warning: Unknown object
    External (WDST, UnknownObj)    // Warning: Unknown object
    External (XBAS, UnknownObj)    // Warning: Unknown object

    Scope (\_SB.PCI0.IGPU)
    {
        Method (ATPX, 2, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            While (One)
            {
                Store (Arg0, _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Store (PX00 (), Local0)
                }
                ElseIf (LEqual (_T_0, One))
                {
                    Store (PX01 (), Local0)
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    PX02 (Arg1)
                }
                Else
                {
                    Store (Buffer (0x0100)
                        {
                             0x00, 0x00                                     
                        }, Local0)
                }

                Break
            }

            Return (Local0)
        }

        Method (PX00, 0, Serialized)
        {
            Store (Buffer (0x0100) {}, Local0)
            CreateWordField (Local0, Zero, SIZE)
            CreateWordField (Local0, 0x02, IVER)
            CreateDWordField (Local0, 0x04, SFBV)
            Store (0x08, SIZE)
            Store (One, IVER)
            If (And (SGME, 0x0F))
            {
                If (LEqual (And (SGME, 0x0F), One))
                {
                    Store (0x03, SFBV)
                }

                If (LEqual (And (SGME, 0x0F), 0x02))
                {
                    Store (One, SFBV)
                }
            }
            Else
            {
                Store (Zero, SFBV)
            }

            Return (Local0)
        }

        Method (PX01, 0, NotSerialized)
        {
            Store (Buffer (0x0100) {}, Local0)
            CreateWordField (Local0, Zero, SIZE)
            CreateDWordField (Local0, 0x02, VFMK)
            CreateDWordField (Local0, 0x06, FLAG)
            Store (0x0A, SIZE)
            Store (0x1FFF, VFMK)
            Store (0x1E80, FLAG)
            Return (Local0)
        }

        Method (PX02, 1, NotSerialized)
        {
            CreateWordField (Arg0, Zero, SIZI)
            CreateByteField (Arg0, 0x02, PWST)
            And (PWST, One, PWST)
            If (PWST)
            {
                \_SB.PCI0.RP05.DGFX._ON ()
            }
            Else
            {
                \_SB.PCI0.RP05.DGFX._OFF ()
            }
        }

        OperationRegion (REVD, SystemMemory, VRMB (VRMS ()), Field (REVD, AnyAcc, NoLock, Preserve)
            {
                SROM,   32, 
                VROM,   524288
            })
        Method (ATRM, 2, Serialized)
        {
            Add (VRMB (0x04), Local0, Add (Local0, Arg0, Local0))
            Subtract (VRMS (), 0x04, Local1)
            If (LLess (Arg0, Local1))
            {
                OperationRegion (OROM, SystemMemory, Local0, 0x1000)
                Field (OROM, AnyAcc, NoLock, Preserve)
                {
                    R4KB,   32768
                }

                Return (R4KB)
            }
            Else
            {
                Store (Buffer (One)
                    {
                         0x00                                           
                    }, Local0)
                Return (Local0)
            }
        }

        Name (PSBR, Zero)
        Name (ABRI, 0xFF)
        Name (VGSD, Zero)
        Name (BRIN, Zero)
        Name (ABRT, Buffer (0x62)
        {
            /* 0000 */  0x02, 0x0E, 0x04, 0x10, 0x06, 0x12, 0x08, 0x15,
            /* 0008 */  0x0A, 0x17, 0x0C, 0x1A, 0x0E, 0x1D, 0x10, 0x20,
            /* 0010 */  0x12, 0x23, 0x14, 0x26, 0x16, 0x29, 0x18, 0x2C,
            /* 0018 */  0x1A, 0x30, 0x1C, 0x34, 0x1E, 0x37, 0x20, 0x3B,
            /* 0020 */  0x22, 0x3E, 0x24, 0x43, 0x26, 0x47, 0x28, 0x4B,
            /* 0028 */  0x2A, 0x50, 0x2C, 0x54, 0x2E, 0x58, 0x30, 0x5D,
            /* 0030 */  0x32, 0x62, 0x34, 0x67, 0x36, 0x6C, 0x38, 0x71,
            /* 0038 */  0x3A, 0x76, 0x3C, 0x7B, 0x3E, 0x81, 0x40, 0x87,
            /* 0040 */  0x42, 0x8C, 0x44, 0x92, 0x46, 0x98, 0x48, 0x9E,
            /* 0048 */  0x4A, 0xA4, 0x4C, 0xAB, 0x4E, 0xB1, 0x50, 0xB7,
            /* 0050 */  0x52, 0xBE, 0x54, 0xC5, 0x56, 0xCC, 0x58, 0xD3,
            /* 0058 */  0x5A, 0xDA, 0x5C, 0xE1, 0x5E, 0xE8, 0x60, 0xF0,
            /* 0060 */  0x62, 0xF7                                     
        })
        Name (DEVM, Package (0x09)
        {
            One, 
            0x02, 
            0x04, 
            0x08, 
            0x80, 
            0x0200, 
            0x0400, 
            0x0800, 
            0x1000
        })
        Method (ATIF, 2, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Or (DCAP, 0x03, DCAP)
            While (One)
            {
                Store (Arg0, _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Store (AFN0 (), Local0)
                }
                ElseIf (LEqual (_T_0, One))
                {
                    Store (AFN1 (), Local0)
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    Store (AFN2 (), Local0)
                }
                ElseIf (LEqual (_T_0, 0x03))
                {
                    Store (AFN3 (Arg1), Local0)
                }
                ElseIf (LEqual (_T_0, 0x04))
                {
                    Store (AFN4 (), Local0)
                }
                ElseIf (LEqual (_T_0, 0x0F))
                {
                    Store (AF15 (), Local0)
                }
                ElseIf (LEqual (_T_0, 0x10))
                {
                    Store (AF16 (), Local0)
                }
                Else
                {
                    Store (Buffer (0x0100)
                        {
                             0x00, 0x00                                     
                        }, Local0)
                }

                Break
            }

            Return (Local0)
        }

        Method (AFN0, 0, Serialized)
        {
            Store (Buffer (0x0100) {}, Local0)
            CreateWordField (Local0, Zero, SIZE)
            CreateWordField (Local0, 0x02, IVER)
            CreateDWordField (Local0, 0x04, SNMK)
            CreateDWordField (Local0, 0x08, SFBV)
            Store (0x0C, SIZE)
            Store (One, IVER)
            Store (0x01F1, SNMK)
            Store (0xC00F, SFBV)
            Return (Local0)
        }

        Method (AFN1, 0, Serialized)
        {
            Store (Buffer (0x0100) {}, Local0)
            CreateWordField (Local0, Zero, SIZE)
            CreateDWordField (Local0, 0x02, VFMK)
            CreateDWordField (Local0, 0x06, FLAG)
            CreateByteField (Local0, 0x0A, NOCC)
            Store (0x0B, SIZE)
            Store (0x0107, VFMK)
            Store (0x0106, FLAG)
            Store (0xD0, NOCC)
            Return (Local0)
        }

        Method (AFN2, 0, Serialized)
        {
            Store (Buffer (0x0100) {}, Local0)
            CreateWordField (Local0, Zero, SIZE)
            CreateDWordField (Local0, 0x02, PBRO)
            CreateDWordField (Local0, 0x06, FLAG)
            CreateByteField (Local0, 0x0A, NOCC)
            Store (0x0D, SIZE)
            Store (PSBR, PBRO)
            Store (Zero, PSBR)
            Store (0x06, Local1)
            While (LLess (Local1, 0x0D))
            {
                Store (Zero, Index (Local0, Local1))
                Increment (Local1)
            }

            If (LAnd (LEqual (PBRO, Zero), LLess (\WCOS, 0x06)))
            {
                Store (\_SB.SBRC, ABRI)
                Store (0x80, PBRO)
            }

            If (LAnd (PBRO, 0x10))
            {
                Store (0x02, Local2)
                If (LEqual (\_SB.PCI0.LPCB.EC0.GACS, One))
                {
                    If (LEqual (\_SB.PCI0.LPCB.EC0.GPID, Zero))
                    {
                        Store (One, Local2)
                    }
                    Else
                    {
                        Store (0x03, Local2)
                    }
                }

                Store (Local2, Index (Local0, 0x0B))
            }

            If (LAnd (PBRO, 0x80))
            {
                Store (ABRI, Index (Local0, 0x0C))
            }

            Return (Local0)
        }

        Method (AFN3, 1, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            CreateWordField (Arg0, Zero, SIZI)
            CreateWordField (Arg0, 0x02, DISI)
            CreateWordField (Arg0, 0x04, CDIS)
            Store (Buffer (0x0100) {}, Local0)
            CreateWordField (Local0, Zero, SIZE)
            CreateDWordField (Local0, 0x02, DISP)
            Store (Zero, DISP)
            Store (0x04, SIZE)
            While (One)
            {
                Store (VGSD, _T_0)
                If (LEqual (_T_0, One))
                {
                    Store (TOHP (CDIS), WDST)
                    Store (TOHP (DISI), WDSA)
                    Store (DISI, DISP)
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    Store (TOAF (WDGN), DISP)
                    Store (WDGN, WDSA)
                }
                Else
                {
                    If (LEqual (DISI, One))
                    {
                        Or (CDIS, One, DISP)
                    }
                    ElseIf (And (DISI, One))
                    {
                        And (CDIS, 0xFFFFFFFE, DISP)
                    }
                    Else
                    {
                        Store (One, DISP)
                    }

                    Store (TOHP (DISI), WDSA)
                    Store (TOHP (DISP), WDGN)
                }

                Break
            }

            Signal (\_SB.F4EV)
            Store (Zero, VGSD)
            If (BRIN)
            {
                SBRV ()
                Store (Zero, BRIN)
            }

            Return (Local0)
        }

        Method (AFN4, 0, Serialized)
        {
            Store (Buffer (0x0100) {}, Local0)
            CreateWordField (Local0, Zero, SIZE)
            CreateByteField (Local0, 0x02, LIDS)
            Store (0x03, SIZE)
            If (\_SB.LID._LID)
            {
                Store (Zero, LIDS)
            }
            Else
            {
                Store (One, LIDS)
            }

            Return (Local0)
        }

        Method (AF15, 0, Serialized)
        {
            Store (Buffer (0x0100) {}, Local0)
            CreateWordField (Local0, Zero, DNUM)
            CreateWordField (Local0, 0x02, DSZE)
            CreateDWordField (Local0, 0x04, FLG1)
            CreateWordField (Local0, 0x08, BUS1)
            CreateWordField (Local0, 0x0A, DEV1)
            CreateDWordField (Local0, 0x0C, FLG2)
            CreateWordField (Local0, 0x10, BUS2)
            CreateWordField (Local0, 0x12, DEV2)
            Store (0x02, DNUM)
            Store (0x08, DSZE)
            Store (0x04, FLG1)
            Store (Zero, BUS1)
            Store (One, DEV1)
            Store (0x05, FLG2)
            Store (One, BUS2)
            Store (Zero, DEV2)
            Return (Local0)
        }

        Method (AF16, 0, Serialized)
        {
            Store (Buffer (0x0100) {}, Local0)
            Store (SizeOf (ABRT), Local1)
            CreateWordField (Local0, Zero, SIZE)
            CreateWordField (Local0, 0x02, FLGS)
            CreateByteField (Local0, 0x04, ERRC)
            CreateByteField (Local0, 0x05, ACLV)
            CreateByteField (Local0, 0x06, DCLV)
            CreateByteField (Local0, 0x07, MIIS)
            CreateByteField (Local0, 0x08, MAIS)
            CreateByteField (Local0, 0x09, COUN)
            Add (0x0A, Local1, Local2)
            Store (Local2, SIZE)
            Store (Zero, FLGS)
            Store (Zero, ERRC)
            Store (0x64, ACLV)
            Store (0x20, DCLV)
            Store (0x0C, MIIS)
            Store (0xFF, MAIS)
            Divide (Local1, 0x02, Local3, Local2)
            Store (Local2, COUN)
            Store (Zero, Local2)
            While (LLess (Local2, Local1))
            {
                Add (0x0A, Local2, Local3)
                Store (DerefOf (Index (ABRT, Local2)), Index (Local0, Local3))
                Increment (Local2)
            }

            Return (Local0)
        }

        Method (DKET, 0, Serialized)
        {
            Or (PSBR, 0x20, PSBR)
            Notify (^, 0xD0)
            Return (One)
        }

        Method (GF4E, 0, Serialized)
        {
            Or (PSBR, One, PSBR)
            Notify (^, 0xD0)
            Return (One)
        }

        Method (GLEV, 0, Serialized)
        {
            Store (Zero, Local0)
        }

        Method (GPUP, 0, Serialized)
        {
            Or (PSBR, 0x10, PSBR)
            Notify (^, 0xD0)
            Return (One)
        }

        Method (SBRV, 0, Serialized)
        {
            Store (\_SB.SBRC, ABRI)
            Or (PSBR, 0x80, PSBR)
            Notify (^, 0xD0)
            Return (One)
        }

        Method (RFHS, 1, Serialized)
        {
            If (Arg0)
            {
                Store (One, VGSD)
                Reset (\_SB.F4EV)
                GF4E ()
            }

            Wait (\_SB.F4EV, 0x0500)
        }

        Method (SNXS, 0, Serialized)
        {
            Store (0x02, VGSD)
            GF4E ()
            Wait (\_SB.F4EV, 0x0500)
        }

        Method (VWAK, 1, Serialized)
        {
            If (LGreaterEqual (Arg0, 0x03))
            {
                If (LEqual (And (WDPE, 0x44), Zero))
                {
                    Store (One, BRIN)
                }
            }
        }

        Method (TOHP, 1, Serialized)
        {
            Store (Zero, Local0)
            Store (Arg0, Local1)
            Store (Zero, Local2)
            While (LAnd (LLess (Local0, 0x09), Local1))
            {
                Store (DerefOf (Index (DEVM, Local0)), Local3)
                If (And (Local1, Local3))
                {
                    ShiftLeft (One, Local0, Local4)
                    Or (Local2, Local4, Local2)
                }

                And (Local1, Not (Local3), Local1)
                Increment (Local0)
            }

            Return (Local2)
        }

        Method (TOAF, 1, Serialized)
        {
            Store (Zero, Local0)
            Store (Arg0, Local1)
            Store (Zero, Local2)
            While (LAnd (LLess (Local0, 0x09), Local1))
            {
                ShiftLeft (One, Local0, Local3)
                If (And (Local1, Local3))
                {
                    Store (DerefOf (Index (DEVM, Local0)), Local4)
                    Or (Local2, Local4, Local2)
                }

                And (Local1, Not (Local3), Local1)
                Increment (Local0)
            }

            Return (Local2)
        }

        Method (DGCE, 0, Serialized)
        {
            Or (PSBR, 0x0100, PSBR)
            Notify (^, 0xD0)
            Return (One)
        }

        Method (IDAB, 0, Serialized)
        {
            If (LEqual (And (SGMD, 0x0F), One))
            {
                If (LEqual (SGFL, One))
                {
                    WIID ()
                }
            }
            Else
            {
                Store (Zero, NDID)
                If (LNotEqual (DIDL, Zero))
                {
                    Store (SDDL, DIDL)
                    DID1 ()
                }

                If (LNotEqual (DDL2, Zero))
                {
                    Store (SDDL, DDL2)
                    DID2 ()
                }

                If (LNotEqual (DDL3, Zero))
                {
                    Store (SDDL, DDL3)
                    DID3 ()
                }

                If (LNotEqual (DDL4, Zero))
                {
                    Store (SDDL, DDL4)
                    DID4 ()
                }

                If (LNotEqual (DDL5, Zero))
                {
                    Store (SDDL, DDL5)
                    DID5 ()
                }

                If (LNotEqual (DDL6, Zero))
                {
                    Store (SDDL, DDL6)
                    DID6 ()
                }

                If (LNotEqual (DDL7, Zero))
                {
                    Store (SDDL, DDL7)
                    DID7 ()
                }

                If (LNotEqual (DDL8, Zero))
                {
                    Store (SDDL, DDL8)
                    DID8 ()
                }
            }

            Return (Zero)
        }

        Method (HWID, 0, Serialized)
        {
            Name (TMP9, Package (0x09)
            {
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones, 
                Ones
            })
            Store (Or (0x00010000, DID1 ()), Index (TMP9, Zero))
            Store (Or (0x00010000, DID2 ()), Index (TMP9, One))
            Store (Or (0x00010000, DID3 ()), Index (TMP9, 0x02))
            Store (Or (0x00010000, DID4 ()), Index (TMP9, 0x03))
            Store (Or (0x00010000, DID5 ()), Index (TMP9, 0x04))
            Store (Or (0x00010000, DID6 ()), Index (TMP9, 0x05))
            Store (Or (0x00010000, DID7 ()), Index (TMP9, 0x06))
            Store (Or (0x00010000, DID8 ()), Index (TMP9, 0x07))
            Store (Zero, Index (TMP9, 0x08))
            If (And (SGFL, One))
            {
                Store (0x80010306, Index (TMP9, 0x08))
            }

            Return (TMP9)
        }

        Method (WIID, 0, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LEqual (And (DIDL, 0x0F0F), 0x0306))
            {
                Return (Zero)
            }

            If (LEqual (And (DID2 (), 0x0F0F), 0x0306))
            {
                Return (Zero)
            }

            If (LEqual (And (DID3 (), 0x0F0F), 0x0306))
            {
                Return (Zero)
            }

            If (LEqual (And (DID4 (), 0x0F0F), 0x0306))
            {
                Return (Zero)
            }

            If (LEqual (And (DID5 (), 0x0F0F), 0x0306))
            {
                Return (Zero)
            }

            If (LEqual (And (DID6 (), 0x0F0F), 0x0306))
            {
                Return (Zero)
            }

            If (LEqual (And (DID7 (), 0x0F0F), 0x0306))
            {
                Return (Zero)
            }

            If (LEqual (And (DID8 (), 0x0F0F), 0x0306))
            {
                Return (Zero)
            }

            While (One)
            {
                Store (ToInteger (NDID), _T_0)
                If (LEqual (_T_0, One))
                {
                    Store (0x80010306, DID2 ())
                    Store (0x02, NDID)
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    Store (0x80010306, DID3 ())
                    Store (0x03, NDID)
                }
                ElseIf (LEqual (_T_0, 0x03))
                {
                    Store (0x80010306, DID4 ())
                    Store (0x04, NDID)
                }
                ElseIf (LEqual (_T_0, 0x04))
                {
                    Store (0x80010306, DID5 ())
                    Store (0x05, NDID)
                }
                ElseIf (LEqual (_T_0, 0x05))
                {
                    Store (0x80010306, DID6 ())
                    Store (0x06, NDID)
                }
                ElseIf (LEqual (_T_0, 0x06))
                {
                    Store (0x80010306, DID7 ())
                    Store (0x07, NDID)
                }
                ElseIf (LEqual (_T_0, 0x07))
                {
                    Store (0x80010306, DID8 ())
                    Store (0x08, NDID)
                }
                ElseIf (LEqual (_T_0, 0x08))
                {
                    Store (0x09, NDID)
                }

                Break
            }

            Return (Zero)
        }
    }

    Scope (\_SB.PCI0.RP05)
    {
        OperationRegion (RPCI, PCI_Config, Zero, 0xF0)
        Field (RPCI, DWordAcc, Lock, Preserve)
        {
            Offset (0x50), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1
        }

        OperationRegion (RPCX, SystemMemory, Add (\XBAS, 0x000E4000), 0x1000)
        Field (RPCX, DWordAcc, NoLock, Preserve)
        {
            Offset (0x328), 
                ,   19, 
            LNKS,   4
        }

        Device (PEGA)
        {
            Name (_ADR, One)  // _ADR: Address
            OperationRegion (ACAP, PCI_Config, Zero, 0xF0)
            Field (ACAP, DWordAcc, Lock, Preserve)
            {
                AVID,   16, 
                ADID,   16, 
                Offset (0x4C), 
                SSID,   32
            }
        }
    }

    Scope (\_SB.PCI0.RP05.DGFX)
    {
        Name (OMPR, 0x02)
        Name (ELCT, Zero)
        Name (VDID, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        OperationRegion (PCIS, PCI_Config, Zero, 0xF0)
        Field (PCIS, DWordAcc, Lock, Preserve)
        {
            VRID,   16, 
            Offset (0x2C), 
            SVID,   16, 
            SDID,   16, 
            Offset (0x4C), 
            WVID,   16, 
            WDID,   16
        }

        OperationRegion (PCAP, PCI_Config, \EECP (0x14), Field (PCAP, DWordAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                LCTL,   16
            })
        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            \_SB.ODGW (0x7700)
            SGPO (HLRS, One)
            SGPO (PWEN, One)
            \_SB.ODGW (0x7701)
            Sleep (0x012C)
            SGPO (HLRS, Zero)
            Sleep (0x64)
            Store (Zero, LNKD)
            While (LLess (LNKS, 0x07))
            {
                Sleep (One)
            }

            \_SB.ODGW (0x7702)
            Store (HVID, WVID)
            Store (HDID, WDID)
            If (LNotEqual (\_SB.PCI0.RP05.PEGA.AVID, 0xFFFF))
            {
                Store (Or (ShiftLeft (WDID, 0x10), WVID), \_SB.PCI0.RP05.PEGA.SSID)
            }

            Or (And (ELCT, 0x43), And (LCTL, 0xFFBC), LCTL)
            Notify (\_SB.PCI0.RP05, Zero)
            RDSS (One)
            Return (Zero)
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            \_SB.ODGW (0x8800)
            Store (LCTL, ELCT)
            Store (VRID, VDID)
            Store (SVID, HVID)
            Store (SDID, HDID)
            Store (One, LNKD)
            While (LNotEqual (LNKS, Zero))
            {
                Sleep (One)
            }

            Sleep (0x64)
            \_SB.ODGW (0x8801)
            SGPO (HLRS, One)
            SGPO (PWEN, Zero)
            Notify (\_SB.PCI0.RP05, Zero)
            RDSS (Zero)
            Return (Zero)
        }

        Method (_STA, 0, Serialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {
            Return (\_SB.PCI0.IGPU._DOD)
        }

        Device (DD01)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD01._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD01._DGS)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD02)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD02._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Return (\_SB.PCI0.IGPU.DD02._DCS)
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD02._DGS)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                Return (\_SB.PCI0.IGPU.DD02._BCL)
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (\_SB.PCI0.IGPU.DD02._BQC)
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                Return (\_SB.PCI0.IGPU.DD02._BCM)
                Arg0
            }
        }

        Device (DD03)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD03._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD03._DGS)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD04)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD04._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD04._DGS)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD05)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD05._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD05._DGS)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD06)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD06._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD06._DGS)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD07)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD07._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD07._DGS)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Device (DD08)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                Return (\_SB.PCI0.IGPU.DD08._ADR)
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                Return (\_SB.PCI0.IGPU.DD08._DGS)
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
            }
        }

        Method (SGPI, 1, Serialized)
        {
            If (And (SGMD, 0x0F))
            {
                If (LEqual (SGGP, One))
                {
                    ShiftRight (Arg0, 0x07, Local1)
                    And (Arg0, 0x7F, Arg0)
                    If (LLessEqual (Arg0, 0x5E))
                    {
                        Store (Add (Add (\GBAS, 0x0100), Multiply (Arg0, 0x08)), Local0)
                        OperationRegion (LGPI, SystemIO, Local0, 0x08)
                        Field (LGPI, ByteAcc, NoLock, Preserve)
                        {
                                ,   30, 
                            TEMP,   1
                        }

                        Store (TEMP, Local2)
                    }

                    If (LEqual (Local1, Zero))
                    {
                        Not (Local2, Local2)
                    }
                }
            }

            Return (And (Local2, One))
        }

        Method (SGPO, 2, Serialized)
        {
            If (And (SGMD, 0x0F))
            {
                If (LEqual (SGGP, One))
                {
                    ShiftRight (Arg0, 0x07, Local1)
                    And (Arg0, 0x7F, Arg0)
                    If (LEqual (Local1, Zero))
                    {
                        Not (Arg1, Arg1)
                    }

                    And (Arg1, One, Arg1)
                    If (LLessEqual (Arg0, 0x5E))
                    {
                        Store (Add (Add (\GBAS, 0x0100), Multiply (Arg0, 0x08)), Local0)
                        OperationRegion (LGPI, SystemIO, Local0, 0x08)
                        Field (LGPI, ByteAcc, NoLock, Preserve)
                        {
                                ,   31, 
                            TEMP,   1
                        }

                        Store (Arg1, TEMP)
                    }
                }
            }
        }

        Method (SGII, 1, Serialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GBAS, 0x0100), Multiply (Arg0, 0x08)), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   2, 
                    GPIM,   1, 
                    GINV,   1, 
                        ,   26, 
                    TEM1,   1, 
                    TEM2,   1
                }

                Return (GINV)
            }
        }

        Method (SGIO, 2, Serialized)
        {
            If (LLessEqual (Arg0, 0x5E))
            {
                Store (Add (Add (GBAS, 0x0100), Multiply (Arg0, 0x08)), Local0)
                OperationRegion (LGPI, SystemIO, Local0, 0x04)
                Field (LGPI, AnyAcc, NoLock, Preserve)
                {
                        ,   2, 
                    GPIM,   1, 
                    GINV,   1, 
                        ,   26, 
                    TEM1,   1, 
                    TEM2,   1
                }

                Store (Arg1, GINV)
            }

            Return (One)
        }
    }

    Scope (\_GPE)
    {
        Method (_L2C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \_SB.ODGW (0x9900)
            Store (\_SB.PCI0.RP05.DGFX.SGII (0x2C), Local0)
            XOr (One, Local0, Local0)
            \_SB.PCI0.RP05.DGFX.SGIO (0x2C, Local0)
            VDCE ()
            If (LEqual (\_SB.PCI0.RP05.DGFX.VDID, 0x1002))
            {
                Notify (\_SB.PCI0.IGPU, 0x81)
            }
        }
    }
}

