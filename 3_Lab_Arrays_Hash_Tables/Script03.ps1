$CouerseVideos= 'Introduction','Installation','Variables'

$CouerseVideos

$CourseNumbers=1,2,3
$CourseNumbers

$CouerseVideos_1=@(
   'Introduction'
   'Installation'
   'Variables'
    
)

$CouerseVideos_1

$CouerseVideos_1[0]

$CouerseVideos_1[1]='Configuration'

$CouerseVideos_1

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
