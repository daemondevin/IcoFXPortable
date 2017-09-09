In attention of language file translators!

1) Before You Start

IcoFX uses non-Unicode language files. 
You need to configure Windows in such a way 
that it supports the non-Unicode language files.
Please select the desired language at: 
Control Panel -> Regional And Language Options -> 
Advanced -> Language for non-Unicode Programs. 
This will allow IcoFX to show the language files correctly.

!!! Before you start the translation make sure that 
there it is not already translated. Use the 
Options/Languages/Download languages..." nemu point. Here 
you can see the already translated languages !!!


2) The Language File

The language file is nothing more than a standard INI file. 
It contains sections and key-value pairs. For example 
“actnTools.Caption=Tools” here the “actnTools.Caption” 
is the key and “Tools” is the value. 
You need to translate ONLY the values. 
Usually each window of IcoFX has a separate section. 
All the general texts are stored in the section “MSG”. 


3) The “General” Section

Each language file starts with a “General” section. 
IcoFX uses the Version key when downloading language files.
If it has a newer version the old one will be overwritten.
The Author and WebAddress keys are used to display information
about the translater in the Acknowledgements section of the
About box.
The following keys are defined in this section:

Version – The version of the language file
IcoFXVersion – The version of IcoFX 
Author – The name of the translator (You)
WebAddress – Web page of the translator 
Comment – Additional comments of the translator


4) Finished Translating

The language file must be located in the Languages directory.
If a language file was successfully translated, then please send it to 
icofxsoftware@gmail.com, so I can post it on the web page of IcoFX to be 
available for other users. 


5) Acknowledgments

The name included in the “Author” key and the web adress in the 
"WebAddress" key of the “General” section will be automatically shown 
in the Acknowledgements section of the About box if the language 
file is selected. If you do not want your name and webaddress to appear 
in the Acknowledgements section of the About box then leave these fields 
empty.

Thank you!
Attila Kovrig
http://icofx.ro