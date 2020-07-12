# %%
import json
import hashlib

# %%
def checksum(path):
    with open(path, 'rb') as file:
        return hashlib.sha224(file.read()).hexdigest()

# %%
checksums = {
    'launcher': checksum('release/launcher'),
    'patcher': checksum('release/patcher'),
}

# %%
with open('release/checksums.json', 'w') as outfile:
    json.dump(checksums, outfile)

# %%
