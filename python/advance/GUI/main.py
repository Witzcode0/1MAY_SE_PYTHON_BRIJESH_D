import tkinter as tk
import os
import pygame
import time

screen = tk.Tk()

# Initialize pygame mixer
pygame.mixer.init()

# Set window title
screen.title("Musics")

# Set window size
screen.geometry("400x300")

screen.iconbitmap("images/logo.ico")

musics = os.listdir('musics')

# Create a scrollbar
scrollbar = tk.Scrollbar(screen)
scrollbar.pack(side=tk.RIGHT, fill=tk.Y)

# Create a listbox
listbox = tk.Listbox(screen, yscrollcommand=scrollbar.set, width=50, height=15)
for music in musics:
    music_file_path = r'C:\Brijesh_Work\batch\1MAY_SE_PYTHON_BRIJESH_D\python\advance\GUI\musics' + "\\" + music
    listbox.insert(tk.END, music)
    pygame.mixer.music.load(music_file_path)
listbox.pack(side=tk.LEFT, fill=tk.Y)

scrollbar.config(command=listbox.yview)

# Function to play the MP3 file
def play_music():
    pygame.mixer.music.play()

# Function to stop the MP3 file
def stop_music():
    pygame.mixer.music.stop()

# Create a play button
play_button = tk.Button(screen, text="Play", command=play_music)
play_button.pack(pady=10)

stop_button = tk.Button(screen, text="Stop", command=stop_music)
stop_button.pack(pady=10)

screen.mainloop()