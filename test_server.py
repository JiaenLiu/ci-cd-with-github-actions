# Description: This file is used to test the server.py file. It is not used in the final product.
# Three endpoints are created to test the server.py file. The first endpoint is used to test the app.py 

from flask import Flask, request, render_template, redirect, url_for

app = Flask(__name__)

@app.route('/')
def init():
    return "Hello World!"

@app.route("/test", methods=["POST"])
def test():
    payload = request.json
    ref = payload.get('ref', '')

    # Check if the push is to the desired branch, e.g., 'refs/heads/testing'
    if ref == 'refs/heads/stage':
        return "test finished"
        # this hook is coming from a push done to the "testing" branch
        # Add your code logic here

@app.route("/deployment", methods=["POST"])
def deployment():
    payload = request.json
    ref = payload.get('ref', '')

    # Check if the push is to the desired branch, e.g., 'refs/heads/testing'
    if ref == 'refs/heads/main':
        return "deployment finished"
        # this hook is coming from a push done to the "testing" branch
        # Add your code logic here


if __name__ == '__main__':
    app.run(debug=True, port=5001)