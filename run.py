# imports our app
from app import app

if __name__ == "__main__":
    # Note! debug=True, disable this before production
    app.run(debug=True, host='0.0.0.0')
