# feel v1.2.0

记录当前感受的命令行工具。支持中/英双语，根据 `LANG` 环境变量自动切换。

## 更新日志

### v1.2.0 (2026-06-02)

- 新增 `feel help` 命令，显示完整的使用帮助和别名列表
- 新增命令别名系统，支持短命令快速操作：
  - `ls` → `list`
  - `ls -a` → `list -a`
  - `del` / `rm` → `delete`
  - `-h` / `--help` → `help`

### v1.1.1 (2026-06-02)

- `feel list` 新增 `-n <N>` 选项，支持指定显示记录数量
- `feel list` 新增 `-a` / `--all` 选项，支持显示所有记录

### v1.1.0 (2026-06-02)

- 新增 `feel delete <unix_timestamp>` 命令，支持基于 Unix 时间戳删除特定记录
- 删除前显示匹配记录并要求确认，防止误删

### v1.0.1 (2026-06-02)

- 修复交互模式下 CJK 宽字符输入丢失的问题（如"还是"被吞掉），改用 `sys.stdin.buffer.readline()` 绕过 readline

### v1.0.0 (2026-06-02)

- 初始发布
- 交互式/直接式两种记录模式
- `feel list` 查看最近 10 条日志
- 中/英双语自动切换
- XDG 规范日志存储
- GPG 签名支持

## 安装

### 从 AUR 安装 (暂不支持)

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
feel list           # 显示最近 10 条记录（默认）
feel list -n 20     # 显示最近 20 条记录
feel list -a        # 显示所有记录
```

显示记录，带行号。

### 删除记录

```bash
feel delete <unix_timestamp>
```

根据 Unix 时间戳删除指定记录。可通过 `feel list` 查看时间戳。

示例：

```bash
feel delete 1780334414
```

删除前会显示匹配的记录并要求输入 `y` 确认。

### 帮助

```bash
feel help           # 显示完整帮助信息
feel -h             # 同上
feel --help         # 同上
```

### 别名

为了提高输入效率，所有命令都支持规范的别名：

| 别名 | 等价于 |
|------|--------|
| `feel ls` | `feel list` |
| `feel ls -a` | `feel list -a` |
| `feel ls -n 20` | `feel list -n 20` |
| `feel del <ts>` | `feel delete <ts>` |
| `feel rm <ts>` | `feel delete <ts>` |
| `feel -h` | `feel help` |
| `feel --help` | `feel help` |

## 日志

日志位置遵循 XDG 规范：`$XDG_DATA_HOME/feel/log`（默认 `~/.local/share/feel/log`）。

格式：`unix_timestamp yyyy-mm-dd hh:mm 感受 [(备注)]`

示例：

```
   5  1780334414 2026-06-02 01:20 直接测试
   6  1780334665 2026-06-02 01:24 我真的不开心
   7  1780335079 2026-06-02 01:31 happy
```
