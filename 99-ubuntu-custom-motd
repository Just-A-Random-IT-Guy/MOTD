#!/bin/bash


# Function to get a random joke using Python
get_random_joke() {
    python3 <<EOF
import requests
import random

# List of jokes
jokes = [
    "Why do programmers prefer dark mode? Because the light attracts bugs!",
    "Why don't scientists trust atoms? Because they make up everything!",
    "Parallel lines have so much in common... It's a shame they'll never meet.",
    "Why don't skeletons fight each other? They don't have the guts!",
    "What do you call fake spaghetti? An impasta!",
    "Why did the scarecrow win an award? Because he was outstanding in his field!",
    "What did one ocean say to the other ocean? Nothing, they just waved."
]

def get_random_joke():
    # Flags to avoid requesting rude &/or crude jokes, feel free to remove flags if you like!
    # NOTE: Documentation on how to use the JokeApi can be found @ https://v2.jokeapi.dev/joke/
    flags = ["nsfw", "religious", "racist", "sexist", "explicit"]
    
    # Fetch a joke from JokeAPI with specified flags
    response = requests.get(f"https://v2.jokeapi.dev/joke/Any?blacklistFlags={','.join(flags)}")
    
    if response.status_code == 200:
        data = response.json()
        if data['type'] == 'single':
            joke = data['joke']
            if joke and len(joke) >= 5:
                return joke
    
    # If JokeAPI did not return a valid joke, select a random joke from the list
    return random.choice(jokes)

random_joke = get_random_joke()
print(random_joke)
EOF
}



echo "#############################################"
echo "Unauthorized access to this system is strictly prohibited. Only authorized users are allowed. Any malicious or unauthorized access will be reported to the authorities."
echo "#############################################"

# Current Date & Time
echo "Current Date & Time: $(date)"
# I used the following online tool for generating the following ASCII art - https://onlinetools.com/ascii/convert-text-to-ascii-art 
echo "#############################################"
echo "____    __    ____  _______  __        ______   ______   .___  ___.  _______    .______        ___       ______  __  ___"
echo "\\   \\  /  \\  /   / |   ____||  |      /      | /  __  \\  |   \\/   | |   ____|   |   _  \\      /   \\     /      ||  |/  /"
echo " \\   \\/    \\/   /  |  |__   |  |     |  ,----'|  |  |  | |  \\  /  | |  |__      |  |_)  |    /  ^  \\   |  ,----'|  '  /"
echo "  \\            /   |   __|  |  |     |  |     |  |  |  | |  |\\/|  | |   __|     |   _  <    /  /_\\  \\  |  |     |    <"
echo "   \\    /\\    /    |  |____ |  \`----.|  \`----.|  \`--'  | |  |  |  | |  |____    |  |_)  |  /  _____  \\ |  \`----.|  .  \\"
echo "    \\__/  \\__/     |_______||_______| \\______| \\______/  |__|  |__| |_______|   |______/  /__/     \\__\\ \\______||__|\\__\\"
echo ""
echo "#############################################"

# System Info
echo "System Info:"
echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "Ubuntu Version: $(lsb_release -d | awk -F ":\t" '{print $2}')"
echo "Users logged in: $(who | wc -l)"
echo "Local IP address: $(hostname -I)"
echo "Public IP address: $(curl -s ifconfig.me)"
echo "#############################################"

# Disk Usage
echo "Disk Usage:"
df -h
echo "#############################################"

# Memory Usage
echo "Memory Usage:"
free -m
echo "#############################################"

# Last login time
echo "Last login: $(last -1 -F | awk 'NR==1{print $1" logged in on "$5" "$6" "$7" from "$3}')"
echo "#############################################"

# Display a random joke
echo "#############################################"
echo "Random Joke:"
get_random_joke
echo "#############################################"


