<!DOCTYPE html>
<html>
<head>
	<title>CSV to HTML Table</title>
	<style>
		table {
			border-collapse: collapse;
			width: 100%;
		}
		th, td {
			text-align: left;
			padding: 8px;
			border-bottom: 1px solid #ddd;
		}
		th {
			background-color: #f2f2f2;
		}
		tr:hover {
			background-color: #f5f5f5;
		}
	</style>
</head>
<body>
	<?php 
		if ( isset( $_POST['submit'] ) ) {
			$filename = $_FILES['file']['tmp_name'];
			if ( !empty( $filename ) ) {
				$file = fopen( $filename, 'r' );
				if ( $file ) {
					echo '<table>';
					// Display table header row
					if ( ( $data = fgetcsv( $file ) ) !== false ) {
						echo '<thead><tr>';
						foreach ( $data as $field ) {
							echo '<th>' . htmlspecialchars( $field ) . '</th>';
						}
						echo '</tr></thead>';
					}
					// Display table rows
					echo '<tbody>';
					while ( ( $data = fgetcsv( $file ) ) !== false ) {
						echo '<tr>';
						foreach ( $data as $field ) {
							echo '<td>' . htmlspecialchars( $field ) . '</td>';
						}
						echo '</tr>';
					}
					echo '</tbody></table>';
					fclose( $file );
				} else {
					echo '<p>Failed to open the file.</p>';
				}
			} else {
				echo '<p>Please choose a file.</p>';
			}
		}
	?>
	<form method="post" enctype="multipart/form-data">
		<input type="file" name="file" accept=".csv"><br>
		<input type="submit" name="submit" value="Submit">
	</form>
</body>
</html>