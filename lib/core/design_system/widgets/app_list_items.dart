import 'package:flutter/material.dart';
import 'package:training_log/core/design_system/tokens/app_dimens.dart';
import 'package:training_log/core/design_system/tokens/app_radius.dart';
import 'package:training_log/core/design_system/widgets/glass_surface.dart';

class AppStatCard extends StatelessWidget {
  const AppStatCard({
    required this.label,
    required this.value,
    super.key,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return GlassSurface(
      padding: const EdgeInsets.all(AppDimens.size12),
      style: GlassSurfaceStyle.card,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: AppDimens.size8),
          Text(
            value,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}

class AppListTileCard extends StatelessWidget {
  const AppListTileCard({
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing = const Icon(Icons.chevron_right_rounded),
    this.onTap,
    super.key,
  });

  final String title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GlassSurface(
      onTap: onTap,
      borderRadius: AppRadius.lg,
      style: GlassSurfaceStyle.card,
      child: ListTile(
        leading: leading,
        title: Text(title),
        subtitle: subtitle == null ? null : Text(subtitle!),
        trailing: trailing,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
        ),
      ),
    );
  }
}

class AppRankListTile extends StatelessWidget {
  const AppRankListTile({
    required this.rank,
    required this.title,
    required this.trailing,
    super.key,
  });

  final int rank;
  final String title;
  final String trailing;

  @override
  Widget build(BuildContext context) {
    return GlassSurface(
      margin: const EdgeInsets.only(bottom: AppDimens.size8),
      style: GlassSurfaceStyle.card,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.15),
          child: Text('$rank'),
        ),
        title: Text(title),
        trailing: Text(
          trailing,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
