let hashLoop = (hash) => {
  let arr = hash['arr']
  let res = {}
  arr.forEach((item) => {
    if(!res[item['key']]){
      res[item['key']] = 1
    }
    else{
      res[item['key']] += 1
    }
  })
  return res;
}
