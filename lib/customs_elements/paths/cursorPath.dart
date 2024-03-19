import 'dart:ui';

class CursorPath {
  const CursorPath();

  static Path path({required int index, required Size size}) {
    final List<Path> listPaths = [];

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9209395, size.height * 0.5464976);
    path_0.cubicTo(
        size.width * 0.9436395,
        size.height * 0.5464976,
        size.width * 0.9620419,
        size.height * 0.5276595,
        size.width * 0.9620419,
        size.height * 0.5044190);
    path_0.cubicTo(
        size.width * 0.9620419,
        size.height * 0.4811786,
        size.width * 0.9436395,
        size.height * 0.4623405,
        size.width * 0.9209395,
        size.height * 0.4623405);
    path_0.lineTo(size.width * 0.9209395, size.height * 0.5464976);
    path_0.close();
    path_0.moveTo(size.width * 0.6323977, size.height * 0.5464976);
    path_0.lineTo(size.width * 0.9209395, size.height * 0.5464976);
    path_0.lineTo(size.width * 0.9209395, size.height * 0.4623405);
    path_0.lineTo(size.width * 0.6323977, size.height * 0.4623405);
    path_0.lineTo(size.width * 0.6323977, size.height * 0.5464976);
    path_0.close();
    listPaths.add(path_0);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.8750698, size.height * 0.5885786);
    path_1.lineTo(size.width * 0.9638512, size.height * 0.5044190);
    path_1.lineTo(size.width * 0.8750698, size.height * 0.4202619);
    listPaths.add(path_1);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.09526372, size.height * 0.4623405);
    path_2.cubicTo(
        size.width * 0.07256465,
        size.height * 0.4623405,
        size.width * 0.05416326,
        size.height * 0.4811786,
        size.width * 0.05416326,
        size.height * 0.5044190);
    path_2.cubicTo(
        size.width * 0.05416326,
        size.height * 0.5276595,
        size.width * 0.07256465,
        size.height * 0.5464976,
        size.width * 0.09526372,
        size.height * 0.5464976);
    path_2.lineTo(size.width * 0.09526372, size.height * 0.4623405);
    path_2.close();
    path_2.moveTo(size.width * 0.3838070, size.height * 0.4623405);
    path_2.lineTo(size.width * 0.09526372, size.height * 0.4623405);
    path_2.lineTo(size.width * 0.09526372, size.height * 0.5464976);
    path_2.lineTo(size.width * 0.3838070, size.height * 0.5464976);
    path_2.lineTo(size.width * 0.3838070, size.height * 0.4623405);
    path_2.close();
    listPaths.add(path_2);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.1411344, size.height * 0.4202595);
    path_3.lineTo(size.width * 0.05235209, size.height * 0.5044190);
    path_3.lineTo(size.width * 0.1411344, size.height * 0.5885762);
    listPaths.add(path_3);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.5492023, size.height * 0.08513286);
    path_4.cubicTo(
        size.width * 0.5492023,
        size.height * 0.06189333,
        size.width * 0.5308000,
        size.height * 0.04305381,
        size.width * 0.5081023,
        size.height * 0.04305381);
    path_4.cubicTo(
        size.width * 0.4854023,
        size.height * 0.04305381,
        size.width * 0.4670023,
        size.height * 0.06189333,
        size.width * 0.4670023,
        size.height * 0.08513286);
    path_4.lineTo(size.width * 0.5492023, size.height * 0.08513286);
    path_4.close();
    path_4.moveTo(size.width * 0.5492023, size.height * 0.3781833);
    path_4.lineTo(size.width * 0.5492023, size.height * 0.08513286);
    path_4.lineTo(size.width * 0.4670023, size.height * 0.08513286);
    path_4.lineTo(size.width * 0.4670023, size.height * 0.3781833);
    path_4.lineTo(size.width * 0.5492023, size.height * 0.3781833);
    path_4.close();
    listPaths.add(path_4);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.5909651, size.height * 0.1317195);
    path_5.lineTo(size.width * 0.5081023, size.height * 0.04155048);
    path_5.lineTo(size.width * 0.4252372, size.height * 0.1317195);
    listPaths.add(path_5);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.4670023, size.height * 0.9237048);
    path_6.cubicTo(
        size.width * 0.4670023,
        size.height * 0.9469452,
        size.width * 0.4854023,
        size.height * 0.9657857,
        size.width * 0.5081023,
        size.height * 0.9657857);
    path_6.cubicTo(
        size.width * 0.5308000,
        size.height * 0.9657857,
        size.width * 0.5492023,
        size.height * 0.9469452,
        size.width * 0.5492023,
        size.height * 0.9237048);
    path_6.lineTo(size.width * 0.4670023, size.height * 0.9237048);
    path_6.close();
    path_6.moveTo(size.width * 0.4670023, size.height * 0.6306548);
    path_6.lineTo(size.width * 0.4670023, size.height * 0.9237048);
    path_6.lineTo(size.width * 0.5492023, size.height * 0.9237048);
    path_6.lineTo(size.width * 0.5492023, size.height * 0.6306548);
    path_6.lineTo(size.width * 0.4670023, size.height * 0.6306548);
    path_6.close();
    listPaths.add(path_6);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.4252395, size.height * 0.8771190);
    path_7.lineTo(size.width * 0.5081023, size.height * 0.9672881);
    path_7.lineTo(size.width * 0.5909651, size.height * 0.8771190);
    listPaths.add(path_7);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.6325628, size.height * 0.5044190);
    path_8.cubicTo(
        size.width * 0.6325628,
        size.height * 0.5739786,
        size.width * 0.5769953,
        size.height * 0.6306548,
        size.width * 0.5081023,
        size.height * 0.6306548);
    path_8.cubicTo(
        size.width * 0.4392070,
        size.height * 0.6306548,
        size.width * 0.3836419,
        size.height * 0.5739786,
        size.width * 0.3836419,
        size.height * 0.5044190);
    path_8.cubicTo(
        size.width * 0.3836419,
        size.height * 0.4348595,
        size.width * 0.4392070,
        size.height * 0.3781833,
        size.width * 0.5081023,
        size.height * 0.3781833);
    path_8.cubicTo(
        size.width * 0.5769953,
        size.height * 0.3781833,
        size.width * 0.6325628,
        size.height * 0.4348595,
        size.width * 0.6325628,
        size.height * 0.5044190);
    path_8.close();
    listPaths.add(path_8);

    return listPaths[index];
  }
}
