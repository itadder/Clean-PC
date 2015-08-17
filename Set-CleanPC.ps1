# Create Function Skelton
function Set-ITCleanPC{
[cmdletBinding()]
param(
	[Parameter(Mandatory=$True, # Required to use a Parameter
				ValueFromPipeline=$True, # Allow Value from | Pipeline 
				ValueFromPipelineByPropertyName=$True)] # Allow a Object to attach it properties to the computername Parameter
	[Alias('hostname')]
	[string[]]$Computername, #[string[it an array]] even if only one

	[switch] $namelog # Create a log files of all the computers it tries. Delcared as datatype Switch will declare auto set to false run with out -$namelog we can test if true or false.

)
	BEGIN {}
	PROCESS {
	foreach($computer in $computername){
		Write-Host $computer
		Write-Warning "Finding and Cleaning Malware KIT"
		#excute cmd line scanners set as PS JObs with logging to a log file at the end.
		#I will create the logic so that each scanners runs / cleans  and logs to a file after it is done.
	}

	} # my paramters work here
	END {}
}
Set-ITCleanPC -Computername localhost
#Set-ITCleanPC -Computername WIN-1FBI7QI2NPL,localhost
#Set-Content C:\temp\Computers.txt |Get-ITCleanPC #Value by Pipeline
#Set-ITCleanPC -host WIN-1FBI7QI2NPL #Alias
#Get-adComputer -filter * | Select-Object @{n='ComputerName';e{$_.Name}} | Set-ITCleanPC