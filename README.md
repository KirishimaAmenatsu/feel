# feel v1.0.0

记录当前感受的命令行工具。支持中/英双语，根据 `LANG` 环境变量自动切换。

## 安装

### 从 AUR 安装

```bash
yay -S feel
# 或
paru -S feel
```

### 手动构建 (makepkg)

```bash
git clone https://github.com/CamelliaTse/feel.git
cd feel
makepkg -si
```

### 直接安装

```bash
sudo cp feel /usr/local/bin/feel
sudo chmod +x /usr/local/bin/feel
```

## GPG 签名

本项目使用以下 GPG 密钥签名：

- **密钥指纹**: `28E1F22CFC60A1BA17B95D11CDEABF16DC0D8711`
- **UID**: CamelliaTse (Personal)

导入密钥：

```bash
gpg --recv-keys 28E1F22CFC60A1BA17B95D11CDEABF16DC0D8711
```

## 用法

### 交互模式

```bash
feel
```

1. 提示「感受：」(en: "Feeling: ")，输入当前感受
2. 提示「备注 (可选，回车跳过)：」(en: "Note (optional, Enter to skip): ")，可输入备注或直接回车跳过
3. 在「感受：」提示下直接回车即可退出

### 直接模式

```bash
feel <描述>
```

示例：

```bash
feel 我不开心
feel 今天心情不错
```

### 查看日志

```bash
feel list
```

显示最近 10 条记录，带行号。

## 日志

日志位置遵循 XDG 规范：`$XDG_DATA_HOME/feel/log`（默认 `~/.local/share/feel/log`）。

格式：`unix_timestamp yyyy-mm-dd hh:mm 感受 [(备注)]`

示例：

```
   5  1780334414 2026-06-02 01:20 直接测试
   6  1780334665 2026-06-02 01:24 我真的不开心
   7  1780335079 2026-06-02 01:31 happy
```
