<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Search Book</title>

    <style>

@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap");

*,
*::before,
*::after {
  margin: 0;
  padding: 0;
  box-sizing: inherit;
}

html {
  box-sizing: border-box;
}

body {
  font-family: "Poppins", sans-serif;
  font-size: 15px;
  color: black;
  background-color: whitesmoke;
}
.header h11{
  margin-top: 20px;
  font-weight: 1000;
  font-size: 40px;
  text-align: center;
  margin-left: 310px;
}

</style
</head>
<body>
<header class="header">
  <nav>
    <h11>ArektaBookStore</h11>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card mt-4">
                    <div class="card-header">
                    <h1>Search book</h1>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-7">
                                <form action="" method="GET">
                                    <div class="input-group mb-3">
                                        <input type="text" name="search" required value="<?php if(isset($_GET['search'])){echo $_GET['search']; } ?>" class="form-control" placeholder="Type to Search">
                                        <button type="submit" class="btn btn-primary">Search</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="card mt-4">
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Title</th>
                                    <th>Author</th>
                                    <th>ISBN</th>
                                    <th>Publisher</th>
                                    <th>Category</th>
                                    <th>Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                    $con = mysqli_connect("localhost","root","","ArektaBookStore");
                                    if(isset($_GET['search']))
                                    {
                                        $filtervalues = $_GET['search'];
                                        $query = "SELECT * FROM books, author, category, publication where books.author_id=author.author_id and books.category_id=category.category_id and books.publisher_id=publication.publisher_id and book_id=any (select book_id from books where book_title LIKE '%$filtervalues%')";
                                        $query_run = mysqli_query($con, $query);
                                        if(mysqli_num_rows($query_run) > 0)
                                        {
                                            foreach($query_run as $items)
                                            {
                                                ?>
                                                <tr>
                                                    <td><?= $items['book_title']; ?></td>
                                                    <td><?= $items['author_firstName']; ?> <?= $items['author_lastName']; ?></td>
                                                    <td><?= $items['ISBN']; ?></td>
                                                    <td><?= $items['publisher_name']; ?></td>
                                                    <td><?= $items['category_name']; ?></td>
                                                    <td><?= $items['book_price']; ?></td>
                                                    <td>BUY</td>
                                                </tr>
                                                <?php
                                            }
                                        }
                                        else
                                        {
                                            ?>
                                                <tr>
                                                    <td colspan="4">No Record Found</td>
                                                </tr>
                                            <?php
                                        }
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>