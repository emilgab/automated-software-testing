# imports
from app import app
from flask import Flask, render_template

# import the customer_review dictionary
from app.reviews import customer_reviews

@app.route('/')
def home():
    return render_template('index.html',reviews=customer_reviews)
