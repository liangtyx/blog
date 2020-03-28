

Maverick 的用法见 [README.md](https://github.com/AlanDecode/Maverick)。

[《完全用 GitHub 写博客》](https://blog.imalan.cn/archives/blog-with-github/)



> **关于如何在电脑上使用 Git**
>
> 如果你之前没有使用过 GitHub，那么需要进行一定的设置。如果你的电脑是 macOS 或者 Linux，git 可能是默认安装在电脑上的；如果是 Windows，则需要到[这里](https://git-scm.com/downloads)下载合适的 Git 安装到电脑上。记得安装时选中将  git 添加到 PATH。
>
> 文件管理器中右键，点击 Git Bash Here，在弹出的窗口中输入：
>
> ```
> git config --global user.name "你的GitHub用户名"
> git config --global user.email "你的GitHub邮箱"
> git config --global credential.helper store
> ```
>
> 之后到仓库右上角的 Clone or download 那里，复制仓库链接（建议使用 HTTPS）：
>
> ![](https://github.com/AlanDecode/Blog-With-GitHub-Boilerplate/raw/source/assets/image-20191218201359204.png)
>
> 在命令行中输入：
>
> ```
> git clone <仓库链接>
> ```
>
> 若需要输入用户名密码则输入就行。这样仓库就克隆到了本地。在仓库中进行修改后，这样提交文件：
>
> ```
> # cd 到仓库文件夹后
> 
> git add .
> git commit -m "添加修改"
> git push
> ```
>
> 这样本地的修改就推送到了 GitHub。

## 绑定自定义域名

在域名解析商那里将域名 CNAME 设置为 `<用户名>.github.io`，然后回到仓库，在 `src/static` 文件夹中添加一个名叫 CNAME 的文件，内容填写你自己的域名。然后在 conf.py 中修改 `site_prefix` 为 `"/"`。稍等片刻，你的网站就能通过你的域名访问了。
