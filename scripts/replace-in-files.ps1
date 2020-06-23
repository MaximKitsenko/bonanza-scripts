
$termsToReplace = @(
	("Territory","Project"),	
	("territory","project"),	
	("Territories","Projects"),	
	("territories","projects") 
)

$filesPath =@(
	 "C:\max-projects\ContractCardProjectAssignmentsControllerBulkRemoveTests.cs"
)
Write-Output "Replacing started: "

$termsToReplace | ForEach-Object {
	$termToSearch = $_[0]
	$termToReplace = $_[1]
	Write-Output ("    " + $termToSearch + " -> " + $termToReplace)
	$filesPath |  ForEach-Object {
		$filePath = $_
		(Get-Content -Path $filePath).Replace($termToSearch,$termToReplace)|Set-Content -Path $filePath
		Write-Output ("        " + $filePath)
	}
}
Write-Output "Finished"


