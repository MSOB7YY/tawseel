import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/pages/current_orders.dart';
import 'package:tawseel/ui/pages/home_page.dart';
import 'package:tawseel/ui/pages/new_order_page.dart';
import 'package:tawseel/ui/pages/reset_password_page.dart';

/// only wraps content in an appbar and background with colors
class TawseelScaffold extends StatefulWidget {
  final Widget? body;
  final Widget? leading;
  final Widget? title;
  final double? titleSpacing;
  final double? toolbarHeight;
  final List<Widget>? actions;
  final Color? backgroundColor;
  const TawseelScaffold({super.key, this.body, this.leading, this.title, this.actions,this.backgroundColor, this.titleSpacing, this.toolbarHeight});


  @override
  State<TawseelScaffold> createState() => _TawseelScaffoldState();
}

class _TawseelScaffoldState extends State<TawseelScaffold> {
  final PageController _pageController = PageController(initialPage: 0);

  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.bg,
      appBar: widget.body == null
          ? null
          : AppBar(
              toolbarHeight: widget.toolbarHeight,
              leadingWidth: kMargin24 * 3,
              titleSpacing: widget.titleSpacing ?? 0.0,
              backgroundColor: TColors.bg,
              leading: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding8),
                child: widget.leading,
              ),
              title: widget.title,
              actions: widget.actions != null
                  ? [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: widget.actions!,
                      ),
                      const SizedBox(width: kMargin8),
                    ]
                  : null,
            ),
      body: widget.body ??
          PageView(
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                _selectedIndex = page;
              });
            },
            children: const [
              ResetPasswordPage(),
              NewOrderPage(),
              CurrentOrdersPage(),
              Homepage(),
            ],
          ),
      bottomNavigationBar: widget.body != null
          ? null
          : BottomNavigationBar(
              onTap: (value) {
                _pageController.animateToPage(value, duration: const Duration(milliseconds: 400), curve: Curves.easeInOutQuart);
                _selectedIndex = value;
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: _selectedIndex,
              selectedItemColor: TColors.main,
              unselectedItemColor: context.theme.iconTheme.color,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.new_label),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
              ],
            ),
    );
  }
}

class KeepAliveWrapper extends StatefulWidget {
  final Widget child;

  const KeepAliveWrapper({Key? key, required this.child}) : super(key: key);

  @override
  _KeepAliveWrapperState createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  bool get wantKeepAlive => true;
}
