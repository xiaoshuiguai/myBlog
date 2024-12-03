
# windows 注册信息
```sh
DISM /online /Get-CurrentEdition
DISM /online /Set-Edition:ServerDatacenter /ProductKey:CB7KF-BWN84-R7R2Y-793K2-8XDDG /AcceptEula

slmgr /upk
slmgr.vbs /ipk CB7KF-BWN84-R7R2Y-793K2-8XDDG
slmgr.vbs /skms kms.lotro.cc
slmgr.vbs /ato
```