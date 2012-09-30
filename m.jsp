<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>
        </title>
        <link rel="stylesheet" href="https://ajax.aspnetcdn.com/ajax/jquery.mobile/1.1.1/jquery.mobile-1.1.1.min.css" />
        <link rel="stylesheet" href="my.css" />
        <style>
            /* App custom styles */
        </style>
        <script src="script/jquery.min1.js">
        </script>
        <script src="script/jquery.mobile-1.1.1.min.js">
        </script>
        <script src="my.js">
        </script>
    </head>
    <body>
        <!-- Home -->
        <div data-role="page" id="page1">
            <div data-role="content" style="padding: 15px">
                <form action="find.action">
                    <div data-role="fieldcontain">
                        <fieldset data-role="controlgroup">
                            <label for="searchinput1">
                            </label>
                            <input name="keyword" id="searchinput1" placeholder="Search" value="Search" type="search" />
                        </fieldset>
                    </div>
                    <input data-icon="search" data-iconpos="right" value="Submit" type="submit" />
                </form>
            </div>
        </div>
        <script>
            //App custom javascript
        </script>
    </body>
</html>