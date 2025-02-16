import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../theme/text_style.dart';
import 'svg_icon.dart';

class AlphaGoingAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? leadingIcon;
  final Widget? actionIcon;
  final bool showActionClose;
  final VoidCallback? onLeadingTap;
  final VoidCallback? onActionTap;
  final VoidCallback? onBack;
  final bool _showLogo;
  final bool _showClose;

  const AlphaGoingAppBar({
    super.key,
    this.title,
    this.actionIcon,
    this.leadingIcon,
    this.onActionTap,
    this.onLeadingTap,
    this.onBack,
    this.showActionClose = false,
  })  : _showLogo = false,
        _showClose = false;

  const AlphaGoingAppBar.dialog({
    super.key,
    this.title,
    this.actionIcon,
    this.leadingIcon,
    this.onActionTap,
    this.onLeadingTap,
    this.onBack,
    this.showActionClose = false,
  })  : _showLogo = false,
        _showClose = true;

  const AlphaGoingAppBar.logo({super.key})
      : _showLogo = true,
        title = null,
        actionIcon = null,
        onActionTap = null,
        leadingIcon = null,
        onLeadingTap = null,
        onBack = null,
        _showClose = false,
        showActionClose = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      title: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: _buildLeading(context),
          ),
          SizedBox(
            width: 200,
            child: Center(
              child: _buildTitle,
            ),
          ),
          Positioned(
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: _buildAction,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLeading(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (Navigator.canPop(context))
            _buildIconButton(
              icon: _showClose
                  ? const SvgIcon(
                      icon: 'close',
                      color: Colors.black,
                    )
                  : const SvgIcon(
                      icon: 'left',
                      color: Colors.black,
                      width: 24,
                      height: 24,
                    ),
              onTap: onBack ?? () => context.pop(),
            ),
          if (leadingIcon != null)
            _buildIconButton(icon: leadingIcon!, onTap: onLeadingTap),
        ],
      ),
    );
  }

  Widget get _buildTitle {
    return switch (_showLogo) {
      true => const SvgIcon(icon: 'title_logo'),
      false => Text(title!, style: AppTextStyle.body16b1375),
    };
  }

  Widget get _buildAction {
    if (showActionClose) {
      return _buildIconButton(
          icon: const SvgIcon(
            icon: 'close',
            color: Colors.black,
          ),
          onTap: onActionTap);
    }
    return switch (actionIcon != null) {
      true => _buildIconButton(icon: actionIcon!, onTap: onActionTap),
      false => const SvgIcon(
          icon: 'close',
          color: Colors.transparent,
        ),
    };
  }

  Widget _buildIconButton({required Widget icon, VoidCallback? onTap}) {
    return IconButton(
      onPressed: onTap,
      icon: icon,
      padding: const EdgeInsets.all(8),
      visualDensity: VisualDensity.compact,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
