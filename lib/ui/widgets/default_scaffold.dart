import 'package:flutter/material.dart';
import 'package:tawseel/core/constants.dart';
import 'package:tawseel/ui/pages/new_order_page.dart';
import 'package:tawseel/ui/pages/reset_password_page.dart';

/// only wraps content in an appbar and background with colors
class TawseelScaffold extends StatefulWidget {
  final Widget? body;
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final Color? backgroundColor;
  const TawseelScaffold({super.key, this.body, this.leading, this.title, this.actions,this.backgroundColor});

  @override
  State<TawseelScaffold> createState() => _TawseelScaffoldState();
}

class _TawseelScaffoldState extends State<TawseelScaffold> {
  final PageController _pageController = PageController(initialPage: 0);

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.bg,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: TColors.bg,
        leading: widget.leading,
        title: widget.title,
        actions: widget.actions,
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
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle),
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
