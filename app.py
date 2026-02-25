from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    # We will change this to the CI/CD message in the second sprint
    return "Hello world"

if __name__ == "__main__":
    # Container Apps usually listen on port 80 or 8080
    port = int(os.environ.get("PORT", 8080))
    app.run(host='0.0.0.0', port=port)