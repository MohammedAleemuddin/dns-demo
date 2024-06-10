from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, Broadlume!'

@app.route('/health')
def health_check():
    return jsonify(status='healthy'), 200

# No app.run() here for production
