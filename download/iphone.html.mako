<%inherit file="/_templates/markdown.mako" />

iphone setup
===========

There are a number of tutorials about ofxiPhone and development. We've tried to make it as easy as possible to get your code up and running on the iPhone as quickly as possible, but there's a ton of information to cover. If you need more help after following this tutorial, be sure and check out these others, or check out the iPhone section of the openFrameoworks forum.

- [Memo Akten's simple openFrameworks application on an iPhone tutorial][0]

- [Memo Akten's tutorial for getting started with ofxiPhone][1]

- [Zach Gage's comprehensive overview of ofxiPhone][2]

- [Jeff Crouse's oF-iPhone tutorial][3]

/////////////////////////////////////////

**ofxiPhone "quick"start tutorial**

Setting up your iPhone with xcode and Apple can either be really easy, or a total nightmare. Apple has made a lot of changes lately to make the process smoother. Hopefully this document will help ease the process further. I should note that apple changes and updates this process ALL THE TIME, so this might not be 100% accurate at your time of reading, but hopefully it will be close enough. If not, there's always the forum to look to for help, or google.

The first bit of this tutorial is for if you haven't yet gotten your provisioning profile from apple set up. If you have gotten it all set up, click [here][4] to skip that part.

First go to developer.apple.com, create an account if you do not already have one, and then apply to become an iPhone lisenced developer.

After paying the $99 fee, you should recieve an email with an activation code. If you click on the code in the email, it should take you to this page:

![1](http://www.openframeworks.cc/wp-content/uploads/2009/07/1.jpg)

Your code will probably have been automatically put into the text box, but if not, copy/paste it in, and hit Activate.

The next time you return to the developer.apple.com page, it will look like this. Click on the iPhone Developer Program Portal link in the sidebar

Your code will probably have been automatically put into the text box, but if not, copy/paste it in, and hit Activate.

The next time you return to the developer.apple.com page, it will look like this. Click on the iPhone Developer Program Portal link in the sidebar

![2](http://www.openframeworks.cc/wp-content/uploads/2009/07/2.jpg)

This will bring you to the provisioning profile section of the website. This is where you will set up your various provisioning profiles. Provisioning profiles allow you to digitally sign your code, which will allow you to put it on devices of your choosing, or release the program in the app store or via ad hoc distrobution. For now, we are just going to cover the steps involved with getting the code onto your device (and leave the selling your app steps for another time).

Click on the Launch Assistant button to start the provisioning assistant

![3](http://www.openframeworks.cc/wp-content/uploads/2009/07/3.jpg)

read the information and continue

![4](http://www.openframeworks.cc/wp-content/uploads/2009/07/4.jpg)

Type in the name of this App ID description. This is purely for your reference in identifying the profile, so you can call it whatever you want.

![5](http://www.openframeworks.cc/wp-content/uploads/2009/07/5.jpg)

Next you will have to enter the information for your testing device (your iPhone or iPod Touch that you will install your apps on.) It is possible to register multiple devices later, but Apple asks you to register one now. For the description, you can type whatever you want. I recomend just typing in the name of the phone. The Device ID number is available from xcode via the instructions under the device ID box. Another way to get to this information is to plug your device into iTunes and click on the 'serial number' field on the summary page. This will show the UDID\#, but it is not a great way to do it as you won't be able to copy/paste the number.

![6](http://www.openframeworks.cc/wp-content/uploads/2009/07/6.jpg)

if you do get the device ID through xcode, this is where it is and what the organizer window looks like:

![7](http://www.openframeworks.cc/wp-content/uploads/2009/07/7.jpg)

Next you will have to generate a certificate signing request. This part can get a little hairy

![8](http://www.openframeworks.cc/wp-content/uploads/2009/07/8.jpg)

First you will have to launch the Keychain Access application on your computer. It's located here:

![9](http://www.openframeworks.cc/wp-content/uploads/2009/07/9.jpg)

Then go to the Keychain Access / Certificate Assistant / Request a Certificate from a Certificate Authority menu item.

![10](http://www.openframeworks.cc/wp-content/uploads/2009/07/10.jpg)

![11](http://www.openframeworks.cc/wp-content/uploads/2009/07/11.jpg)

Make sure you click on the 'saved to disk' bubble, so that you don't have to enter a CA Email Address.

![12](http://www.openframeworks.cc/wp-content/uploads/2009/07/12.jpg)

Fill out the rest of the information, hit continue, and save the certificate somewhere on your computer that you will remember. Then, it's back to the the provisioning assistant.

![13](http://www.openframeworks.cc/wp-content/uploads/2009/07/13.jpg)

Click the browse button and find the certificate you just saved. After that is successful, you will have to name your provisioning profile. Again, you can name it anything. I recommend naming it \[your name\] dev. Since this will be your development profile. Hit Generate when you're done.

![14](http://www.openframeworks.cc/wp-content/uploads/2009/07/14.jpg)

Download the profile when promted. And then double click on it

![15](http://www.openframeworks.cc/wp-content/uploads/2009/07/15.jpg)

Double clicking on your profile should open up Xcode and add it to your device, if it doesn't open xcode, drag the provision to xcode. If it doesn't add it to your device, it's possible you mistyped your device's UDID. This can be fixed after you've finished going through this tutorial by going back to your program portal, going to the 'devices' tab, and changing the id in there, and then re-downloading your profile in the distribution tab.

![16](http://www.openframeworks.cc/wp-content/uploads/2009/07/16.jpg)

And now again, back to the provisioning assistant! Hit continue.

![17](http://www.openframeworks.cc/wp-content/uploads/2009/07/17.jpg)

Download your Development certificate, and save it somewhere memorable.

![18](http://www.openframeworks.cc/wp-content/uploads/2009/07/18.jpg)

Hit continue a bunch more times until the Assistant is over. You're almost there!

![19](http://www.openframeworks.cc/wp-content/uploads/2009/07/19.jpg)

Hit 'Done'. You should now be in the program portal. Click on the 'App ID's' tab in the left sidebar

![20](http://www.openframeworks.cc/wp-content/uploads/2009/07/20.jpg)

Scroll down until you see this box:

![21](http://www.openframeworks.cc/wp-content/uploads/2009/07/21.jpg)

Copy the random letters and numbers below description. (don't copy the .\* part, just the letters and numbers, this will be important in a few more steps).

  
Now, download the iPhone distrobution from [openframeworks.cc/download][5]. Navigate to one of the example applcations. I picked the Touch/Accel example

![22](http://www.openframeworks.cc/wp-content/uploads/2009/07/22.jpg)

open it up

![23](http://www.openframeworks.cc/wp-content/uploads/2009/07/23.jpg)

Click on the arrow next to 'Targets', and then double click on 'iPhone oF'

![24](http://www.openframeworks.cc/wp-content/uploads/2009/07/24.jpg)

The window that opens should look like this. Click on 'Build' from the choices up top

![25](http://www.openframeworks.cc/wp-content/uploads/2009/07/25.jpg)

In this window, click on the Configuration, and select All Configurations.

![26](http://www.openframeworks.cc/wp-content/uploads/2009/07/26.jpg)

Then go down to where the Code Signing Identity line is. Across from Any iPhone OS Device, click on where it says iPhone Developer: Mehmet Akten

![27](http://www.openframeworks.cc/wp-content/uploads/2009/07/27.jpg)

Select 'iPhone Developer' from the automatic profile selectors. This should make the current automatic selection be your profile.

![28](http://www.openframeworks.cc/wp-content/uploads/2009/07/28.jpg)

At this point you might also want to rename the project. You might especially want to rename it if there are spaces in the title. Since we released ofxiPhone, Apple changed their rules about spaces in app titles (you cannot have them), and compiling without removing the space will produce an error. (Changing the name from 'oF iPhone' to 'oFiPhone' will do for now).

![32](http://www.openframeworks.cc/wp-content/uploads/2009/07/32.jpg)

Close that window, and click the triangle next to the data folder. Double click on the info.plist file.

![29](http://www.openframeworks.cc/wp-content/uploads/2009/07/29.jpg)

Replace the part that says 'com.msavisuals' with the random numbers and letters you copied from the program portal a billion steps ago.

![30](http://www.openframeworks.cc/wp-content/uploads/2009/07/30.jpg)

It looked like this if you don't remember:

![21](http://www.openframeworks.cc/wp-content/uploads/2009/07/21.jpg)

![31](http://www.openframeworks.cc/wp-content/uploads/2009/07/31.jpg)

Once that's in, close and save the plist file, and hit Compile. Hopefully everything should just work! If you are on snow leopard with the new sdk and we haven't updated the examples yet you may need to change your base SDK to 3.0 so that it's not missing. This can be done in the target settings. Also, you will have to click on where it says 'device -- 2.2 | debug' in the screenshot above, and change that to Device -- 3.0 | Debug.

If everything works properly, xcode will ask to codesign from your keychain. Hit 'Always Allow'.

![33](http://www.openframeworks.cc/wp-content/uploads/2009/07/33.jpg)

See... Not so bad... Now go make something awesome!

[0]: http://www.memo.tv/openframeworks_on_iphone_sample_1
[1]: http://www.memo.tv/ofxiphone
[2]: http://wiki.openframeworks.cc/index.php?title=OfxiPhone_comprehensive_guide
[3]: http://www.jeffcrouse.info/uncategorized/openframeworks-on-iphone/
[4]: http://personal-editor.com/#skipProvisioning
[5]: http://www.openframeworks.cc/download


