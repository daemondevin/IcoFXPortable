
;= NOTES
;= ################
1. Do not associate through IcoFX.
   Doing so will cause trash in the registry.
   Enable associations via IcoFXPortable.ini (read ASSOCIATIONS below)
   Refer to IcoFXPortable\App\AppInfo\Launcher\IcoFXPortable.ini

;= OFFLINE INSTALL
;= ################
This method will bypass online downloading.

For instance:
• If you would like to install with a specific version..
• If your Internet connection is incompatible..
• If the Installer is not working correctly..
• Or if you're a tech. who plan to install on multiple machines.

1. Download either .zip or .exe: http://icofx.ro/downloads.html
2. Place "icofx_portable.zip" or "icofxsetup.exe" next to IcoFXPortable_x.x.x_Multilingual_online.paf.exe
3. Install as normal

OPTIONALLY: pass -x or /x for extraction only.

;= ASSOCIATIONS
;= ################
It is super easy to add associations.

1. Navigate to: IcoFXPortable\App\AppInfo\Launcher
2. Open IcoFXPortable.ini with Notepad or any text editor
3. Scroll down to: [Associations]
4. Simply add desired associations underneath in numerical sequential order.

ie.
	[Associations]
	1=ico
	2=cur
	3=ani
	4=icns
	5=png

Supported filetypes:
ani, cur, ico, apng, bmp, cul, gif, icl, icns, ifx, j2k, jp2, jpg, jpeg, pm, 
png, xpm, tif, tiff.

NOTES:
• Adding too many can impact launch time.
• Windows XP cache icons which are visible even after exiting IcoFX.
• Windows 8.0 is problematic and may require unlocking for some filetypes:
  - Double-click file > select IcoFX from list
  this is due to Win8.0's implementation of a hash id for associations
• Do not associate through IcoFX!, which will leave trash in the registry.
• In addition, SendTo is available for un-associated but supported filetypes.

;= PRESERVE
;= ################
http://portableapps.com/manuals/PortableApps.comLauncher/ref/paf/installer.html

If there are any directories or files you'd like to preserve during upgrades or reinstalls:
- enter it in ..\App\AppInfo\installer.ini

Files example:
	[FilesToPreserve]
	PreserveFile1=App\file

Directories example:
	[DirectoriesToPreserve]
	PreserveDirectory1=App\directory

In addition, [DirectoriesToPreserve] & [FilesToPreserve] configurations are preserved.
