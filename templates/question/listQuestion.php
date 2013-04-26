<html>

<body>
      <table>
        <tr>
          <th>Question No.</th>
        </tr>
<?php foreach ( $quest as $question ) { ?>

        <tr onclick="location='admin.php?action=editArticle&;qId=<?php echo $question->QID?>'">
          <td><?php echo $question['QID']?></td>
          <td>
            <?php echo $question['question']?>
          </td>
        </tr>

<?php } ?>
</body>
</html>
