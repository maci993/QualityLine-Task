<?php
function user_table() {
    // Get all users
    $users = get_users();

    // Start making the HTML table
    $output = '<table border="1" width: 100%;">';
    $output .= '<tr><th>Username</th><th>First and Last Name</th><th>Email</th></tr>';

    // Create an array for the text
    $lines = [];

    // Loop through each user and add info to the text file
    foreach ($users as $user) {
        $username = $user->user_login;
        $fullname = $user->first_name . ' ' . $user->last_name;
        $email = $user->user_email;

        // Add row to the table
        $output .= "<tr><td>$username</td><td>$fullname</td><td>$email</td></tr>";

        // Add line to the file we are exporting
        $lines[] = "$username | $fullname | $email";
    }

    $output .= '</table>';

    // add a button 
    $output .= '<br><form method="post"><input type="submit" name="export_users" value="Export to Text File"></form>';

    // when the button is clicked, create the text file
    if (isset($_POST['export_users'])) {
        $file_path = plugin_dir_path(__FILE__) . 'user_export.txt';
        file_put_contents($file_path, implode("\n", $lines));
        $output .= '<p>✅ Exported to: ' . $file_path . '</p>';
    }

    // return the full HTML
    return $output;
}

// register the shortcode 
add_shortcode('user_table', 'user_table_shortcode');

//Note: I followed all the steps to install WordPress,
//  set up XAMPP, and create the plugin. 
// But when I go to Installed Plugins, I don’t see it. 
// I really tried my best,this is my first time working with
//  WordPress and I’m still learning.