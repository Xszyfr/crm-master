<?php

session_start();

if (!isset($_SESSION['udanelogowanie']) && $_SESSION['udanelogowanie'] != true) {
    header('Location: index.php');
    exit();

}
?>
<?php

if (isset($_POST['sn'])) {
    require_once "connect.php";
    $wszystko_dobrze = true;
    $sprzet = $_POST['sprzet'];
    $ilosc = $_POST['ilosc'];
    $sn = $_POST['sn'];
    $tid = $_POST['tid'];
    $id = $_POST['id'];
    mysqli_report(MYSQLI_REPORT_STRICT);

    try
    {

        $cl = new mysqli($host_name, $database_username, $database_password, $database_name);

        if ($cl->connect_errno != 0) {
            throw new Exception(mysqli_connect_errno());
        } else {

            $result = $cl->query("SELECT * FROM Magazyn WHERE sn = '$sn'");

            if (!$result) {
                throw new Exception($cl->error);
            }

            $number = $result->num_rows;
            if ($number > 0) {echo $ilosc; exit();
                $wszystko_dobrze = false;
                $_SESSION['e_sn'] = '<span style="color:red">Podany numer seryjny urządzenia już istnieje w bazie!</span>';
                header('Location: dodawanie_urzadzenia.php');
                exit();
            }
            if ($wszystko_dobrze == true) {
                //Hurra! Wszystko się udało! Updatujemy baze!

                if ($cl->query("UPDATE Magazyn SET sprzet = '$sprzet',  ilosc = '$ilosc', sn = '$sn', tid = '$tid' WHERE id_magazyn = '$id'")) {

                    $_SESSION['udanedodawanie'] = true;

                    header('Location: zestawienie_urzadzen.php');

                } else {
                    throw new Exception($cl->error);
                    header('Location: indexx.php');
                }
            }
            $cl->close();
        }
    } catch (Exception $e) {
        echo '<span style="color:red">Błąd serwera! Przepraszamy za niedogodności i prosimy o dodanie urządzenia w innym terminie!</span>';
        echo '<br/>Indormacja developerska:' . $e;
        header('Location: indexx.php');
    }

} else {
    header('Location: dodawanie_urzadzenia.php');
    exit();
}
