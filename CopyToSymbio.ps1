param(
    [Parameter(Mandatory=$true,ValueFromPipeline=$true)]
    [ValidateScript({Test-Path $_})]
    [String]
    $symbioRepositoryFolder
)

$currentDir = (Get-Location).Path

Write-Host "Copying mxClient.js to Symbio repository... " -NoNewline
Copy-Item -Path "$currentDir\javascript\mxClient.js" -Destination "$symbioRepositoryFolder\src\Symbio.Web\Scripts\920_DiagramEditor_Client"
Write-Host "Done"

Write-Host "Copying grapheditor files to Symbio repository... " -NoNewline
$files = Get-ChildItem -Path "$currentDir\javascript\examples\grapheditor\www\js\";
foreach ($file in $files) {
    if ($file.Name -eq "Init.js") {
        Copy-Item -Path $file.FullName  -Destination "$symbioRepositoryFolder\src\Symbio.Web\Scripts\920_DiagramEditor_Client"
    } else {
        Copy-Item -Path $file.FullName  -Destination "$symbioRepositoryFolder\src\Symbio.Web\Scripts\940_DiagramEditor_Controls"
    }
}
Write-Host "Done"

Write-Host "Copying styles to Symbio repository... " -NoNewline
Copy-Item -Path "$currentDir\javascript\examples\grapheditor\www\styles\grapheditor.css" -Destination "$symbioRepositoryFolder\src\Symbio.Web\Styles\500_DiagramEditor"
Copy-Item -Path "$currentDir\javascript\src\css\*" -Destination "$symbioRepositoryFolder\src\Symbio.Web\Styles\500_DiagramEditor"
Write-Host "Done"

Write-Host "Copying resources to Symbio repository... " -NoNewline
Copy-Item -Path "$currentDir\javascript\examples\grapheditor\www\resources\grapheditor.txt" -Destination "$symbioRepositoryFolder\src\Symbio.Base.Resources\Files"
Copy-Item -Path "$currentDir\javascript\examples\grapheditor\www\resources\grapheditor_de.txt" -Destination "$symbioRepositoryFolder\src\Symbio.Base.Resources\Files"
Write-Host "Done"

Write-Host "Copying grapheditor dependent libraries to Symbio repository... " -NoNewline
Copy-Item -Path "$currentDir\javascript\examples\grapheditor\www\sanitizer\*"  -Destination "$symbioRepositoryFolder\src\Symbio.Web\Scripts\900_DiagramEditor_Base"
Copy-Item -Path "$currentDir\javascript\examples\grapheditor\www\jscolor\jscolor.js"  -Destination "$symbioRepositoryFolder\src\Symbio.Web\Scripts\900_DiagramEditor_Base"
Write-Host "Done"

