# Drone Lark Plugin 飞书通知插件

## Sample

```yml
  - name: Send Lark Message
    image: johntian321/drone-lark
    pull: always
    when:
      status:
        - success
        - failure
    settings:
      webhook: https://open.feishu.cn/open-apis/bot/v2/hook/xxxxxxxxxxxx
      secret: xxxxxxxxxxxx
      debug: true
```

## Build

```bash
chmod +x ./build.sh

# 构建并推送 latest 标签
./build.sh

# 或者指定版本号
tag=v1.0.0 ./build.sh
```