// save as SSDT-DiscreteSpoof.aml
DefinitionBlock ("", "SSDT", 2, "hack", "spoof", 0)
{
    Method(_SB.PCI0.RP05.DGFX._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return (Package()
        {
            "name", Buffer() { "#display" },
            "IOName", "#display",
            "class-code", Buffer() { 0xFF, 0xFF, 0xFF, 0xFF },
        })
    }
}