  _incrementDateList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      date = prefs.getStringList('date')??[];
      addToday();
      prefs.setStringList('date', date);
    });
  }

