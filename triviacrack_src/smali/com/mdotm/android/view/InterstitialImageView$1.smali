.class Lcom/mdotm/android/view/InterstitialImageView$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/InterstitialImageView;-><init>(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;)V
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/mdotm/android/view/InterstitialImageView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/InterstitialImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->c:Lcom/mdotm/android/view/InterstitialImageView;

    .line 113
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 116
    new-instance v0, Lcom/mdotm/android/view/InterstitialImageView$1$1;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/InterstitialImageView$1$1;-><init>(Lcom/mdotm/android/view/InterstitialImageView$1;)V

    iput-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/view/InterstitialImageView$1;)Lcom/mdotm/android/view/InterstitialImageView;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->c:Lcom/mdotm/android/view/InterstitialImageView;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->a:Z

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Click page finished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->c:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->b(Lcom/mdotm/android/view/InterstitialImageView;)V

    .line 174
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "started Loading url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->c:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->c(Lcom/mdotm/android/view/InterstitialImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->a:Z

    .line 136
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->c:Lcom/mdotm/android/view/InterstitialImageView;

    iget-object v0, v0, Lcom/mdotm/android/view/InterstitialImageView;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->c:Lcom/mdotm/android/view/InterstitialImageView;

    iget-object v0, v0, Lcom/mdotm/android/view/InterstitialImageView;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 140
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->a:Z

    .line 182
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->c:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->c(Lcom/mdotm/android/view/InterstitialImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load landing url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->c:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->b(Lcom/mdotm/android/view/InterstitialImageView;)V

    .line 192
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to report impression : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "returned url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    if-eqz p2, :cond_0

    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->c:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->d(Lcom/mdotm/android/view/InterstitialImageView;)Lcom/mdotm/android/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/c/c;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->c:Lcom/mdotm/android/view/InterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/InterstitialImageView;->b(Lcom/mdotm/android/view/InterstitialImageView;)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/InterstitialImageView$1;->a:Z

    .line 160
    const/4 v0, 0x1

    .line 163
    :goto_1
    return v0

    .line 151
    :catch_0
    move-exception v0

    .line 153
    const-string v1, "Google Play store app is not installed"

    .line 152
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loading other url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
