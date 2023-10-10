"""
 * Projecr Name : Portfolio Website
 * Project repository link : https://github.com/sashuu69/portfolio_site
 * File name : wsgi.py
 * Author : Sashwat K
 * Purpose : Debug Runner
"""

from app import app

if __name__ == "__main__":
    app.run(threaded=True, debug=True)
