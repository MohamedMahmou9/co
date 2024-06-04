# استخدم صورة Python الرسمية
FROM python:3.9-slim

# تعيين مجلد العمل
WORKDIR /app

# نسخ متطلبات المشروع وتثبيتها
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# نسخ باقي ملفات المشروع
COPY . .

# تعيين الأوامر الافتراضية لتشغيل التطبيق
CMD ["python", "main.py"]
