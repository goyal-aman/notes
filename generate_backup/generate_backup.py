from trilium_py.client import ETAPI
from sys import argv
from datetime import datetime
from dotenv import load_dotenv
import os

load_dotenv()

IP=os.getenv("IP")
PORT=os.getenv("PORT")
TOKEN=os.getenv("TOKEN")

server_url = f'http://{IP}:{PORT}'
token = f'{TOKEN}'
ea = ETAPI(server_url, token)

#do backup
human_readable_datetime = datetime.now().strftime("%Y-%m-%d %H-%M-%S")
res = ea.backup(human_readable_datetime)
#print(res)
