''''Models for adopt app'''

# import datetime
from flask_sqlalchemy import SQLAlchemy

GENERIC_IMAGE = "https://mylostpetalert.com/wp-content/themes/mlpa-child/images/nophoto.gif"

db = SQLAlchemy()


class Pet(db.Model):
    '''adoptable pet'''

    __tablename__ = 'pets'

    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.Text, nullable=False)
    species = db.Column(db.Text, nullable=False)
    photo_url = db.Column(db.Text)
    age = db.Column(db.Integer)
    # birthday = db.Column(db.DateTime, nullable=False,
    #                      default=datetime.datetime)
    notes = db.Column(db.Text)
    available = db.Column(db.Boolean, nullable=False, default=True)

    def image_url(self):
        return self.photo_url or GENERIC_IMAGE


def connect_db(app):
    '''connect this database to provided Flask app'''
    app.app_context().push()
    db.app = app
    db.init_app(app)
