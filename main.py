import os

from flask import Flask, jsonify
app = Flask(__name__)

@app.route('/')
def hello_world():
    data = {'categories': [
        'sport',
        'entertainment',
        'fashion',
    ]}
    return jsonify(data)

if __name__ == "__main__":
    app.run(host='0.0.0.0',
            port=int(os.environ.get('PORT', 5001)))
