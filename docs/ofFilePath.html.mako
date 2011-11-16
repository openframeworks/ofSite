<%inherit file="_templates/docs.mako" />
___ofFilePath___
$$code(lang=c++)
string getFileExt(string filename)
$$/code



$$code(lang=c++)
string removeExt(string filename)
$$/code



$$code(lang=c++)
string addLeadingSlash(string path)
$$/code



$$code(lang=c++)
string addTrailingSlash(string path)
$$/code



$$code(lang=c++)
string removeTrailingSlash(string path)
$$/code



$$code(lang=c++)
string getPathForDirectory(string path)
$$/code



$$code(lang=c++)
string getAbsolutePath(string path, bool bRelativeToData=true)
$$/code



$$code(lang=c++)
bool isAbsolute(string path)
$$/code



$$code(lang=c++)
string getFileName(string filePath, bool bRelativeToData=true)
$$/code



$$code(lang=c++)
string getBaseName(string filePath)
$$/code



$$code(lang=c++)
string getEnclosingDirectory(string filePath, bool bRelativeToData=true)
$$/code



$$code(lang=c++)
string getCurrentWorkingDirectory()
$$/code



