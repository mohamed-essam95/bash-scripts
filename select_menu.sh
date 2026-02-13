#!/bin/bash
echo "Choose a programming language:"
select lang in Python Bash JavaScript C++ Quit; do
    case $lang in
        Python)
            echo "You chose Python 🐍"
            ;;
        Bash)
            echo "You chose Bash 🧩"
            ;;
        JavaScript)
            echo "You chose JavaScript 💻"
            ;;
        C++)
            echo "You chose C++ ⚙"
            ;;
        Quit)

            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done