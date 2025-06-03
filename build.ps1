$msbuild_loc="C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe"
$nuget_loc="C:\Users\User\Downloads\nuget.exe" # update

$nuget_restore="$nuget_loc restore"


$toolfolders = gci -Path .\Tools\
foreach ($folder in $toolfolders){
    $any = gci -Path $folder.fullname | ? {$_.fullname -like "*.sln"}
    if($any -ne $null){
        echo $folder.fullname
	    cd $folder.fullname
        echo $any.fullname
	    & $nuget_loc restore
	    & $msbuild_loc $any.fullname
        #WIP
        # This should build the .slns using msbuild.
        # Figuring out the .Net and C# reqs is being a task rn haha.
    }
    else{
        $tool = gci -Path $folder.fullname 
        foreach($folder in $tool){
            $sol= gci -Path $folder | ? {$_.fullname -like "*.sln"}
            if($sol -ne $null){
                echo $folder.fullname
	            cd $folder.fullname
                & $nuget_loc restore
	            & $msbuild_loc $sol.fullname
            }
        }
    }
}
