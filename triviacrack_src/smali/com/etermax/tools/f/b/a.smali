.class public Lcom/etermax/tools/f/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/f/b;


# instance fields
.field a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 33
    iget-object v0, p0, Lcom/etermax/tools/f/b/a;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/etermax/tools/f/b/b;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/etermax/tools/f/b/a;->a:Landroid/content/Context;

    check-cast v0, Lcom/etermax/tools/f/b/b;

    invoke-interface {v0}, Lcom/etermax/tools/f/b/b;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/f/b/a;->b:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/etermax/tools/f/b/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/tools/f/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 36
    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setCaptureUncaughtExceptions(Z)V

    .line 37
    iget-object v0, p0, Lcom/etermax/tools/f/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/a/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setVersionName(Ljava/lang/String;)V

    .line 38
    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setLogEvents(Z)V

    .line 39
    iput-boolean v2, p0, Lcom/etermax/tools/f/b/a;->c:Z

    .line 47
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->setLogEvents(Z)V

    .line 42
    iput-boolean v1, p0, Lcom/etermax/tools/f/b/a;->c:Z

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Application must implement IApplicationFlurry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/etermax/tools/f/b/a;->c:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 57
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/etermax/tools/f/b/a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string v1, "FlurryManager"

    const-string v2, "Flurry - Error in workaround"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/etermax/tools/f/b/a;->c:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 78
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/etermax/tools/f/b/a;->c:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 92
    invoke-static {p1, p2, p3}, Lcom/flurry/android/FlurryAgent;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/etermax/tools/f/b/a;->c:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 85
    invoke-static {p1, p2}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/etermax/tools/f/b/a;->c:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 71
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 73
    :cond_0
    return-void
.end method
