<?php
// Check if the search query parameter is present in the URL
if(isset($_GET['search'])) {
    // Sanitize the search query to prevent SQL injection or other attacks
    $search_query = htmlspecialchars($_GET['search']);

    // Perform the search operation (replace this with your actual search logic)
    // For demonstration purposes, let's just echo the search query
    echo "Search query: " . $search_query;
} else {
    // If no search query is provided, return an error message
    echo "No search query provided.";
}
?>
