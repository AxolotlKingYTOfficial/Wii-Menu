import tkinter as tk
from tkinter import messagebox

class WiiHomeMenu:
    def __init__(self, root):
        """
        Initialize the Wii Home Menu with Settings, SD Card, and Disk Channel options.
        
        :param root: The root window object.
        """
        self.root = root
        self.root.title("Nintendo Wii Home Menu")
        self.root.geometry("400x300")
        
        # Create Home Menu buttons
        self.create_home_menu()

    def create_home_menu(self):
        """Create buttons for the Home Menu."""
        self.clear_window()

        tk.Label(self.root, text="Wii Home Menu", font=("Helvetica", 16)).pack(pady=20)

        tk.Button(self.root, text="Settings", command=self.open_settings_menu).pack(pady=10)
        tk.Button(self.root, text="SD Card Menu", command=self.open_sd_card_menu).pack(pady=10)
        tk.Button(self.root, text="Disk Channel", command=self.open_disk_channel).pack(pady=10)

    def open_settings_menu(self):
        """Open the Settings Menu."""
        self.clear_window()
        tk.Label(self.root, text="Settings Menu", font=("Helvetica", 16)).pack(pady=20)
        tk.Button(self.root, text="Back to Home Menu", command=self.create_home_menu).pack(pady=10)
        # Add more settings options here

    def open_sd_card_menu(self):
        """Open the SD Card Menu."""
        self.clear_window()
        tk.Label(self.root, text="SD Card Menu", font=("Helvetica", 16)).pack(pady=20)
        tk.Button(self.root, text="Back to Home Menu", command=self.create_home_menu).pack(pady=10)
        # Add SD card functionalities here

    def open_disk_channel(self):
        """Open the Disk Channel."""
        self.clear_window()
        tk.Label(self.root, text="Disk Channel", font=("Helvetica", 16)).pack(pady=20)
        tk.Button(self.root, text="Back to Home Menu", command=self.create_home_menu).pack(pady=10)
        # Add disk channel functionalities here

    def clear_window(self):
        """Clear all widgets from the window."""
        for widget in self.root.winfo_children():
            widget.destroy()

if __name__ == "__main__":
    root = tk.Tk()
    app = WiiHomeMenu(root)
    root.mainloop()
