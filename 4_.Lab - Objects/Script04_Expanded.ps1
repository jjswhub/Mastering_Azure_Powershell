/b# Objects - Custom Objects - Expanded Examples

# Original example from Script04.ps1
$Course=[PSCustomObject]@{
    Id = 1
    Name = 'AZ-104 Azure Administrator'
    Rating = 4.7
}

$Course

# Creating multiple objects and storing them in an array
$CourseList=@(
    [PSCustomObject]@{
        Id = 1
        Name = 'AZ-104 Azure Administrator'
        Rating = 4.7
    },
    [PSCustomObject]@{
        Id = 2
        Name = 'AZ-204 Azure Developer'
        Rating = 4.5
    },
    [PSCustomObject]@{
        Id = 3
        Name = 'AZ-305 Azure Solutions Architect'
        Rating = 4.8
    }
)

$CourseList

# Demonstrating object properties and methods
Write-Host "=== Object Properties ==="
Write-Host "Course Name: $($Course.Name)"
Write-Host "Course Rating: $($Course.Rating)"

# Demonstrating array operations
Write-Host "`n=== Array Operations ==="
Write-Host "Number of courses: $($CourseList.Count)"
Write-Host "First course name: $($CourseList[0].Name)"

# Filtering objects in an array
Write-Host "`n=== Filtering ==="
$HighRatedCourses = $CourseList | Where-Object {$_.Rating -gt 4.6}
Write-Host "High rated courses (rating > 4.6):"
$HighRatedCourses

# Adding new properties to existing objects
Write-Host "`n=== Adding Properties ==="
$Course | Add-Member -NotePropertyName "Instructor" -NotePropertyValue "John Smith"
$Course | Add-Member -NotePropertyName "Duration" -NotePropertyValue "20 hours"
Write-Host "Course with new properties:"
$Course

# Creating objects with different data types
Write-Host "`n=== Different Data Types ==="
$ComplexCourse = [PSCustomObject]@{
    Id = 1
    Name = 'AZ-104 Azure Administrator'
    Rating = 4.7
    IsCertification = $true
    Price = 299.99
    ReleaseDate = (Get-Date "2023-01-15")
    Tags = @('Azure', 'Administration', 'Certification')
}

Write-Host "Complex course object:"
$ComplexCourse

# Working with nested objects
Write-Host "`n=== Nested Objects ==="
$CourseWithInstructor = [PSCustomObject]@{
    Id = 1
    Name = 'AZ-104 Azure Administrator'
    Instructor = [PSCustomObject]@{
        Name = 'John Smith'
        YearsOfExperience = 10
        Specialties = @('Azure', 'DevOps')
    }
}

Write-Host "Course with nested instructor object:"
$CourseWithInstructor

# Demonstrating object methods
Write-Host "`n=== Object Method Examples ==="
$Course | Add-Member -MemberType ScriptMethod -Name "GetInfo" -Value {
    return "Course: $($this.Name) - Rating: $($this.Rating)"
}

Write-Host "Using custom method:"
$Course.GetInfo()

# Converting between object types
Write-Host "`n=== Type Conversion ==="
$CourseAsHash = $Course | ConvertTo-HashTable
Write-Host "Course as hash table:"
$CourseAsHash

# Creating objects from CSV data
Write-Host "`n=== From CSV Data ==="
$csvData = @"
Id,Name,Rating
4,'AZ-400 Azure DevOps',4.6
5,'AZ-500 Azure Security',4.9
"@

$csvObjects = $csvData | ConvertFrom-Csv | ForEach-Object {
    [PSCustomObject]@{
        Id = $_.Id
        Name = $_.Name
        Rating = [double]$_.Rating
    }
}

Write-Host "Objects created from CSV:"
$csvObjects