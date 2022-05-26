  _loadDateList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      date = prefs.getStringList('date')??[];
    });
  }
