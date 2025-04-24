#!/bin/bash

# Directory containing images
IMAGE_DIR="./images"  # Change this to your image directory
OUTPUT_FILE="gallery.html"

# Default number of columns
NUM_COLUMNS=3

# Check if a command-line argument is provided for the number of columns
if [[ $# -eq 1 ]]; then
    NUM_COLUMNS=$1
fi

# Start HTML file
cat <<EOL > $OUTPUT_FILE
<html>
<head>
    <title>Image Gallery</title>
    <style>
        body { background: #c0c0c0; }
        table { width: 100%; border-collapse: collapse; }
        td { padding: 10px; text-align: center; }
        img { max-width: 100%; height: auto; border: 2px solid #000; }
        h3 { margin: 10px 0; }
    </style>
</head>
<body>
    <center>
        <h1>Image Gallery</h1>
        <p>Current as of $(date)</p>
    </center>
    <table border="3" cellspacing="0" cellpadding="1">
EOL

# Initialize counter
count=0

# Loop through image files in the directory
shopt -s nullglob  # Enable nullglob to handle no matches
for img in "$IMAGE_DIR"/*; do
    if [[ -f "$img" ]]; then
        # Get the image filename without the path
        img_name=$(basename "$img")
        
        # Add a new row if necessary
        if (( count % NUM_COLUMNS == 0 )); then
            echo "<tr>" >> $OUTPUT_FILE
        fi
        
        # Add image to the HTML file
        cat <<EOL >> $OUTPUT_FILE
            <td>
                <h3>$img_name</h3>
                <img src="$img" alt="$img_name">
                <p>Description for $img_name.</p>
            </td>
EOL
        
        # Close the row after the specified number of columns
        ((count++))
        if (( count % NUM_COLUMNS == 0 )); then
            echo "</tr>" >> $OUTPUT_FILE
        fi
    fi
done

# Close the last row if it wasn't closed
if (( count % NUM_COLUMNS != 0 )); then
    echo "</tr>" >> $OUTPUT_FILE
fi

# End HTML file
cat <<EOL >> $OUTPUT_FILE
    </table>
</body>
</html>
EOL

echo "Gallery generated in $OUTPUT_FILE with $NUM_COLUMNS columns."

