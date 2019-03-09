
# coding: utf-8

# In[1]:


import speech_recognition as sr;
import win32com.client 


# In[2]:


r=sr.Recognizer()
speaker = win32com.client.Dispatch("SAPI.SpVoice")
with sr.Microphone() as source:
    speaker.Speak("Say something")
    audio=r.listen(source)
    try:
        text=r.recognize_google(audio)
        speaker.Speak("You said " + text)    
    except:
        speaker.Speak("Sorry, couldn't catch that!")


# In[3]:


import os
os.system("echo 'hey'")


# In[4]:


import win32com.client
speaker = win32com.client.Dispatch("SAPI.SpVoice")
speaker.Speak("Hello, it works!")


# In[5]:


import nltk
#nltk.download()


# In[14]:


import nltk
from nltk.tokenize import sent_tokenize, word_tokenize, PunktSentenceTokenizer
import speech_recognition as sr;
import win32com.client 
from nltk.corpus import stopwords
from nltk.stem import WordNetLemmatizer 
import mysql.connector
from mysql.connector import Error
from word2number import w2n


# In[16]:


r=sr.Recognizer()
speaker = win32com.client.Dispatch("SAPI.SpVoice")
stopWords=set(stopwords.words('english'))
filteredWords=[]
tags=[]
lemWords=[]
y='yes'
n='no'
nope='nope'
yeah='yeah'
ps=WordNetLemmatizer()

with sr.Microphone() as source:
    speaker.Speak("Hello there! I'm Doctor Shawn and I'm your personal health assistant. I might need some of your personal details to serve you better. ")
    speaker.Speak("What's your name?")
    audio=r.listen(source)
    try:
        sent1=r.recognize_google(audio)
        words1=word_tokenize(sent1)
        name=words1[len(words1)-1]
        print(name)
        speaker.Speak("Hey "+name+"Can you tell me your age?")
        audio=r.listen(source)
        sent2=r.recognize_google(audio)
        words2=word_tokenize(sent2)
        age=words2[len(words2)-1]
        print(age)
        
    #speaker.Speak("Thanks for telling me.Your age is"+age)
        speaker.Speak("Thanks for telling me your age, "+name+" Now do you mind telling me your gender?")
        audio=r.listen(source)
        sent3=r.recognize_google(audio)
        words3=word_tokenize(sent3)
        gender=words3[len(words3)-1]
        #print(gender)
        
        speaker.Speak("Name one of the primary problems you're facing")
        audio=r.listen(source)
        sent4=r.recognize_google(audio)
        words4=word_tokenize(sent4)
        sym=words4[len(words4)-1]
        print(sym)
        conn = mysql.connector.connect(host='sql12.freemysqlhosting.net',
                             database='sql12279572',
                             user='sql12279572',
                             password='PylfrUnIqm')
        if conn.is_connected():
            cursor = conn.cursor()
            cursor.execute("select * from health where symptoms like '%"+sym+"%'")
            record = cursor.fetchone()
            speaker.Speak("Are you also suffering from severe "+record[2]+"?")
            audio=r.listen(source)
            sent5=r.recognize_google(audio)
            words5=word_tokenize(sent5)
            addedsymp=words5[0]
            for w in words5:
                if w not in stopWords:
                    filteredWords.append(w)
                    lemWords.append(ps.lemmatize(w))
            print(addedsymp)
            print(addedsymp==n or addedsymp==nope)
            if(addedsymp==n):
                speaker.Speak("Then you have nothing to worry about, "+name+" Have a nice day!")
            elif(addedsymp==y or addedsymp==yeah):
                speaker.Speak("You may be suffering from "+record[3]+" , but dont worry I've got your back")
                speaker.Speak("You can take the analgesics, "+record[4]+"for immediate relief and you can also go for, "+record[5])
                speaker.Speak("Also, please don't forget to include good amounts of "+record[6]+" in your diet. ")
                speaker.Speak("Hope that was helpful. It was nice serving you,"+name)
                print("You may be suffering from "+record[3]+".")
                print("You can take the analgesics "+record[4]+" for immediate relief and you can also go for "+record[5])
                print("Also, please don't forget to include good amounts of "+record[6]+" in your diet. ")
                print("Hope that was helpful. It was nice serving you, "+name)

    except:
        speaker.Speak("Sorry! Couldn't catch that")
                
        #print(sent_tokenize(name))
        #speaker.Speak("You said " + text)    
    #except:
        #speaker.Speak("Sorry, couldn't catch that!")
#print(filteredWords)
#print(lemWords)
tags=nltk.pos_tag(lemWords)
#print(tags)


# In[8]:


print(stopwords)


# In[9]:


import mysql.connector
from mysql.connector import Error
#sym="wheezing"
l=(0,120)
#placeholder= '?' # For SQLite. See DBAPI paramstyle.
#placeholders= ', '.join(placeholder*len(l))
#query= 'SELECT pred_diseases FROM health where age IN %s' % (l,)
try:
    conn = mysql.connector.connect(host='sql12.freemysqlhosting.net',
                             database='sql12279572',
                             user='sql12279572',
                             password='PylfrUnIqm')
    if conn.is_connected():
       db_Info = conn.get_server_info()
       print("Connected to MySQL database... MySQL Server version on ",db_Info)
       cursor = conn.cursor()
       #cursor.execute(query)
       cursor.execute("select pred_diseases from health where symptoms like '%"+sym+"%'")
       record = cursor.fetchone()
       speaker.Speak("You're suffering from"+record[0]+" , but dont worry I've got you")
except Error as e :
    print ("Error while connecting to MySQL", e)
finally:
    #closing database connection.
    if conn.is_connected():
        cursor.close()
        conn.close()
        print("MySQL connection is closed")


# In[10]:


from word2number import w2n
print(w2n.word_to_num('twenty'))


# In[11]:


a


# In[ ]:


a


# In[ ]:


if(w2n.word_to_num(age)<=20):
            a=(0,120)
        elif(w2n.word_to_num(age)>20 and w2n.word_to_num(age)<=50):
            a=(1,120)
        elif(w2n.word_to_num(age)>50 and w2n.word_to_num(age)<120):
            a=(2,120)


# In[ ]:


if(gender=='female'):
            print("F")
            g=("F","M/F")
        elif(gender=='male'):
            print("M")
            g=("M","M/F")

