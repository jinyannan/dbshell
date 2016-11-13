Dim ArrFiles(1 To 10000) '创建一个数组空间,用来存放文件名称
Dim cntFiles% '文件个数
Public Sub ListAllFiles()

Dim strPath$ '声明文件路径
Dim i%
'Set fso = CreateObject("Scripting.FileSystemObject")
Dim fso As New FileSystemObject, fd As Folder '创建一个FileSystemObject对象和一个文件夹对象
strPath = ThisWorkbook.Path & "\" '"设置要遍历的文件夹目录
cntFiles = 0
Set fd = fso.GetFolder(strPath) '设置fd文件夹对象
SearchFiles fd '调用子程序查搜索文件
Sheets(1).Range("A1").Resize(cntFiles) = Application.Transpose(ArrFiles) '把数组内的路径和文件名放在单元格中
End Sub
Sub SearchFiles(ByVal fd As Folder)
Dim fl As File
Dim sfd As Folder
For Each fl In fd.Files '通过循环把文件逐个放在数组内
cntFiles = cntFiles + 1
ArrFiles(cntFiles) = fl.Path
Next fl

If fd.SubFolders.Count = 0 Then Exit Sub 'SubFolders返回由指定文件夹中所有子文件夹（包括隐藏文件夹和系统文件夹）组成的 Folders 集合
For Each sfd In fd.SubFolders '在 Folders 集合进行循环查找
SearchFiles sfd '使用递归方法查找下一个文件夹
Next

End Sub
