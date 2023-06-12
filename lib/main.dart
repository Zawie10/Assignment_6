import 'package:flutter/material.dart';

void main() {
  runApp(PhotoGalleryApp());
}

class PhotoGalleryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Photo Gallery'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Welcome to My Photo Gallery!',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    hintText: 'Enter a search term',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  PhotoButton(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/1/11/Eurasian_Eagle-Owl_Maurice_van_Bruggen.JPG'),
                    caption: 'Owl',
                  ),
                  PhotoButton(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/1/11/Eurasian_Eagle-Owl_Maurice_van_Bruggen.JPG'),
                    caption: 'Photo 2',
                  ),
                  PhotoButton(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/1/11/Eurasian_Eagle-Owl_Maurice_van_Bruggen.JPG'),
                    caption: 'Photo 3',
                  ),
                  PhotoButton(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/1/11/Eurasian_Eagle-Owl_Maurice_van_Bruggen.JPG'),
                    caption: 'Photo 4',
                  ),
                  PhotoButton(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/1/11/Eurasian_Eagle-Owl_Maurice_van_Bruggen.JPG'),
                    caption: 'Photo 5',
                  ),
                  PhotoButton(
                    image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/1/11/Eurasian_Eagle-Owl_Maurice_van_Bruggen.JPG'),
                    caption: 'Photo 6',
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ListTile(
                    leading: Icon(Icons.photo),
                    title: Text('Photo 1'),
                    subtitle: Text('Owls are nocturnal birds of prey known for their large, forward-facing eyes, silent flight, and exceptional hunting skills, making them fascinating and mysterious creatures of the night.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo),
                    title: Text('Photo 2'),
                    subtitle: Text('Owls are nocturnal birds of prey known for their large, forward-facing eyes, silent flight, and exceptional hunting skills, making them fascinating and mysterious creatures of the night.'),
                  ),
                  ListTile(
                    leading: Icon(Icons.photo),
                    title: Text('Photo 3'),
                    subtitle: Text('Owls are nocturnal birds of prey known for their large, forward-facing eyes, silent flight, and exceptional hunting skills, making them fascinating and mysterious creatures of the night.'),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Photos Uploaded Successfully!')),
            );
          },
          child: Icon(Icons.cloud_upload),
        ),
      ),
    );
  }
}

class PhotoButton extends StatelessWidget {
  final ImageProvider image;
  final String caption;

  const PhotoButton({
    required this.image,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Clicked on photo!')),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(
            image: image,
            height: 120.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              caption,
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
