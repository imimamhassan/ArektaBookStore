<?php
$user = 'root';
$password = '';
 $database = 'ArektaBookStore';
$servername='localhost';
$mysqli = new mysqli($servername, $user, $password, $database);
if ($mysqli->connect_error) {
    die('Connect Error (' .
    $mysqli->connect_errno . ') '.
    $mysqli->connect_error);
}
$sql = " SELECT * FROM books, author, category, publication where books.author_id=author.author_id and books.category_id=category.category_id and books.publisher_id =publication.publisher_id";
$result = $mysqli->query($sql);
$mysqli->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Books</title>
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
  font-size: 70%;
}

body {
  font-family: "Poppins", sans-serif;
  font-size: 18px;
  color: black;
  background-color: whitesmoke;
}

img {
  max-width: 100%;
}

.box {
  max-width: 1824px;
  margin: 0 auto;
}

@media only screen and (max-width: 1200px) {
  .box {
    padding: 0 48px;
  }
}



.header h11{
  margin-top: 10px;
  font-weight: 1000;
  font-size: 40px;
  text-align: center;
}
 
 nav{
  width: 84%;
  margin: auto;
  padding: 20px 0;
  display: flex;
  align-items: center;
  justify-content: space-between;
 }

 nav ul li{
     display: inline-block;
     list-style: none;
     margin: 10px 20px;
 }
 
 nav ul li a{
     text-decoration: none;
     color: #606163;
 }
 
 nav ul li a:hover{
     color: #ff4321;
 } 

 .d {
  display: flex;
  align-items: center;
}


 .align-center {
  display: flex;
  align-items: center;
  justify-content: center;
}

 @media only screen and (max-width: 768px) {
  nav {
    padding: 16px 0;
  }


  .icons{
    display: none;
  }

 
  .logob{
    width: 100px;
    height: 80px;
    cursor: pointer;
    } 
  }
  
  
  
.intro {
  height: calc(100vh - 112px);
  overflow: hidden;
  position: relative;
  z-index: 0;
  background-color: lightgray;
  background-repeat: no-repeat;
  background-attachment: scroll; 
  background-size: 100% 100%;
}

.intro-content {
  height: 100%;
}



.dis {
  display: inline-block;
  font-size: 40px;
  color: #ff4321;
}

.image{
  width: 20%;
  transition: 0.3s ease;
}

img{
  width: 100%;
  height: 100%;
}

.btn {
  display: inline-block;
  border-radius: 80px;
  background-color: #ff4321;
  padding: 20px 80px;
  color: white;
  font-weight: 600;
  box-shadow: 0 16px 24px rgba(0, 0, 0, 0.3);
  margin-top: 15px;
  margin-bottom: 30px;
}

.section {
  padding: 160px 0 0 0;
}
.h {
  font-size: 3rem;
  text-align: center;
  margin-bottom: 5rem;
  font-weight: 600;
}

.h h1 {
  font-weight: 400;
}

.h span {
  color:  #ff4321;
}

.ac-center {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
  gap: 80px;
  margin-bottom: 80px;
}

.ac {
  text-align:center;
  padding-bottom: 16px;
  transition: all 100ms ease-in-out;
}

.ac .img-cover {
  overflow: hidden;
}

.ac img {
  transition: all 100ms ease-in-out;
  width: 500px;
  height: 500px;
}

.ac:hover img {
  transform: scale(1.2);
}

@media only screen and (max-width: 567px) {
  .h {
    font-size: 32px;
  }
}

.ab {
  display: grid;
  grid-template-columns: repeat(6, 1fr);
  grid-template-rows: repeat(8, 4vw);
  gap: 2rem;
}

.ab .item {
  overflow: hidden;
}

.ab img {
  object-fit: cover;
  height: 100%;
  width: 100%;
  transition: all 500ms ease-out;
}

.ab .item-1 img {
  object-fit: fill;
}

.ab img:hover {
  transform: scale(1.2);
}

.item-1 {
  grid-column-start: 1;
  grid-column-end: 3;
  grid-row-start: 1;
  grid-row-end: 9;
}

.item-2 {
  grid-column-start: 5;
  grid-column-end: 7;
  grid-row-start: 1;
  grid-row-end: 9;
}
.item-3 {
  grid-column-start: 3;
  grid-column-end: 5;
  grid-row-start: 1;
  grid-row-end: 5;
}

.item-4 {
  grid-column-start: 3;
  grid-column-end: 5;
  grid-row-start: 5;
  grid-row-end: 9;
}

@media only screen and (max-width: 600px) {
  .gallary {
    grid-template-columns: repeat(6, 1fr);
    grid-template-rows: repeat(20, 4vw);
  }

  .item-1 {
    grid-column-start: 1;
    grid-column-end: 7;
    grid-row-start: 1;
    grid-row-end: 7;
  }

  .item-2 {
    grid-column-start: 1;
    grid-column-end: 7;
    grid-row-start: 7;
    grid-row-end: 11;
  }
  .item-3 {
    grid-column-start: 1;
    grid-column-end: 7;
    grid-row-start: 11;
    grid-row-end: 15;
  }
  .item-4 {
    grid-column-start: 1;
    grid-column-end: 7;
    grid-row-start: 15;
    grid-row-end: 19;
  }
}

    </style>
</head>
 
<body>
    <section>
            <?php
                while($rows=$result->fetch_assoc())
                {
            ?>
            <div class="ac">
                <div class="img-cover">
                  <img src="img.jpg">
                </div>
                <p><b><?php echo $rows['book_title'];?></p></b>
                <p>Author:<b> <?php echo $rows['author_firstName'];?><?php echo $rows['author_lastName'];?></p></b>
                <p>Publisher:<b> <?php echo $rows['publisher_name'];?></p></b>
                <p>Category:<b> <?php echo $rows['category_name'];?></p></b>
                <p>ISBN:<b> <?php echo $rows['ISBN'];?></p></b>
                <p>Price:<b> <?php echo $rows['book_price'];?> TK</p></b>
                <div>
                    <a href="" class="btn">BUY</a>
                </div>
            </div>
            <?php
                }
            ?>
    </section>
</body>
</html>