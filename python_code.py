
from textblob import TextBlob

def sentiment(text):
    text_blob = TextBlob(text)
    return(text_blob.sentiment.polarity)

