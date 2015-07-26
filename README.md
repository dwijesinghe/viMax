# viMinder

This plugin was designed to allow Vim users the ability to schedule reminders quickly from within Vim. The plugin wraps around the Windows schtasks utility so it is currently Windows only. If you know of similar utilities on Mac or Linux machines feel free to send me a feature request/contribute.

#Installation

## Install using Pathogen 

viMinder is packaged to be easily downloadable/updateable via the Pathogen plugin.

1. Install [pathogen.vim] into `~/.vim/autoload/` (see [pathogen's
   readme][install-pathogen] for more information.)

[pathogen.vim]: http://www.vim.org/scripts/script.php?script_id=2332
[install-pathogen]: https://github.com/tpope/vim-pathogen#installation

2. Enable pathogen in your vimrc:

   ```vim
   call pathogen#infect()
   ```

3. Create the directory `~/vimfiles/bundle/`:

        mkdir ~/vimfiles/bundle

4. Clone the `viMinder` repo into `~/vimfiles/bundle/`:

        git clone https://github.com/dwijesinghe/viMinder.git ~/vimfiles/bundle/viMinder/

To Update:
Run git pull from within ~/vimfiles/bundle/viMinder/

## Install using Zip file

The plugin can also be installed by downloading the zip file and copying the vim file to your user directory. You can then enable the plugin on startup by adding the following line to your .vimrc file:
 
 ```vim
 :source ~/viMinder.vim
 ```

#Usage

1. The first time you run Vim after installing viMinder, enter the following command. 

 ```vim
 :call SetupViminder()
 ```

 This will setup the folder where your viMinder files will be stored called ViMinders (creative, I know). Avoid modifying or deleting this folder as it may cause viMinder to stop working properly. The folder will be located within your ~ directory.

2. When you want to schedule a reminder for yourself, simply use ```\r``` to open a New Viminder panel. This will appear as a blank panel below your current buffer.

3. Navigate to the bottom panel. Go into insert mode.

4. Enter the text you want to remind yourself with, the date (MM/DD/YYYY) and the time you wish to be reminded (HH:MM 24 hr time) each separated by tabs. 

For example if I wanted a reminder to buy orange juice on the way home at 5:00 PM on February 21, 2015 I would enter the following

 ```
Buy orange juice  02/21/2015  17:00  
```

5. Exit insert mode. Press enter to save your new viMinder!

A command line prompt will notify you if your viMinder was saved successfully. If you receive any error messages, review the documentation for schtasks and try again. If you find a bug, please let me know. 

##Contributing
I welcome collaboration. Please maintain the general style of code and always feel free to poke me for additional information.


## License 

(The MIT License)

Copyright (c) 2015

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
