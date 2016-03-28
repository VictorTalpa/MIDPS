function LoadDoc()
{
  var xhttp = new XMLHttpRequest();

  xhttp.onreadystatechange = function()
  {
    if (xhttp.readyState == 4 && xhttp.status == 200)
    {
      var list = JSON.parse(xhttp.responseText);
      printJson(list);
    }
  }
  xhttp.open("GET", "jData.json", true);
  xhttp.send();
}

function printJson(arr)
{
  var out = "";
  var i;
  out += '<table align = "center" width ="50%"><tr><th width=20px>No.</th><th>Name</th></tr>';
  for(i=0; i < arr.students.length; i++)
  {
    out += '<tr><td>' + (i + 1) + '.</td>';
    out += '<td>' + arr.students[i].lastName + ' ' + arr.students[i].firstName + '</td></tr>';
  }
  out += '</table>';
  document.getElementById("studentList").innerHTML = out;
}

function myFunction()
{
  var str1 = "- by Viktor -";
  var str2 = "Hi There!";
  if(document.getElementById("demo").innerHTML == str1)
  {
    document.getElementById("demo").innerHTML = str2;
  }
  else
    document.getElementById("demo").innerHTML = str1;
}

var y = 1;
var dl = 1;

function scrollWin()
{
  var body = document.body,
    html = document.documentElement;

    var height = Math.max( body.scrollHeight, body.offsetHeight,
                       html.clientHeight, html.scrollHeight, html.offsetHeight );

    setInterval(function()
    {
      if(y > height) return;
      window.scroll(0, y);
      y += 5;
    }, dl);
  y = 1;
}
