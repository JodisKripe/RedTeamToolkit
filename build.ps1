$toolfolders = gci -Path .\Tools\
foreach ($folder in $toolfolders){
    $any = gci -Path $folder.fullname | ? {$_.fulname -like "*.sln"}
    if($any -ne $null){
        echo $folder.fullname
        echo $any.fullname
        #WIP
        echo "\n"
    }
}