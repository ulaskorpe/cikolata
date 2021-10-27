<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CIKOLATA</title>
</head>
<body>
<form  id="get-sql"
      action="{{route('backup')}}" method="post"
      enctype="multipart/form-data">
    {{csrf_field()}}
<table width="100%" border="1">
<tr><td width="200">SELECT TABLE :</td>
<td width="300"><select name="table" id="table">
        @foreach($tables as $table)
            <option value="{{$table}}">{{$table}}</option>
            @endforeach

    </select></td>
    <td width="300">
        <input type="submit" value="GET-SQL">
    </td>
    <td>&nbsp;</td>
</tr>
</table>
</form>
</body>
</html>