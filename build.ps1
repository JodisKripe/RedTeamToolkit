$msbuild_loc=""

$toolfolders = gci -Path .\Tools\
foreach ($folder in $toolfolders){
    $any = gci -Path $folder.fullname | ? {$_.fulname -like "*.sln"}
    if($any -ne $null){
        echo $folder.fullname
        echo $any.fullname
        #WIP
        # This should build the .slns using msbuild.
        # Figuring out the .Net and C# reqs is being a task rn haha.
        echo "\n"
    }
}