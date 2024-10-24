WriteBytesToFile Function

    Purpose: Writes binary data to a specified file path.
    Parameters:
        $filePath: The path where the file will be saved.
        $fileBytes: The binary data to write to the file.

ExecuteFile Function

    Purpose: Executes a file located at the given path.
    Parameters:
        $filePath: The path of the file to execute.

DownloadDataFromUrl Function

    Purpose: Downloads data from a specified URL using the Net.WebClient class.
    Parameters:
        $url: The URL from which to download data.
    Notes:
        Sets the security protocol to TLS 1.2 to ensure secure communication.

Main Function

    Purpose: Orchestrates the downloading and saving of Resume.pdf and ss.exe to the user's AppData directory.
    Process:
        Resume.pdf:
            Checks if Resume.pdf exists in the AppData directory.
            If not, downloads it from hXXps://awall[.]shop/#####/Resume.pdf and saves it.
        ss.exe:
            Checks if ss.exe exists in the AppData directory.
            If not, downloads it from hXXps://awall[.]shop/#####/ss.exe and saves it.

Execution

    The Main function is called to execute the defined operations.