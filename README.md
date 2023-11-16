# vscode-spyder-docker
- VSCode로 Docker Container를 접속하여 Jupyder Notebook을 Spyder 형식으로 사용하는 방법 안내

## 1. Rootless Docker 설치
- 디오비 Docker 환경은 서버 보안을 위해 Root 권한이 필요 없는 Rootless Docker를 사용함.
- Rootless Docker 설치는 디오비 인프라 페이지의 개발자 가이드 중 [Rootless Docker 설치](https://www.notion.so/dobstdio/Rootless-Docker-73083e147e004174b96351af485a31ab?pvs=4) 가이드를 참고

## 2. VSCode 및 Extension 설치
1. [VSCode](https://code.visualstudio.com/) 사이트에 접속하여 VSCode 설치
2. 왼쪽 메뉴바에서 Extension Icon 클릭 및 `Python`, `Dev Container`, `Jupyter` 설치(아래 사진 참고)
    ![이미지1](https://github.com/dob-world/vscode-spyder-docker/blob/main/assets/1.png)

## 3. .devcontainer 작성
1. `.devcontainer` 폴더 생성
2. 컨테이너 실행을 위한 설정을 [devcontainer.json](https://github.com/dob-world/vscode-spyder-docker/blob/main/.devcontainer/devcontainer.json)에 작성  
    2-1. GPU 설정의 경우 [Rootless Docker 설치](https://www.notion.so/dobstdio/Rootless-Docker-73083e147e004174b96351af485a31ab?pvs=4) 가이드의 1~4번 참고  
    2-2. GUI 사용을 하기 위해선 X11 환경을 세팅해주어야한다. [X11 Client 설치](https://www.notion.so/dobstdio/X11-Client-40a758fd3905474b83b9b565e8383da2?pvs=4) 가이드 및 [X11 Server 설치](https://www.notion.so/dobstdio/X11-Server-ccd694c03b384082b0564d7d169c4923?pvs=4) 가이드 확인  
    2-3. Extension의 경우 VSCode Extension 메뉴바를 클릭 후 container 내 자동 설치를 원하는 Extension을 우클릭하여 `Copy Extension ID`를 클릭하여 JSON에 붙여넣기 가능
3. 키보드 단축키 혹은 설정 등 [settings.json](https://github.com/dob-world/vscode-spyder-docker/blob/main/.devcontainer/settings.json)에 작성
    - 팁 : 컨테이너 실행 및 devcontainer 접속 후 VSCode Settings에서 Workspace로 변경 후(아래 이미지 참고) 설정 값을 변경하면 `.vscode` 폴더 아래 `settings.json`이 생김  
        ![이미지2](https://github.com/dob-world/vscode-spyder-docker/blob/main/assets/2.png)

## 4. `Dev Containers: Rebuild and Reopen in Container` 실행
1. 윈도우 / 리눅스의 경우 : Control + P | 맥의 경우 : command + P 클릭
2. `> Dev Containers: Rebuild and Reopen in Container` 입력 및 엔터
3. 코드 창이 뜰때까지 기다렸다가 기존처럼 사용

## 5. Vscode에서 Spyder 형식으로 사용하기
1. .devcontainer/[settings.json](https://github.com/dob-world/vscode-spyder-docker/blob/main/.devcontainer/settings.json) 설정 필수
2. main.py의 셀에 커서 선택 후 `Shift + Enter`
3. 오류날 시 Jupyter의 Kernel 바꿔주기