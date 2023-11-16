# Output 확인
print(1)
print(str)

# 오류 확인
print(i)

# GPU 확인
import torch
device = torch.device('cuda:0') if torch.cuda.is_available() else torch.device('cpu')
print(device)

# Jupyter Variable 확인
a = 3
b = 1

# GUI 확인
## $ xclock
## $ xeyes