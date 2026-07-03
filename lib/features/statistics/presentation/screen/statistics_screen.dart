import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/widgets/app_card.dart';
import 'package:training_log/core/design_system/widgets/app_list_items.dart';
import 'package:training_log/core/design_system/widgets/app_scaffold.dart';
import 'package:training_log/core/design_system/widgets/app_typography.dart';
import 'package:training_log/core/design_system/widgets/glass_surface.dart';
import 'package:training_log/core/design_system/widgets/riverpod_screen_body.dart';
import 'package:training_log/core/extensions/l10n_extension.dart';
import 'package:training_log/features/statistics/domain/entity/activity_point.dart';
import 'package:training_log/features/statistics/domain/entity/statistics_content.dart';
import 'package:training_log/features/statistics/domain/entity/statistics_overview.dart';
import 'package:training_log/features/statistics/presentation/provider/statistics_providers.dart';

class StatisticsScreen extends ConsumerWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statisticsState = ref.watch(statisticsControllerProvider);

    return AppScaffold(
      title: context.l10n.statisticsTitle,
      body: RiverpodScreenBody<StatisticsContent>(
        asyncValue: statisticsState,
        onRetry: () => ref.read(statisticsControllerProvider.notifier).refresh(),
        contentBuilder: (context, content) => _StatisticsBody(content: content),
      ),
    );
  }
}

class _StatisticsBody extends StatelessWidget {
  const _StatisticsBody({required this.content});

  final StatisticsContent content;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(
        AppDimens.size16,
        AppDimens.size16,
        AppDimens.size16,
        AppDimens.size96,
      ),
      children: [
        AppSectionTitle(title: context.l10n.statisticsOverview),
        const SizedBox(height: AppDimens.size12),
        if (content.overview.totalWorkouts == 0)
          Padding(
            padding: const EdgeInsets.only(bottom: AppDimens.size16),
            child: Text(
              context.l10n.statisticsEmpty,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        _OverviewGrid(overview: content.overview),
        const SizedBox(height: AppDimens.size24),
        AppSectionTitle(title: context.l10n.statisticsActivityChart),
        const SizedBox(height: AppDimens.size12),
        GlassSurface(
          padding: const EdgeInsets.all(AppDimens.size12),
          style: GlassSurfaceStyle.card,
          child: SizedBox(
            height: AppDimens.chartHeight,
            child: _ActivityChart(points: content.activity),
          ),
        ),
        const SizedBox(height: AppDimens.size24),
        AppSectionTitle(title: context.l10n.statisticsTopExercises),
        const SizedBox(height: AppDimens.size12),
        ...content.topExercises.asMap().entries.map(
              (entry) => AppRankListTile(
                rank: entry.key + 1,
                title: entry.value.name,
                trailing: '${entry.value.completionCount}',
              ),
            ),
        const SizedBox(height: AppDimens.size24),
        AppSectionTitle(title: context.l10n.statisticsPersonalRecords),
        const SizedBox(height: AppDimens.size12),
        ...content.personalRecords.map(
          (record) => AppCard(
            margin: const EdgeInsets.only(bottom: AppDimens.size8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  record.exerciseName,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: AppDimens.size8),
                Text(context.l10n.statisticsMaxWeight(_formatNumber(record.maxWeight))),
                Text(context.l10n.statisticsMaxVolume(_formatNumber(record.maxVolume))),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppDimens.size24),
        AppSectionTitle(title: context.l10n.statisticsCalendar),
        const SizedBox(height: AppDimens.size12),
        GlassSurface(
          padding: const EdgeInsets.all(AppDimens.size8),
          style: GlassSurfaceStyle.card,
          child: _WorkoutCalendar(workoutDates: content.workoutDates),
        ),
      ],
    );
  }

  String _formatNumber(double value) {
    if (value == value.roundToDouble()) {
      return value.toInt().toString();
    }
    return value.toStringAsFixed(1);
  }
}

class _OverviewGrid extends StatelessWidget {
  const _OverviewGrid({required this.overview});

  final StatisticsOverview overview;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: AppDimens.size12,
      crossAxisSpacing: AppDimens.size12,
      childAspectRatio: AppDimens.statCardAspectRatio,
      children: [
        AppStatCard(
          label: context.l10n.statisticsTotalWorkouts,
          value: '${overview.totalWorkouts}',
        ),
        AppStatCard(
          label: context.l10n.statisticsTotalSets,
          value: '${overview.totalCompletedSets}',
        ),
        AppStatCard(
          label: context.l10n.statisticsTotalWeight,
          value: context.l10n.statisticsKg('${overview.totalWeightLifted}'),
        ),
        AppStatCard(
          label: context.l10n.statisticsAvgWeight,
          value: context.l10n.statisticsKg(overview.averageWeightPerWorkout.toStringAsFixed(0)),
        ),
      ],
    );
  }
}

class _ActivityChart extends StatelessWidget {
  const _ActivityChart({required this.points});

  final List<ActivityPoint> points;

  @override
  Widget build(BuildContext context) {
    if (points.isEmpty) {
      return const SizedBox.shrink();
    }

    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          getDrawingHorizontalLine: (value) => FlLine(
            color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
            strokeWidth: 1,
          ),
        ),
        titlesData: const FlTitlesData(show: true),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            spots: [
              for (var index = 0; index < points.length; index++)
                FlSpot(index.toDouble(), points[index].completedSets.toDouble()),
            ],
            isCurved: true,
            color: Theme.of(context).colorScheme.primary,
            barWidth: AppDimens.chartLineWidth,
            dotData: const FlDotData(show: true),
            belowBarData: BarAreaData(
              show: true,
              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.12),
            ),
          ),
        ],
      ),
    );
  }
}

class _WorkoutCalendar extends StatefulWidget {
  const _WorkoutCalendar({required this.workoutDates});

  final Set<DateTime> workoutDates;

  @override
  State<_WorkoutCalendar> createState() => _WorkoutCalendarState();
}

class _WorkoutCalendarState extends State<_WorkoutCalendar> {
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return TableCalendar<void>(
      firstDay: DateTime.utc(2020),
      lastDay: DateTime.utc(2035, 12, 31),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) => widget.workoutDates.contains(
        DateTime(day.year, day.month, day.day),
      ),
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _focusedDay = focusedDay;
        });
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
      calendarStyle: CalendarStyle(
        selectedDecoration: BoxDecoration(
          color: scheme.primary,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: scheme.primary.withValues(alpha: 0.2),
          shape: BoxShape.circle,
        ),
        defaultTextStyle: Theme.of(context).textTheme.bodyMedium!,
      ),
      headerStyle: HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        titleTextStyle: Theme.of(context).textTheme.titleMedium!,
      ),
    );
  }
}
