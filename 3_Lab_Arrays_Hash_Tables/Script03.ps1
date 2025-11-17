$CourseVideos= 'Introduction','Installation','Variables'

$CourseVideos

$CourseNumbers=1,2,3
$CourseNumbers

$CourseVideos_1=@(
   'Introduction'
   'Installation'
   'Variables'
    
)

$CourseVideos_1

$CourseVideos_1[0]

$CourseVideos_1[1]='Configuration'

$CourseVideos_1

# Hash Tables
# Key/values - Comments

<# Hash Tables
Key/Values - Comments #>

$ServerNames=@{
   Development='Server01'
   Testing='Server02'
   Production='Server03'
}

$ServerNames['Development']
$ServerNames.Development
$ServerNames.Add('QA','Server04')
