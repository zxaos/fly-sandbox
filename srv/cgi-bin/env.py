#!/usr/bin/env python3
import os

print("Content-Type: text/html")
# Be careful, the leading newline is meaningful here

print("""
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Environment</title>
    </head>
    <body>
        <h1>Runtime Environment Variables</h1>
        <div>
            <dl>
"""
)

for name, value in os.environ.items():
    print(f"                <dt>{name}</dt><dd>{value}</dd>")

print("""
            </dl>
        </div>
    </body>
</html>"""
)
