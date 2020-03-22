exports.covid_georedirect = (req, res) => {
  // We're just randomly choosing a number
  var urls = [
    "https://wa.me/1234567890?text=hi" // replace with your numbers
    ... // add more
  ];
  var randomNumber = Math.floor(Math.random() * urls.length);
  return res.redirect(urls[randomNumber]);
};
