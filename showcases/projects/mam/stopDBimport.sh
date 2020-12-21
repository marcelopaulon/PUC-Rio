ps aux | grep -ie loky | awk '{print $2}' | xargs kill -9
