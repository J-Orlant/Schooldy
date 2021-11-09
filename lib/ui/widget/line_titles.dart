import 'package:fl_chart/fl_chart.dart';
import 'package:kksi/shared/theme.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          margin: 10,
          getTextStyles: (value, _) => whiteTextStyle.copyWith(
            fontSize: 12,
            fontWeight: medium,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'PTS';
              case 2:
                return 'PAS';
              case 3:
                return 'PTS';
              case 4:
                return 'PAS';
              default:
                return '';
            }
          },
        ),
        leftTitles: SideTitles(
          showTitles: false,
        ),
        rightTitles: SideTitles(
          showTitles: false,
        ),
        topTitles: SideTitles(
          showTitles: false,
        ),
      );
}
