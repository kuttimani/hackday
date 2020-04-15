from flask import Flask
from redis import Redis
import os
app = Flask(__name__)

@app.route("/")
def redis():
    version = os.environ['VERSION']
    r = Redis(host='redis-service', port=6379)
    cntr = r.incr("counter")
    return "version %s : Flask app for hack day - counter %d " % (version, cntr) 


if __name__ == "__main__":
    app.run(host="0.0.0.0",port=8000)
