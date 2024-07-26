import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({
    super.key,
    required this.width,
    required this.height,
    required this.items,
    required this.currentIndex,
    required this.onItemSelected,
  });

  final double width;
  final double height;
  final List<IconData> items;
  int currentIndex;
  final ValueChanged<int> onItemSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: width * 0.1 / 2,
        right: width * 0.1 / 2,
        bottom: height * 0.03,
      ),
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 8,
              color: Color.fromRGBO(0, 0, 0, 0.164),
            )
          ],
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(
              items.length,
              (index) {
                IconData item = items[index];
                bool isSelected = currentIndex == index;
                return GestureDetector(
                  onTap: () {
                    onItemSelected(index);
                  },
                  child: Center(
                    child: AnimatedContainer(
                      duration: 150.ms,
                      padding: isSelected
                          ? const EdgeInsets.all(10)
                          : const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected
                            ? const Color(0xFF5164BF)
                            : Colors.transparent,
                      ),
                      child: Icon(
                        item,
                        color: isSelected
                            ? const Color(0xFFE8E8E8)
                            : const Color(0xFF8EDFEB),
                        size: isSelected ? 29 : 26,
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
