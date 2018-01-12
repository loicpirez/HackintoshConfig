/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-9.aml, Sat Dec 30 02:43:12 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000706 (1798)
 *     Revision         0x01
 *     Checksum         0xE3
 *     OEM ID           "SaSsdt"
 *     OEM Table ID     "SaSsdt "
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20110112 (537985298)
 */
DefinitionBlock ("", "SSDT", 1, "SaSsdt", "SaSsdt ", 0x00003000)
{
    External (_SB_.PCI0, DeviceObj)    // Warning: Unknown object

    OperationRegion (SANV, SystemMemory, 0xABF79E18, 0x009C)
    Field (SANV, AnyAcc, Lock, Preserve)
    {
        SARV,   32, 
        IMON,   8, 
        IGDS,   8, 
        IBTT,   8, 
        IPAT,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        GSMI,   8, 
        KSV0,   32, 
        KSV1,   8, 
        BBAR,   32, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ALFP,   8, 
        AUDA,   32, 
        AUDB,   32, 
        AUDC,   32, 
        DIDC,   32, 
        DIDD,   32, 
        DIDE,   32, 
        DIDF,   32, 
        CADR,   32, 
        CCNT,   32, 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        PWEN,   8, 
        PRST,   8, 
        CPSP,   32, 
        EECP,   8, 
        EVCP,   16, 
        XBAS,   32, 
        GBAS,   16, 
        SGGP,   8, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        LTRA,   8, 
        OBFA,   8, 
        LTRB,   8, 
        OBFB,   8, 
        LTRC,   8, 
        OBFC,   8, 
        SMSL,   16, 
        SNSL,   16, 
        P0UB,   8, 
        P1UB,   8, 
        P2UB,   8, 
        EDPV,   8, 
        NXDX,   32, 
        DIDX,   32, 
        PCSL,   8, 
        SC7A,   8
    }

    Scope (\_SB.PCI0)
    {
        Device (B0D3)
        {
            Name (_ADR, 0x00030000)  // _ADR: Address
            Name (BARA, 0x80000000)
            Name (TBAR, 0x00)
            Name (TCMD, 0x00)
            Name (MODB, 0x00)
            Name (MODC, 0x00)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LNotEqual (AUVD, 0xFFFF))
                {
                    Return (0x0F)
                }

                Return (0x00)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), 0x00)))
                {
                    Store (ABAR, BARA)
                }
            }

            OperationRegion (RPCS, SystemMemory, \XBAS, 0x00018040)
            Field (RPCS, AnyAcc, NoLock, Preserve)
            {
                Offset (0x18004), 
                ACMD,   8, 
                Offset (0x18010), 
                ABAR,   32
            }

            OperationRegion (RPCZ, PCI_Config, 0x00, 0x40)
            Field (RPCZ, DWordAcc, Lock, Preserve)
            {
                AUVD,   16
            }

            Method (ASTR, 0, Serialized)
            {
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), 0x00)))
                {
                    And (ABAR, 0xFFFFFFF0, BBAR)
                    Add (BBAR, 0x1000, BBAR)
                    OperationRegion (RPCY, SystemMemory, BBAR, 0x25)
                    Field (RPCY, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x0C), 
                        EM4W,   32, 
                        EMWA,   32, 
                        Offset (0x1C), 
                        ADWA,   32
                    }

                    Store (AUDA, EMWA)
                    Store (AUDB, ADWA)
                    Store (AUDC, EM4W)
                }
            }

            Method (VSTR, 1, Serialized)
            {
                Name (CONT, 0x03E8)
                Name (ADDR, 0x80000000)
                Store (Arg0, ADDR)
                OperationRegion (CCDC, SystemMemory, ADDR, 0x04)
                Field (CCDC, ByteAcc, NoLock, Preserve)
                {
                    CDEC,   32
                }

                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), 0x00)))
                {
                    If (LNotEqual (CDEC, 0x00))
                    {
                        And (ABAR, 0xFFFFFFF0, BBAR)
                        OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                        Field (IPCV, DWordAcc, NoLock, Preserve)
                        {
                            Offset (0x60), 
                            AVIC,   32, 
                            Offset (0x68), 
                            AIRS,   16
                        }

                        Store (0x03E8, CONT)
                        While (LAnd (LEqual (And (AIRS, 0x01), 0x01), LNotEqual (CONT, 0x00)))
                        {
                            Stall (0x01)
                            Decrement (CONT)
                        }

                        Or (AIRS, 0x02, AIRS)
                        Store (CDEC, AVIC)
                        Or (AIRS, 0x01, AIRS)
                        Store (0x03E8, CONT)
                        While (LAnd (LEqual (And (AIRS, 0x01), 0x01), LNotEqual (CONT, 0x00)))
                        {
                            Stall (0x01)
                            Decrement (CONT)
                        }
                    }
                }
            }

            Method (CXDC, 0, Serialized)
            {
                Name (IDDX, 0x80000000)
                If (LAnd (LNotEqual (CADR, 0x00), LNotEqual (CCNT, 0x00)))
                {
                    Store (CADR, IDDX)
                    While (LLess (IDDX, Add (CADR, Multiply (CCNT, 0x04))))
                    {
                        VSTR (IDDX)
                        Add (IDDX, 0x04, IDDX)
                    }
                }
            }

            Method (ARST, 0, Serialized)
            {
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), 0x00)))
                {
                    And (ABAR, 0xFFFFFFF0, BBAR)
                    OperationRegion (IPCV, SystemMemory, BBAR, 0xBF)
                    Field (IPCV, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x08), 
                        CRST,   32, 
                        Offset (0x4C), 
                        CORB,   32, 
                        Offset (0x5C), 
                        RIRB,   32, 
                        Offset (0x80), 
                        OSD1,   32, 
                        Offset (0xA0), 
                        OSD2,   32
                    }

                    And (CORB, 0xFFFFFFFD, CORB)
                    And (RIRB, 0xFFFFFFFD, RIRB)
                    And (OSD1, 0xFFFFFFFD, OSD1)
                    And (OSD2, 0xFFFFFFFD, OSD2)
                    And (CRST, 0xFFFFFFFE, CRST)
                }
            }

            Method (AINI, 0, Serialized)
            {
                Name (CONT, 0x03E8)
                If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (ABAR, 0xFFFFC000), 0x00)))
                {
                    And (ABAR, 0xFFFFFFF0, BBAR)
                    OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                    Field (IPCV, DWordAcc, NoLock, Preserve)
                    {
                        GCAP,   16, 
                        Offset (0x08), 
                        GCTL,   32, 
                        Offset (0x0E), 
                        SSTS,   8, 
                        Offset (0x60), 
                        AVIC,   32, 
                        Offset (0x68), 
                        AIRS,   16
                    }

                    Or (GCTL, 0x01, GCTL)
                    Store (0x03E8, CONT)
                    While (LAnd (LEqual (And (GCTL, 0x01), 0x00), LNotEqual (CONT, 0x00)))
                    {
                        Stall (0x01)
                        Decrement (CONT)
                    }

                    And (GCAP, 0xFFFF, GCAP)
                    Or (SSTS, 0x0F, SSTS)
                    And (GCTL, 0xFFFFFFFE, GCTL)
                    Store (0x03E8, CONT)
                    While (LAnd (LEqual (And (GCTL, 0x01), 0x01), LNotEqual (CONT, 0x00)))
                    {
                        Stall (0x01)
                        Decrement (CONT)
                    }

                    Or (GCTL, 0x01, GCTL)
                    Store (0x03E8, CONT)
                    While (LAnd (LEqual (And (GCTL, 0x01), 0x00), LNotEqual (CONT, 0x00)))
                    {
                        Stall (0x01)
                        Decrement (CONT)
                    }
                }
            }

            Method (ABWA, 1, Serialized)
            {
                If (Arg0)
                {
                    If (LOr (LEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LEqual (And (ABAR, 0xFFFFC000), 0x00)))
                    {
                        If (LNotEqual (BARA, 0x80000000))
                        {
                            Store (ABAR, TBAR)
                            Store (ACMD, TCMD)
                            Store (BARA, ABAR)
                            Store (0x06, ACMD)
                            Store (0x01, MODB)
                        }
                    }
                    ElseIf (LNotEqual (And (ACMD, 0x06), 0x06))
                    {
                        Store (ACMD, TCMD)
                        Store (0x06, ACMD)
                        Store (0x01, MODC)
                    }
                }
                Else
                {
                    If (MODB)
                    {
                        If (LEqual (ABAR, BARA))
                        {
                            Store (TBAR, ABAR)
                            Store (TCMD, ACMD)
                        }
                    }

                    If (MODC)
                    {
                        Store (TCMD, ACMD)
                    }
                }
            }
        }
    }
}

