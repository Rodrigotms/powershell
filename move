
#script para mover usuários dentro de um arquivo txt no AD
#MUITO CUIDADO AO MOVER CONTAS!!
# script to move users inside a txt file in AD
# VERY CAREFUL WHEN MOVING ACCOUNTS!!



$usuarios = Import-Csv -Path "C:\mover\test.txt" #caminho onde estão as contas para ser movido
foreach ($usuario in $usuarios) {
    $samAccountName = $usuario.SamAccountName
    Get-ADUser -Identity $samAccountName | Move-ADObject -TargetPath "OU=Desativados,OU=Desabilitados,DC=dominio,DC=intra" #caminho onde será movida lista de usuários

