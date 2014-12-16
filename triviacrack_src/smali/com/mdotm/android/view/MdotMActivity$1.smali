.class Lcom/mdotm/android/view/MdotMActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/mdotm/android/view/MdotMActivity;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$1;->c:Lcom/mdotm/android/view/MdotMActivity;

    .line 96
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 99
    new-instance v0, Lcom/mdotm/android/view/MdotMActivity$1$1;

    invoke-direct {v0, p0}, Lcom/mdotm/android/view/MdotMActivity$1$1;-><init>(Lcom/mdotm/android/view/MdotMActivity$1;)V

    iput-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/mdotm/android/view/MdotMActivity$1;)Lcom/mdotm/android/view/MdotMActivity;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->c:Lcom/mdotm/android/view/MdotMActivity;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 164
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMActivity$1;->a:Z

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Click page finished "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->c:Lcom/mdotm/android/view/MdotMActivity;

    iput-boolean v2, v0, Lcom/mdotm/android/view/MdotMActivity;->b:Z

    .line 168
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "started Loading url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->c:Lcom/mdotm/android/view/MdotMActivity;

    iget-boolean v0, v0, Lcom/mdotm/android/view/MdotMActivity;->b:Z

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->a:Z

    .line 119
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->c:Lcom/mdotm/android/view/MdotMActivity;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$1;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->c:Lcom/mdotm/android/view/MdotMActivity;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$1;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 123
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    iput-boolean v2, p0, Lcom/mdotm/android/view/MdotMActivity$1;->a:Z

    .line 176
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->c:Lcom/mdotm/android/view/MdotMActivity;

    iget-boolean v0, v0, Lcom/mdotm/android/view/MdotMActivity;->b:Z

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load landing url : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->c:Lcom/mdotm/android/view/MdotMActivity;

    iput-boolean v2, v0, Lcom/mdotm/android/view/MdotMActivity;->b:Z

    .line 186
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "returned url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    if-eqz p2, :cond_1

    const-string v0, "market://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->c:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->b(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->c:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->b(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/c/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$1;->c:Lcom/mdotm/android/view/MdotMActivity;

    iput-boolean v3, v0, Lcom/mdotm/android/view/MdotMActivity;->b:Z

    .line 144
    iput-boolean v3, p0, Lcom/mdotm/android/view/MdotMActivity$1;->a:Z

    .line 153
    const/4 v0, 0x1

    .line 156
    :goto_1
    return v0

    .line 138
    :catch_0
    move-exception v0

    .line 140
    const-string v1, "Google Play store app is not installed"

    .line 139
    invoke-static {p0, v1}, Lcom/mdotm/android/e/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loading other url "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/e/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
