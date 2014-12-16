.class Lcom/mdotm/android/view/a$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/a;-><init>(Landroid/content/Context;Lcom/mdotm/android/d/b;Lcom/mdotm/android/c/c;I)V
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/mdotm/android/view/a;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/a;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/a$1;->c:Lcom/mdotm/android/view/a;

    .line 83
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 86
    new-instance v0, Lcom/mdotm/android/view/a$1$1;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/a$1$1;-><init>(Lcom/mdotm/android/view/a$1;)V

    iput-object v0, p0, Lcom/mdotm/android/view/a$1;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/view/a$1;)Lcom/mdotm/android/view/a;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mdotm/android/view/a$1;->c:Lcom/mdotm/android/view/a;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/a$1;->a:Z

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Click page finished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/mdotm/android/view/a$1;->c:Lcom/mdotm/android/view/a;

    invoke-static {v0}, Lcom/mdotm/android/view/a;->b(Lcom/mdotm/android/view/a;)V

    .line 143
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "started Loading url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/mdotm/android/view/a$1;->c:Lcom/mdotm/android/view/a;

    invoke-static {v0}, Lcom/mdotm/android/view/a;->c(Lcom/mdotm/android/view/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/a$1;->a:Z

    .line 105
    iget-object v0, p0, Lcom/mdotm/android/view/a$1;->c:Lcom/mdotm/android/view/a;

    iget-object v0, v0, Lcom/mdotm/android/view/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/a$1;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    iget-object v0, p0, Lcom/mdotm/android/view/a$1;->c:Lcom/mdotm/android/view/a;

    iget-object v0, v0, Lcom/mdotm/android/view/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/a$1;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 109
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/a$1;->a:Z

    .line 151
    iget-object v0, p0, Lcom/mdotm/android/view/a$1;->c:Lcom/mdotm/android/view/a;

    invoke-static {v0}, Lcom/mdotm/android/view/a;->c(Lcom/mdotm/android/view/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load landing url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/a$1;->c:Lcom/mdotm/android/view/a;

    invoke-static {v0}, Lcom/mdotm/android/view/a;->b(Lcom/mdotm/android/view/a;)V

    .line 161
    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to report impression : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "returned url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    if-eqz p2, :cond_0

    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 119
    iget-object v0, p0, Lcom/mdotm/android/view/a$1;->c:Lcom/mdotm/android/view/a;

    invoke-static {v0}, Lcom/mdotm/android/view/a;->d(Lcom/mdotm/android/view/a;)Lcom/mdotm/android/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/c/c;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/view/a$1;->a:Z

    .line 128
    iget-object v0, p0, Lcom/mdotm/android/view/a$1;->c:Lcom/mdotm/android/view/a;

    invoke-static {v0}, Lcom/mdotm/android/view/a;->b(Lcom/mdotm/android/view/a;)V

    .line 129
    const/4 v0, 0x1

    .line 132
    :goto_1
    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    const-string v1, "Google Play store app is not installed"

    .line 121
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loading other url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
