
#!/bin/bash
# Install Gunicorn inside the activated virtual environment
pip install gunicorn

# Start Flask app using Gunicorn
exec gunicorn -w 2 deepr.web.app:app --bind=0.0.0.0:8000 --timeout 120
