.class Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;
.super Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;
.source "SourceFile"


# instance fields
.field f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/VideoPlayerActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/VideoPlayerActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;-><init>()V

    .line 123
    if-eqz p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;->f:Ljava/lang/ref/WeakReference;

    .line 125
    iget-object v0, p1, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p1, Lcom/millennialmedia/android/VideoPlayerActivity;->c:Lcom/millennialmedia/android/MMActivity;

    iget-wide v0, v0, Lcom/millennialmedia/android/MMActivity;->a:J

    iput-wide v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;->e:J

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public getOverlaySettings()Lcom/millennialmedia/android/OverlaySettings;
    .locals 3

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoPlayerActivity;

    .line 157
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->i:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 158
    new-instance v1, Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v1}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    .line 159
    iget-object v0, v0, Lcom/millennialmedia/android/VideoPlayerActivity;->i:Ljava/lang/String;

    iput-object v0, v1, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    move-object v0, v1

    .line 161
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public isHandlingMMVideo(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoPlayerActivity;

    .line 135
    if-eqz v0, :cond_0

    .line 136
    new-instance v1, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener$1;

    invoke-direct {v1, p0, v0}, Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener$1;-><init>(Lcom/millennialmedia/android/VideoPlayerActivity$VideoRedirectionListener;Lcom/millennialmedia/android/VideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 144
    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Lcom/millennialmedia/android/VideoPlayerActivity;->a(Lcom/millennialmedia/android/VideoPlayerActivity;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoPlayerActivity;->d(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
