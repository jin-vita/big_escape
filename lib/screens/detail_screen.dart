import 'package:flutter/material.dart';
import 'package:toonflix/models/program_detail_model.dart';
import 'package:toonflix/models/program_episode_model.dart';
import 'package:toonflix/widgets/thumb_card.dart';
import 'package:toonflix/widgets/webtoon_appbar.dart';

import '../models/program_model.dart';
import '../widgets/episode.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.program,
  });
  final ProgramModel program;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    late ProgramDetailModel detail;
    late List<ProgramEpisodeModel> episodes;
    const String explain =
        '한 번 갇히면, 빠져나올 수 없다?! 극한의 탈출 버라이어티. 그들이 믿을 거라곤.. 오직 동료들뿐! 체력, 정신력, 근성, 재치, 두뇌.. 이 모든 것을 불살라 미스터리로 가득한 ‘초대형 밀실’을 탈출해야 한다! 에피소드마다 새롭게 구현되는 테마와 밀실 공간! 외부와 완벽히 차단된 이곳에서 빈틈투성이 여섯 멤버들은 과연 탈출 할 수 있을까?';
    if (program.id == 'eoxkfcnf1') {
      detail = ProgramDetailModel(
        title: '대탈출 시즌1',
        about: explain,
        genre: '리얼리티',
        birth: '2018',
      );
      episodes = [
        ProgramEpisodeModel(title: ' 1화 - 사설도박장 - 1 ', id: '586'),
        ProgramEpisodeModel(title: ' 2화 - 사설도박장 - 2 ', id: '587'),
        ProgramEpisodeModel(title: ' 3화 - 폐병원 - 1 ', id: '588'),
        ProgramEpisodeModel(title: ' 4화 - 폐병원 - 2 ', id: '589'),
        ProgramEpisodeModel(title: ' 5화 - 유전자 은행 - 1 ', id: '590'),
        ProgramEpisodeModel(title: ' 6화 - 유전자 은행 - 2, 악령 - 1 ', id: '591'),
        ProgramEpisodeModel(title: ' 7화 - 악령 감옥 - 2 ', id: '592'),
        ProgramEpisodeModel(title: ' 8화 - 악령 감옥 - 3 ', id: '593'),
        ProgramEpisodeModel(title: ' 9화 - 벙커 - 1 ', id: '594'),
        ProgramEpisodeModel(title: ' 10화 - 벙커 - 2 ', id: '595'),
        ProgramEpisodeModel(title: ' 11화 - 태양여고 - 1 ', id: '596'),
        ProgramEpisodeModel(title: ' 12화 - 태양여고 - 2 ', id: '597'),
        ProgramEpisodeModel(title: ' 13화 - 스페셜 편! ', id: '598'),
      ];
    } else if (program.id == 'eoxkfcnf2') {
      detail = ProgramDetailModel(
        title: '대탈출 시즌2',
        about: explain,
        genre: '리얼리티',
        birth: '2019',
      );
      episodes = [
        ProgramEpisodeModel(title: ' 1화 - 미래대학교 Ⅰ ', id: '599'),
        ProgramEpisodeModel(title: ' 2화 - 미래대학교 Ⅱ ', id: '600'),
        ProgramEpisodeModel(title: ' 3화 - 부암동 저택 Ⅰ ', id: '601'),
        ProgramEpisodeModel(title: ' 4화 - 부암동 저택 Ⅱ ', id: '612'),
        ProgramEpisodeModel(title: ' 5화 - 무간 교도소 Ⅰ ', id: '613'),
        ProgramEpisodeModel(title: ' 6화 - 무간 교도소 Ⅱ ', id: '604'),
        ProgramEpisodeModel(title: ' 7화 - 희망 연구소 Ⅰ ', id: '605'),
        ProgramEpisodeModel(title: ' 8화 - 희망 연구소 Ⅱ ', id: '606'),
        ProgramEpisodeModel(title: ' 9화 - 조 마테오 정신병원 Ⅰ ', id: '607'),
        ProgramEpisodeModel(title: ' 10화 - 조마테오 정신병원 Ⅱ ', id: '608'),
        ProgramEpisodeModel(title: ' 11화 - 살인감옥 Ⅰ ', id: '609'),
        ProgramEpisodeModel(title: ' 12화 - 살인감옥 Ⅱ ', id: '610'),
        ProgramEpisodeModel(title: ' 13화 - 시즌 Ⅱ Special ', id: '611'),
      ];
    } else if (program.id == 'eoxkfcnf3') {
      detail = ProgramDetailModel(
        title: '대탈출 시즌3',
        about: explain,
        genre: '리얼리티',
        birth: '2020',
      );
      episodes = [
        ProgramEpisodeModel(title: ' 1화 - 타임머신 연구실 1 ', id: '612'),
        ProgramEpisodeModel(title: ' 2화 - 타임머신 연구실 2 ', id: '613'),
        ProgramEpisodeModel(title: ' 3화 - 좀비 공장 1 ', id: '614'),
        ProgramEpisodeModel(title: ' 4화 - 좀비 공장 2 ', id: '615'),
        ProgramEpisodeModel(title: ' 5화 - 어둠의 별장 1 ', id: '616'),
        ProgramEpisodeModel(title: ' 6화 - 어둠의 별장 2 ', id: '617'),
        ProgramEpisodeModel(title: ' 7화 - 아차랜드 1 ', id: '618'),
        ProgramEpisodeModel(title: ' 8화 - 아차랜드 2 ', id: '619'),
        ProgramEpisodeModel(title: ' 9화 - 빵공장 1 ', id: '620'),
        ProgramEpisodeModel(title: ' 10화 - 빵공장 2 ', id: '622'),
        ProgramEpisodeModel(title: ' 11화 - 백 투 더 ㄱㅅ 1 ', id: '623'),
        ProgramEpisodeModel(title: ' 12화 - 백 투 더 ㄱㅅ 2 ', id: '624'),
        ProgramEpisodeModel(title: ' 13화 - 스페셜 ', id: '621'),
      ];
    } else if (program.id == 'eoxkfcnf4') {
      detail = ProgramDetailModel(
        title: '대탈출 시즌4',
        about: explain,
        genre: '리얼리티',
        birth: '2021',
      );
      episodes = [
        ProgramEpisodeModel(title: '대탈출 시즌 4 1화', id: '389'),
        ProgramEpisodeModel(title: '대탈출 시즌 4 2화', id: '22'),
        ProgramEpisodeModel(title: '대탈출 시즌 4 3화', id: '569'),
        ProgramEpisodeModel(title: '대탈출 시즌 4 4화', id: '682'),
        ProgramEpisodeModel(title: '대탈출 시즌 4 5화', id: '684'),
        ProgramEpisodeModel(title: '대탈출 시즌 4 6화', id: '1249'),
        ProgramEpisodeModel(title: '대탈출 시즌 4 7화', id: '1406'),
        ProgramEpisodeModel(title: '대탈출 시즌 4 8화', id: '1642'),
        ProgramEpisodeModel(title: '대탈출 시즌 4 9화', id: '1910'),
        ProgramEpisodeModel(title: '대탈출 시즌 4 10화', id: '2045'),
        ProgramEpisodeModel(title: '대탈출 시즌 4 11화', id: '2221'),
        ProgramEpisodeModel(title: '대탈출 시즌 4 12화', id: '2380'),
        ProgramEpisodeModel(title: '대탈출 시즌 4 13화', id: '12558'),
      ];
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: WebToonAppBar(
        title: program.title,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          child: width > 959
              ? Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ThumbCard(
                          program: program,
                          height: 130,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${detail.birth}  |  ${detail.genre}'),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                detail.about,
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Column(
                            children: [
                              for (int i = 0; i < 6; i++)
                                Episode(
                                  episode: episodes[i],
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Flexible(
                          child: Column(
                            children: [
                              for (int i = 6; i < episodes.length; i++)
                                Episode(
                                  episode: episodes[i],
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ThumbCard(
                          program: program,
                          height: 300,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${detail.birth}  |  ${detail.genre}',
                          style: const TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          detail.about,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        for (var episode in episodes)
                          Episode(
                            episode: episode,
                          ),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
