#!/bin/python3
from tkinter import * 
from tkinter import filedialog


#def save_info():
	#my_text_info = mytext.get("1.0",END)  
	#file = filedialog.askopenfilename(initialdir="/home/robotics", title="Submit text", filetypes=(("text files", "*.*"), ))
	#text = open(text, "w")
#	text.write(my_text_info)
#	text.close()

def save():
    mytext_info = mytext.get("1.0", END)
    open_info()
    text = open(text, "a")
    mytext.insert(END, stuff)
    text.close()

def add_info():
	add_file = filedialog.asksaveasfilename(initialdir="/home/robotics", title="Create new file", filetypes=(("text file", "*.txt"), ))
	add_file = open(add_file, "a")
	add_file.close()

def open_info():
    mytext.delete("1.0", END)
    text = filedialog.askopenfilename(initialdir="/home/robotics", title="open file", filetypes=(("text files", "*.*"), ))
    text = open(text, "r")
    stuff = text.read()
    mytext.insert(END, stuff)

    
 
app = Tk()

app.geometry("520x500")
app.title("EasyWrite(1.1)")
app.resizable(False, False)


heading = Label(text="Easy Write", bg="orange", fg="white",font="Fixedsys 14 bold", width="500", height="3")

heading.pack()

mytext = Text(app, width=60, height=20)
mytext.place(x=15, y=130)
#my_text.pack()

button = Button(app,text="Submit",command=save,width=6,height=2)
button.place(x=407,y=78)

open_note = Button(app,text="Open",width=2,height=2, command=open_info)
open_note.place(x=66,y=78)

add_note = Button(app,text="Add",width=2,height=2, command=add_info)
add_note.place(x=16,y=78)

print("Easy Write(1.1)")
print("Developing mode ...")

mainloop()
