function DocTable {
    [CmdletBinding()]
    [alias('DocumentimoTable', 'New-DocumentimoTable')]
    param(
        [Array] $DataTable,
        [Xceed.Document.NET.AutoFit] $AutoFit = [Xceed.Document.NET.AutoFit]::Window,
        [Xceed.Document.NET.TableDesign] $Design = [Xceed.Document.NET.TableDesign]::LightGrid,
        [Xceed.Document.NET.Direction] $Direction = [Xceed.Document.NET.Direction]::LeftToRight,
        [int] $MaximumColumns = 5,
        [string] $OverwriteTitle,
        [Xceed.Document.NET.Alignment] $OverwriteTitleAlignment = [Xceed.Document.NET.Alignment]::center,
        [nullable[System.Drawing.KnownColor]] $OverwriteTitleColor = [System.Drawing.KnownColor]::Black,
        [switch] $Transpose
    )
    [PSCustomObject] @{
        ObjectType              = 'Table'
        DataTable               = $DataTable
        AutoFit                 = $AutoFit
        Design                  = $Design
        Direction               = $Direction
        MaximumColumns          = $MaximumColumns
        OverwriteTitle          = $OverwriteTitle
        OverwriteTitleAlignment = $OverwriteTitleAlignment
        OverwriteTitleColor     = $OverwriteTitleColor
        Transpose               = $Transpose.IsPresent
    }
}