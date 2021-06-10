# Template Flutter App

This repository is a template to getting started a new app using flutter

## Technologies

This respository use Flutter version 2.2.1  and Dart version 2.13.1. Furthermore is prepared to support null-safety so keep in mind that only install packages with null-safety tag. To check more informations about packages I recommend pub https://pub.dev/.

- We are using Slidy as package manager with Flutter Modular architecture to development.
- This respository work with MobX manager to apply reactivitiy on app, but I can assume that you know how manange reactivity, so if you don't want to use MobX just configure again slidy using follow command (on terminal):

> `slidy start`

## Architecture independent of Flutter Modular

### Shared Directory

We have a shared directory that has all support functions and code to our application and can be called by any module.

I already prepared a base structure to organize the app. You can se the following directories:

- Config - You can use this directory to create some codes to define patterns to your and some configurations. By default you have a class `Config` that already return some data found on .env file. I will explain more about this file later. For example, if you want to define a pattern can do this creating a function to be called and return the same `Json` format. 

- Models - You can use this directory to put your global models. For example, a `User` class.

- Repositories - This directory can be put in each module created on the app, it's responsible to do all `HTTP requests`, to use a repository you can pass in any store constructor and call some request function through a function on your store. 

- Services - The services are responsible to do interactions with local storage, database and another services on android device. I recommend to create an `Interface` when you are creating a service, because you can easily do a change of a package later. For example, I created the local storage service on this respository and I used the `Hive` package to do this task, but if you want to use the `SharedPreferences` package you can create a new file and implements the `ILocalStorageService`. It's so easy to maintain, right?

- Stores - You can put on this directory all global store that you go use on your app. Don't forget that register them in app_module file.

- Utils - This directory is responsible to mantain all constants information that you need to use for your app. For example, if you want to define a baseUrl for you `HTTP requests` can do this create a single constant variable. 

> const baseUrl = 'http://host:port';

### Environment Variables

You can declare some enviroment variables in the `.env` file, and use the `DotEnv` package to get them.

> Don't forget the add this file inside the `.gitignore` file! By default I already added for you.

### Modules

To facilitate when you are building a new module for the app I recommend to use the following commands (on terminal):

- slidy g (or generate) m (or module) modules/`${path_new_module}`

> This command will create a new directory for the new module.

Example:

```
slidy g m modules/home
```

- slidy g (or generate) mobx modules/`${path_new_module}`/`${name_store}`

Example:

```
slidy g mobx modules/home/home
```

> This command will create a new mobx file for the new module. Make sure if already imported on the module file. If don't you need to declare the store file in the Bind List like following code:

```
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    //if is need include more here
  ];
```

- slidy g (or generate) or p (or page) modules/`${path_new_module}`/`${name_page}`

Example:

```
slidy g p modules/home/home
```

> This command will create a new page file for the new module. Make sure if already imported on the module file. If don't you need to declare the page file in the ModularRoute List like following code:

```
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
  ];
```

### Extra

If you want to create widgets by the module so use this follwing code:

```
slidy g w (or widget) modules/home/custom_widget
```

### Build Runner

Build Runner is a package to create your store.g.dart files to complement your Mobx Stores, always you go to work you need to run the build runner. For make this more practice I already create a script command to run it. You just need to run the following code (on terminal):

Usage:

```
slidy run mobx
```

I recommend to open a new terminal to do other things and just keep the last terminal for the build runner. Each changes on any store files will trigger the build runner and prepare your stores with the new modifies.

> Note: You can receive a error after you clone this repository and not run pub get packages, so if you try run the script command you will receive a error message requiring for you get packages before use the script. So you can open the `pubspec.yaml` file and just save it (Ctrl + s). Done.

## Note

Make sure that you are developing the app thinking in micro apps architecture, if you don't know what I'm talking go to study it. Before do this keep calm, 'cause it's easy to learn, you just have to keep in your mind that **NEVER** will need to use something code from another module that not is the parent of the current module which you are working.

## Ending

If you understand all instructions contained on this paper I wish good luck to you, and go fast to work with Flutter Apps using Slidy as package manager and following the Flutter Modular architecture. Thanks for read!
