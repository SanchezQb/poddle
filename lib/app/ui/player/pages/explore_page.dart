import 'package:flutter/material.dart';
import 'package:podcast_app/app/ui/player/providers/audio_player_provider.dart';
import 'package:podcast_app/app/widgets/play_pause_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podcast_app/app/widgets/widgets.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  Future<void> play() async {
    final player = context.read(audioPlayerProvider);

    // await player.play(
    //     "https://www.listennotes.com/e/p/ea09b575d07341599d8d5b71f205517b/");
    await player.stop();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          title: PoddleText.headline("Explore"),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 200,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(16),
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    SizedBox(
                      width: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.5),
                            BlendMode.modulate,
                          ),
                          child: Image.network(
                              "https://cdn-images-1.listennotes.com/podcasts/the-vintage-rpg-podcast-vintage-rpg-Mg-2ZYcmERT-eq8uGUY6vXN.300x300.jpg",
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      padding: const EdgeInsets.all(16.0),
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PoddleText.heading3("Hello Pod"),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PoddleText.body("By Author", color: Colors.white),
                              PlayPauseButton(
                                buttonSize: 50,
                                iconSize: 30,
                                onPressed: () {},
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16.0),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const PoddleText.heading3("Popular"),
                PoddleText.body("See all", color: Colors.white),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: ListTile(
                  onTap: () => play(),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  title: const PoddleText.subHeadline("Hello Pod"),
                  subtitle: PoddleText.body("By Author", color: Colors.blue),
                  trailing: PlayPauseButton(
                    onPressed: () {},
                  ),
                ),
              );
            }, childCount: 20),
          ),
        )
      ],
    );
  }
}
