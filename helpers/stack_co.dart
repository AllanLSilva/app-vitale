
void stackStats(){
  print('Started main');
  functionOne();
  print('Ended main');
}

functionOne(){
  print('Started functionOne');
  try{
    functionTwo();
  } catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
    rethrow;
  } finally {
    print('Chegou no finally');
  }

  print('Ended functionOne');
}

functionTwo(){
  print('Started functionTwo');
  for (var i = 1; i <= 5; i++){
    print(i);
    // ignore: unused_local_variable
    double amount = double.parse('Not a Number');

  }

  print('Ended functionTwo');
}
