Array.prototype.map = (callback) => {
  let res = [];
  this.forEach(item => {
    res.push(callback(item));
  });
  return res;
};
