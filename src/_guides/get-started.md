---
layout: guide
title: "Get Started"
description: "A guide to get you quickly writing web apps in Dart."
---

Follow these steps to start using Dart to develop web apps.

## 1. Play with DartPad

With DartPad you can experiment with the Dart language and APIs,
no download necessary.

For example, here's an embedded DartPad that lets you play with
the code for a superhero name generator.
Click run ( {% img 'red-run.png' %} ) to run the app.
You can also edit the source code—perhaps you'd like to add a "dog" suffix.
To get the full DartPad experience,
<a href="https://dartpad.dartlang.org/d01f9074dc1001595159ef2b4eb68a0d"
   target="_blank">open the example at dartpad.dartlang.org</a>.

<iframe
    src="{{site.custom.dartpad.embed-inline-prefix}}?id=d01f9074dc1001595159ef2b4eb68a0d&verticalRatio=60"
    width="100%"
    height="500px"
    style="border: 1px solid #ccc;">
</iframe>

More information:

* [DartPad documentation]({{site.dartlang}}/tools/dartpad)
* [Dart language tour]({{site.dartlang}}/guides/language/language-tour)
* [Dart library tour]({{site.dartlang}}/guides/libraries/library-tour)


## 2. Install Dart

Once you're ready to move beyond DartPad and develop real apps,
you need the Dart SDK and Dartium (a special build of Chromium with the Dart VM).

<ul class="tabs__top-bar">
    <li class="tab-link current" data-tab="tab-sdk-install-windows">Windows</li>
    <li class="tab-link" data-tab="tab-sdk-install-linux">Linux</li>
    <li class="tab-link" data-tab="tab-sdk-install-mac">Mac</li>
</ul>
<div id="tab-sdk-install-windows" class="tabs__content current" markdown="1">

The easiest way to install Dart on Windows is to use the
<a href="http://www.gekorm.com/dart-windows/" target="_blank">unofficial install wizard.</a>

<img src="images/installer-screenshot-no.png" alt="Screenshot of the Dart Setup Wizard"><br>

</div>
<div id="tab-sdk-install-linux" class="tabs__content" markdown="1">

You can use Aptitude to install the Dart SDK on Linux.

First, perform the following one-time setup:

{% prettify shell %}
sudo apt-get update
sudo apt-get install apt-transport-https
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
{% endprettify %}

Then install the Dart SDK:

{% prettify shell %}
sudo apt-get update
sudo apt-get install dart
{% endprettify %}

Finally, [download Dartium.](https://storage.googleapis.com/dart-archive/channels/stable/release/latest/dartium/dartium-linux-x64-release.zip)
</div>
<div id="tab-sdk-install-mac" class="tabs__content" markdown="1">

With [Homebrew](http://brew.sh/),
installing Dart is easy.

{% prettify shell %}
brew tap dart-lang/dart
brew install dart --with-content-shell --with-dartium
{% endprettify %}   
</div>
Please take note of the contents in the "Caveats" section listing the Dart SDK path and Dartium location. You'll need these in the next steps when setting up your IDE.

More information:
[installing and updating Dart]({{site.dartlang}}/install)


## 3. Get WebStorm

Although using an IDE is optional, we highly recommend WebStorm.
WebStorm comes with Dart support,
making it easy to write correct Dart code and to run it
in Dartium or any other browser.

<a href="http://www.jetbrains.com/webstorm/download/">Download and install WebStorm.</a>

More information: [Dart tools for the web](/tools)


## 4. Create and run a web app

We recommend using Angular for your Dart web apps.
Here's how to use WebStorm to create a web app that uses Angular:

1. Choose **Create New Project** from WebStorm's welcome screen,
or **File > New > Project...** from the menu.  A dialog appears.
1. Choose **Dart** from the list on the left.
1. If the **Dart SDK path** and **Dartium path** fields don't have values, enter them. 
1. Edit the **Location** field to set the app location and name. 
1. Select **Generate sample content** to show the list of templates.
1. Choose the **Angular Web Application** template.
1. Click **Create**.
![WebStorm screenshot](images/create-ng2-project.png)

To run the app from WebStorm, right-click the app's `web/index.html` file and choose
**Run 'index.html'**.

![Running the app from WebStorm](images/run-app-in-ws.png)

{% include pub-get-workaround.html %}

More information:

* [Installing and using WebStorm](/tools/webstorm)
* [Setup for Angular development](/angular/guide/setup)


## 5. Add custom code to the app

Let's customize the app you just created.

<ol markdown="1">
<li markdown="1">
  Copy the `buildNames()` function from the DartPad above
  to the bottom of the `lib/app_component.dart` file.
</li>

<li markdown="1">
  Still in `lib/app_component.dart`, add a `heroes` field to the `AppComponent` class:

{% prettify dart %}
class AppComponent {
  [[highlight]]List<String> heroes = buildNames().toList();[[/highlight]]
}
{% endprettify %}
</li>

<li markdown="1">
  Edit the corresponding template, `lib/app_component.html`,
  changing the code to the following:

{% prettify html %}{% raw %}
<h1>My First AngularDart App</h1>

[[highlight]]<ul>[[/highlight]]
  [[highlight]]<li *ngFor="let hero of heroes">[[/highlight]]
    [[highlight]]{{ hero }}[[/highlight]]
  [[highlight]]</li>[[/highlight]]
[[highlight]]</ul>[[/highlight]]
{% endraw %}{% endprettify %}

  This code uses the Angular's `*ngFor` syntax to loop through
  the component's `heroes` list.
  At runtime, Angular creates an `<li>` element for each item in `heroes`,
  replacing `{% raw %}{{ hero }}{% endraw %}`
  with the current item's value (a hero's name).
</li>

<li markdown="1">
  Run the app. You should see the list of heroes! 

  ![Running the customized app from WebStorm](images/run-customized-app.png)
</li>
</ol>


<aside class="alert alert-info" markdown="1">
**Feeling lost? Don't worry!**
This was a whirlwind introduction to Dart and Angular
that left out many details.
For a gentler approach, try the code lab
[Avast, Ye Pirates: Write an Angular App.](/codelabs/ng2/)
</aside>


## What next?

[Learn more about AngularDart.](/angular)

Or check out these resources:

* Dart webdev tutorials and code labs
  * [Tutorials](/tutorials)
  * [Code Labs](/codelabs)
* Dart language, libraries, and conventions
  * [Sample Code]({{site.dartlang}}/samples)
  * [Language Tour]({{site.dartlang}}/guides/language/language-tour)
  * [Library Tour]({{site.dartlang}}/guides/libraries/library-tour)
  * [Effective Dart]({{site.dartlang}}/guides/language/effective-dart)
* Tools & libraries
  * [Dart SDK]({{site.dartlang}}/tools/sdk)
  * [Dartium](/tools/dartium)
  * [Dart Tools for the Web](/tools)
  * [IDEs]({{site.dartlang}}/tools#ides)
  * [Web Libraries](/guides/web-programming)

If you get stuck, find help at [Community and Support.](/community)
