# resume_ui_daliy_task

<h1 align="center"> #️⃣6.1 List of Map#️⃣</h1>

<P align="center">
<h4 align="left">
  Q 1 . WAP to get user info from user and set it into map and print all info by the Map(minimum 10 fields required).</h4>
  <P>
  Code Answer :
    ```
           
          import 'dart:io';
            void main()
            {
            Map resume={
            'name':Null,
            'age':Null,
              'Course':Null,
              'college':Null,
              'year':Null,
              'skills':Null,
              'job experience':Null,
              'address':Null,
              'email':Null,
              'phone':Null,
            };
              for(String key in resume.keys)




              {
                stdout.write("enter the keys ${key} : ");
                resume[key]=stdin.readLineSync();
              }
              print("your resume is :");
      
      for(String key in resume.keys )
      {
        stdout.write("$key : ${resume[key]}\n ");
      }
    }

    ```
    

 
 
 </p>
</p>

<p align ="center">
  <h4 align="left">Q 2. What is List and Map ? (Defination,example,generics, predefine methods withn examples.)</h4>


```

   i> List :
    => Definition :
    A List is an ordered collection of elements. 
    Each element in a list is indexed starting from 0. 
    Lists can contain elements of any data type and can dynamically grow or shrink in size.
    
    => Exmple :
       List<String> myList = ['apple', 'banana', 'orange'];
    
     =>  Generics: 
      Dart also supports generics for Lists.
      In the example above, <String> specifies that the List can only hold String     
      objects.
    
    => Predefined Methods :
      i> Insert elements in List :
      ->   List.add(value);   => ("to add new element ").
         Exmple :
          ```bash
                        import 'dart:io';
                
                  void main() {
                    List <String> name = [];
                
                    print("Enter number of Name : ");
                    int n = int.parse(stdin.readLineSync()!);
                
                    for (int i = 0; i < n; i++) {
                      print("Enter Name : ");
                      String val = stdin.readLineSync()!;
                      name.add(val);
                    }
                
                    print(name);
                  }

          ```
      ->  List.addAll(List);  =>("to Add new list "),
      ->  List.Insert[index,value] =>("to add new element on the index")
      -> List.Insert.all(index,list) =>("to new list on lindex ")
     
       ii> Update element in list :
    
       -> list list_name[index]=vale;
    
       iii> Delete in list :
       
       ->List.remove(value),
       ->list.removeAt(index),
    
    
    ii>  Map:
    
    Definition: 
    => A Map in Dart is an unordered collection of key-value pairs. 
       Each key in a map must be unique. 
       Maps are used to associate keys with values for efficient data retrieval.
    
    Example:
    
    => Map<String, int> myMap = {'apple': 10, 'banana': 5, 'orange': 8};
    
    Generics: 
    -=> specify the types of keys and values in a Map. 
    In the example above, <String, int> specifies that the keys are Strings and the values are integers.
    
    Predefined Methods:
    
    -> remove(Object? key): Removes the entry for the specified key from the map if it is present.
    -> containsKey(Object? key): Returns true if the map contains the specified key.
    ->  keys: Returns an iterable containing all the keys in the map.
    
    Example :
    
    print(myMap['apple']); 
  ```
    
</p>

    


<h1 align="center"> #️⃣6.2 Status Bar & Device Orientation#️⃣#️</h1>
<P>
  <h1 align="center">System over lay for gobal </h1>
 
<P>

  code Exmple :
  
```bash
 
  void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
 SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
   statusBarColor: Colors.red
 ));
 SystemChrome.setPreferredOrientations([
   DeviceOrientation.landscapeLeft,
 DeviceOrientation.landscapeRight,
 ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Approutes.routes,
    );
  }
}

```


</p>
<h1 align="center">System over lay use in appbar</h1>
 
<P>
  code Exmple :
  
```bash
 
class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:SystemUiOverlayStyle(
          statusBarColor: Colors.green,

        ),
        title:Text('harsh ',style:TextStyle(color: Colors.black)),
      ),
      body: Column(

      ),
    );
  

```

</p>

</P>

<h1 align="center">#️⃣Login Page UI#️⃣</h1>
<h3 align="left">⚡Gmail Page⚡</h3>
<p>
  <img src="https://github.com/harshdusane2103/resume_ui_daliy_task/blob/master/gmail.png" width=22%,height=35%>
  <video src="https://github.com/harshdusane2103/resume_ui_daliy_task/assets/161817658/52763908-1bfd-4c8e-85d4-29a7e475e7b8">
</p>
    <h3 align="left">⚡Login -SingUp Page ⚡</h3>
<p>
  <img src="https://github.com/harshdusane2103/resume_ui_daliy_task2/blob/master/p1.png" width=22%,height=35%>
  <img src="https://github.com/harshdusane2103/resume_ui_daliy_task2/blob/master/p2.png" width=22%,height=35%>
  <img src="https://github.com/harshdusane2103/resume_ui_daliy_task2/blob/master/p3.png" width=22%,height=35%>
 
  
  <video src="https://github.com/harshdusane2103/resume_ui_daliy_task2/assets/161817658/da8fc507-446c-41c5-9ea8-79ca97a1000d">
</p>

<h1 align="center">#️⃣ Google Login Page With Validation#️⃣</h1>
        <p>
  <img src="https://github.com/harshdusane2103/resume_ui_daliy_task2/blob/master/email.png" width=60%,height=60%><br><br>
  <img src="https://github.com/harshdusane2103/resume_ui_daliy_task2/blob/master/password.png" width=60%,height=60%><br><br>
  <img src="https://github.com/harshdusane2103/resume_ui_daliy_task2/blob/master/sucess.png" width=60%,height=60%><br><br>
 
  
  <video src="https://github.com/harshdusane2103/resume_ui_daliy_task2/assets/161817658/7b83e523-4459-45e8-a8b1-a6138a7226b7"><br><br>
</p>
<h1 align="center">#️⃣ SnackBar & TextFormField #️⃣</h1><br><br>
<P> <img src="https://github.com/harshdusane2103/resume_ui_daliy_task2/blob/master/snack.png" width=22%,height=35%>
  <video src="https://github.com/harshdusane2103/resume_ui_daliy_task2/assets/161817658/705f1347-4df5-49ee-a348-cdf3bc7a5310">
</P>
<h1 align="center">#️⃣ Image Picker in Flutter #️⃣</h1><br><br>
<P> <img src="https://github.com/harshdusane2103/resume_ui_daliy_task2/blob/master/camera.png" width=22%,height=35%>
  <img src="https://github.com/harshdusane2103/resume_ui_daliy_task2/blob/master/image2.png" width=22%,height=35%>
  <video src="https://github.com/harshdusane2103/resume_ui_daliy_task2/assets/161817658/da28f9a4-cf6e-4785-ba80-7104a082c9ee">
</P>
<h1 align="center">#️⃣ ID Card's Registration Form#️⃣</h1><br><br>
<p><img src="https://github.com/harshdusane2103/resume_ui_daliy_task2/blob/master/id.png" width=22%,height=35%></p>

<h1 align="center">#️⃣Generate Dynamic Text Field#️⃣</h1><br><br>


<P> <img src="https://github.com/harshdusane2103/resume_ui_daliy_task2/blob/master/text.png" width=22%,height=35%>
  
  <video src="https://github.com/harshdusane2103/resume_ui_daliy_task2/assets/161817658/fc51088c-01c5-41a5-a48d-5680d61e75f6">
</P>


















