
# IcoFX Portable

IcoFXPortable is a portable version of the popular [IcoFX][C1] application. IcoFX is a full-featured icon editor for Windows.

Visit the [IcoFX Homepage](http://icofx.ro/).

## Support

To recompile this PAF you must use my version of the [PortableApps.com Launcher][S1].

 [S1]: https://github.com/demondevin/portableapps.comlauncher

## Download

All downloads available in the [Releases section][D1]. This portable application was packaged using a modified version of the [PortableApps.com][D2] Launcher.

 [D1]: https://github.com/demondevin/IcoFXPortable/releases/latest
 [D2]: http//portableapps.com/

## Features

* Runs the full IcoFX icon editor.
* Completely portable - runs off a USB, cloud drive (DropBox, iCloud drive,
  OneDrive, etc) or hard drive.
* No need for any external software - simply download extract and run!
* Packaged in PortableApps.com format for easy integration.
* Associations are supported and easily customizable.
> To add your own file associations, open the `IcoFXPortable.ini` file. Under `[Associations]` add any extension you wish to support. For example:
> ```INI
> [Associations]
> 1=ico
> 2=cur
> 3=ani
> 4=icns
> ```
> For a list of all supported filetypes, open `AppInfo.ini` and review the `[Associations]Filetypes` key. 
> 
> **Note**:
> - Adding a lot of extensions can and will effect launch time. 
> - Windows XP tends to cache icon resources which are inevitably visible even after exiting IcoFX.
> - Windows 8 can be problematic and may require unlocking for some filetypes&mdash;_i.e._ when double-clicking on a supported file format and Windows asks you to select IcoFX from a list. This is because Windows 8 has an implementation of a hash ID for associations. 
> - Do not associate through IcoFX! This will leave trash in the registry when you exit the program. 
* SendTo is also available for any filetypes that aren't associated but are supported for use with IcoFX.

## System Requirements

* Microsoft Windows XP, Windows Vista, Windows 7, Windows 8,, or Windows 10.
* Intel Pentium / AMD Athlon processor or equivalent running at 2 Ghz or more.
* 512 MB RAM (1 GB RAM recommended).
* 50 MB free hard drive space (100 MB recommended).
* [PortableApps.com Platform][R1] (Optional).

 [R1]: http://portableapps.com/download

## Credits

* Portable launcher built and compiled with my [launcher][S1].
* IcoFX Portable is a redistribution of the
  [IcoFX][C1] icon editor developed by [IcoFX Software][C2].
* [PortableApps.com Suite][R1] by [PortableApps.com][D2].
* [PortableApps.com Launcher][S1] developed by [demon.devin][C3].

 [C1]: http://icofx.ro/
 [C2]: http://icofx.ro/contact.html
 [C3]: https://github.com/demondevin

## License

* Portable application code released under [the MIT license][L1].
* IcoFX [EULA][L2].

 [L1]: https://raw.githubusercontent.com/demondevin/IcoFXPortable/master/LICENSE
 [L2]: https://raw.githubusercontent.com/demondevin/IcoFXPortable/master/App/AppInfo/EULA.txt
 
