---
topic:      "MongoDB portable"
creation:   2025-05-02
author:     "BO$ <https://github.com/bos-8>"
tag:        [guide, config, MongoDB]
---

# PORTABLE MongoDB
## How to Set Up Portable MongoDB on Windows (Step by Step)

### 1. Download the MongoDB ZIP package
- Go to the official site: [MongoDB Community Server](https://www.mongodb.com/try/download/community)
- Choose:
  - Version: (e.g. 8.0 or latest stable)
  - OS: Windows
  - Package: **ZIP**
- Click **Download**

- Or clink on this link ->
[MongoDB Community Server v8.0.9 Download](
https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-8.0.9.zip)

---

### 2. Extract the ZIP archive
- Extract the ZIP file to a folder, for example:
```
C:\PortableSoftware\MongoDB
```

---

### 3. Place the launcher script
- Copy my custom `start_mongodb.bat` file into the **main MongoDB folder** (e.g. next to `bin`)
- Dir tree should look like this:

```
C:\PortableSoftware\MongoDB
├───bin
├───LICENSE-Community.txt
├───MPL-2
├───README
├───start_mongodb.bat    <<< my custom script
└───THIRD-PARTY-NOTICES
```

---

### 4. Run the script

> [!WARNING]
> You are running this script: [`start_mongo.bat`](../SCRIPTS/start_mongodb.bat) at your own risk.

- Double-click [`start_mongo.bat`](../SCRIPTS/start_mongodb.bat)
- The script will:
  - Create `db\` and `log\` folders if they don't exist
  - Start the MongoDB server (`mongod.exe`)
  - Optionally assign a free port
  - Show the access address (`localhost:PORT`)
- To stop the server, either:
  - Use `Ctrl+C` in the terminal

### Console Output Preview
```
           __  ___                        ____  ____
          /  |/  /___  ____  ____  ____  / __ \/ __ |
         / /|_/ / __ \/ __ \/ __ `/ __ \/ / / / __  |
        / /  / / /_/ / / / / /_/ / /_/ / /_/ / /_/ /
       /_/  /_/\____/_/ /_/\__, /\____/_____/_____/
                          /____/

              MongoDB - LOCAL PORTABLE SERVER
============================================================
 script started at: | pt. 02.05.2025 22:43:29,61
 script path:       | C:\PortableSoftware\MongoDB\
 script name:       | start_mongodb.bat
------------------------------------------------------------
 script author:     | BO$
============================================================
   WARNING: You are running this script at your own risk.

Starting MongoDB on port 27018...

MongoDB is running on mongodb://localhost:27018
CTRL+C to stop MongoDB.

```