#!/bin/zsh

# Run the Python HTTP server on port 8000
echo 'http://localhost:8000/verbs_of_motion.html'
python3 -m http.server 8000
