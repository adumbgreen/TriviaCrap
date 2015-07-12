.class final Lcom/millennialmedia/android/HttpRedirection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/HttpRedirection;->a(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/millennialmedia/android/HttpRedirection$1;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V
    .locals 6
    .parameter

    .prologue
    .line 204
    .line 205
    const/4 v1, 0x0

    .line 206
    iget-object v0, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 207
    if-eqz v0, :cond_4

    .line 208
    iget-object v2, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    const-string v3, "mmvideo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 210
    invoke-static {p1}, Lcom/millennialmedia/android/Utils$IntentUtils;->a(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)Landroid/content/Intent;

    move-result-object v1

    .line 218
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 219
    invoke-virtual {p1}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->getOverlaySettings()Lcom/millennialmedia/android/OverlaySettings;

    move-result-object v2

    .line 222
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 223
    iget-object v3, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->d:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    .line 225
    :cond_1
    const-string v3, "settings"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    :cond_2
    const-string v2, "class"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    if-eqz v2, :cond_3

    const-class v3, Lcom/millennialmedia/android/AdViewOverlayActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 232
    :cond_3
    :try_start_0
    iget-object v2, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->c:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isActivityStartable(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    invoke-static {v0, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 235
    iget-object v0, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->c:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->startingActivity(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_4
    :goto_1
    return-void

    .line 211
    :cond_5
    iget-object v2, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->c:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->isHandlingMMVideo(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    iget-object v2, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v0, v2, p1}, Lcom/millennialmedia/android/VideoAd;->a(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    const-string v1, "HttpRedirection"

    const-string v2, "No activity found for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->c:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Lcom/millennialmedia/android/HttpRedirection$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iget-object v1, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/millennialmedia/android/HttpRedirection;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_0

    .line 191
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->c:Landroid/net/Uri;

    .line 192
    iget-object v2, v0, Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;->c:Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 193
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/HttpRedirection$1;->a(Lcom/millennialmedia/android/HttpRedirection$RedirectionListenerImpl;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v0, "HttpRedirection"

    const-string v2, "Could not start activity for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
