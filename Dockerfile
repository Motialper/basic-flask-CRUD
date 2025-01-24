# שימוש ב-Image בסיסי של Python
FROM python:3.10-slim

# משתני סביבה למנוע קבצים זמניים
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# משתנה סביבה ל-Flask
ENV FLASK_APP=main.py

# תיקיית עבודה
WORKDIR /app

# העתקת קבצים
COPY . /app/

# התקנת תלויות
RUN pip install --no-cache-dir -r requirements.txt

# חשיפת פורט 5000
EXPOSE 5000

# הפעלת Flask
CMD ["flask", "run", "--host=0.0.0.0"]
