


# 下载一个micromamba，因为conda未知原因用不了

wget -qO- https://micromamba.snakepit.net/api/micromamba/linux-64/latest | tar -xvj -C ~/.local/bin/ --strip-components=1 bin/micromamba

# 创建环境
micromamba env create -f conda_environment.yaml

pip install huggingface_hub==0.25.2

# 设置code-server，方便调试
curl -fsSL https://code-server.dev/install.sh | sh
pip install pyngrok
ngrok config add-authtoken 2pkGU9ysU3cr87soPHD5upKEvHO_f5XqD5xf21CtNVYFPXij
# sed -i.bak 's/auth: password/auth: none/' ~/.config/code-server/config.yaml
echo "your passsword"
cat /root/.config/code-server/config.yaml | grep password

import subprocess
def iframe_thread(): 
    p = subprocess.Popen(["code-server"], stdout=subprocess.PIPE)
 
from threading import Thread
 
Thread(target=iframe_thread, daemon=True).start()
 
ngrok http  8080