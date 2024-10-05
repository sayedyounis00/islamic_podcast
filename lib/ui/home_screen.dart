import 'package:flutter/material.dart';
import 'package:islamic_podcast/core/data/lists/podcast_image.dart';
import 'package:islamic_podcast/core/data/models/podcast_data.dart';
import 'package:islamic_podcast/data/model/eh_elmoshkila_list.dart';
import 'package:islamic_podcast/data/wa3i_list.dart';
import 'package:islamic_podcast/ui/podcast_episons_screen.dart';
import 'package:islamic_podcast/ui/widgets/home_main_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<PodcastData>> podcasts = [
      ehElmoshkilaVideos,
      wa3iVideos,
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: podcastImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return HomeMainItem(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PodcastEpisonsScreen(
                            podcastData: podcasts[index],
                            podcastImages: podcastImages[index].imageUrl,
                          ),
                        )),
                    imageUrl: podcastImages[index].imageUrl,
                    color: Colors.black,
                    height: 200,
                    width: 110,
                    radius: 20,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


