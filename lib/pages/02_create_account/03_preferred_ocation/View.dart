import 'package:app/core/design/navigator.dart';
import 'package:app/main.dart';
import 'package:app/pages/02_create_account/04_set_up_completed/View.dart';
import 'package:flutter/material.dart';

class PreferredLocationPage extends StatefulWidget {
  @override
  State<PreferredLocationPage> createState() => _PreferredLocationPageState();
}

class _PreferredLocationPageState extends State<PreferredLocationPage> {
  late bool isOffice = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Where are you preferred Location?',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF111827)),
              ),
              SizedBox(height: 8),
              Text(
                'Let us know, where is the work location you want at this time, so we can adjust it.',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF737379)),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isOffice = true;
                        });
                      },
                      child: Text('Work From Office'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            isOffice ? Colors.white : Color(0xFF6B7280),
                        backgroundColor:
                            isOffice ? Color(0xFF091A7A) : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isOffice = false;
                        });
                      },
                      child: Text('Remote Work'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor:
                            isOffice ? Color(0xFF6B7280) : Colors.white,
                        backgroundColor:
                            isOffice ? Colors.white : Color(0xFF091A7A),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Select the country you want for your job',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF737379)),
              ),
              SizedBox(height: 16),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  CountryButton(name: 'United States', flag: '🇺🇸'),
                  CountryButton(name: 'Malaysia', flag: '🇲🇾'),
                  CountryButton(name: 'Singapore', flag: '🇸🇬'),
                  CountryButton(name: 'Indonesia', flag: '🇮🇩'),
                  CountryButton(name: 'Philippines', flag: '🇵🇭'),
                  CountryButton(name: 'Poland', flag: '🇵🇱'),
                  CountryButton(name: 'India', flag: '🇮🇳'),
                  CountryButton(name: 'Vietnam', flag: '🇻🇳'),
                  CountryButton(name: 'China', flag: '🇨🇳'),
                  CountryButton(name: 'Canada', flag: '🇨🇦'),
                  CountryButton(name: 'Saudi Arabia', flag: '🇸🇦'),
                  CountryButton(name: 'Argentina', flag: '🇦🇷'),
                  CountryButton(name: 'Brazil', flag: '🇧🇷'),
                  CountryButton(name: 'Egypt', flag: '🇪🇬'),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  AppGoto(AccountSetupCompletedPage());
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CountryButton extends StatefulWidget {
  final String name, flag;

  const CountryButton({
    Key? key,
    required this.name,
    required this.flag,
  }) : super(key: key);

  @override
  State<CountryButton> createState() => _CountryButtonState();
}

class _CountryButtonState extends State<CountryButton> {
  final BooleanCounter _counter = BooleanCounter();
  bool _inputValue = false;
  late bool isSelected = false;

  void _toggleInput() {
    setState(() {
      _inputValue = !_inputValue;
      _counter.increment(_inputValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        _toggleInput;
        setState(() {
          isSelected = !isSelected;
        });
      },
      icon: ClipOval(
        child: Text(widget.flag, style: TextStyle(fontSize: 24)),
        clipBehavior: Clip.antiAlias,
      ),
      label: Text(widget.name),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: isSelected ? Color(0xFFD6E4FF) : Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: isSelected ? Theme.of(context).colorScheme.primary : Color(0xFFE5E7EB))),
      ),
    );
  }
}

class BooleanCounter {
  int _count = 0;
  bool _result = false;

  void increment(bool value) {
    if (value) {
      _count++;
    } else {
      _count = 0;
    }
    _updateResult();
  }

  void _updateResult() {
    _result = _count >= 3;
  }

  bool get result => _result;

  int get count => _count;
}
