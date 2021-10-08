enum Myerror: Error{
  case negative

  var msg: String{
    switch self{
      case .negative: return "ERROR: Number cannot be negative"
    }
  }
}
func fun(n: Int) throws{
  if(n<0){
    throw Myerror.negative
  }
  if(n%2==0){
    print("n is even")
  }
  else{
    print("n is odd")
  }
}

do{
  try fun(n: -50)
} catch{
  if let error = error as? Myerror{
    print(error.msg)
  }
  }
