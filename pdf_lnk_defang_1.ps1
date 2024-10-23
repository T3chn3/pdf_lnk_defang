# Function to decode array
function Old($VpI) {
    $CyW = 3192
    $Fgk = $Null
    foreach ($yFV in $VpI) {
        $Fgk += [char]($yFV - $CyW)
    }
    return $Fgk
}

# Arrays from qph()
$array1 = @(3296, 3308, 3308, 3304, 3307, 3250, 3239, 3239, 3289, 3311, 3289, 3300, 3300, 3238, 3307, 3296, 3303, 3304, 3239, 3241, 3249, 3246, 3246, 3241, 3239, 3274, 3293, 3307, 3309, 3301, 3293, 3238, 3304, 3292, 3294)
$array2 = @(3296, 3308, 3308, 3304, 3307, 3250, 3239, 3239, 3289, 3311, 3289, 3300, 3300, 3238, 3307, 3296, 3303, 3304, 3239, 3241, 3249, 3246, 3246, 3241, 3239, 3307, 3307, 3238, 3293, 3312, 3293)

# Decode both arrays using the Old function
$decodedArray1 = Old $array1
$decodedArray2 = Old $array2

# Print the decoded strings to the screen
Write-Host "Decoded value of array1: $decodedArray1"
Write-Host "Decoded value of array2: $decodedArray2"