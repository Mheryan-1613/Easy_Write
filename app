#!/bin/python3
from tkinter import * 
from tkinter import filedialog
import os


def save():
    x = 0
def saveAs():
        my_text_info = mytext.get("1.0",END)  
        file = filedialog.askopenfilename(initialdir="/home/robotics", title="Save as", filetypes=(("text files", "*.*"), ))
        file = open(file, "w")
        file.write(my_text_info)
        file.close()

#Create new file
def add():
        add_file = filedialog.asksaveasfilename(initialdir="/home/robotics", title="Create new file", filetypes=(("text file", "*.txt"), ))
        add_file = open(add_file, "a")
        add_file.close()

#Open new file
def open():
    mytext.delete("1.0", END)
    text = filedialog.askopenfilename(initialdir="/home/", title="open file", filetypes=(("text files", "*.*"), ))
    text = open(text, "r")
    stuff = text.read()
    mytext.insert(END, stuff)
    text.close()    

#Delete files
def deleteFile():
    file = filedialog.askopenfilename(initialdir="/home/", title="delete file", filetypes=(("all files", "*.*"), ))
    os.remove(file)

#Adding root var
root= Tk()
#Define program parameters
root.geometry("520x400")
root.title("EasyWrite(1.1)")
root.resizable(False, False)

#Menubar 
menubar = Menu(root, bg="orange", fg="white")
filemenu = Menu(menubar, tearoff=0)
#Menubar items
filemenu.add_command(label="New", command=add)
filemenu.add_command(label="Open", command=open)
filemenu.add_command(label="Save", command=save)
filemenu.add_command(label="Save As", command=saveAs)
filemenu.add_command(label="Delete", command=deleteFile)
filemenu.add_separator()
filemenu.add_command(label="Exit", command=root.quit)
menubar.add_cascade(label="File", menu=filemenu )

root.config(menu=menubar)

heading = Label(text="Easy Write", fg="orange",font="Fixedsys 14 bold")
heading.pack()

#Textbox
mytext = Text(root, width=60, height=20)
mytext.place(x=15, y=30)

#Print program info
print("Easy Write(1.1)")
print("Developing mode ...")

mainloop()
