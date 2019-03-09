# NLP-health-assistant
An NLP-driven health assistant bot that interacts, asks a series of personal questions, symptoms and suggests immediate medication, home remedies and diet to be followed.
Please make sure you have microphones connected to avoid unnecessary noise interruption.
Two files of the medbot, .py and .ipynb are attached.
This medbot uses win32com.client SAPI and Google speech recognition API.
Health Assistant initially asks for some details from the user for accurate diagnosis, the bot also asks for primary symptoms one is facing like coughing, fatigue, headache, tiredness among others. It then matches the symptoms with other possible symptoms that the user could be suffering from and based on the answer, draws an inference on the disease, suggests medication, home-remedies and diet to be followed.
A phpmyadmin database health.sql has been attached which has columns age, gender, symptoms, pred_diseases, analgesics, treatments_scans and diet.
age- 0 if age<=20;
age- 1 if age>20 and age<=50;
age- 2 if age>50;
age-120 for all age groups.

