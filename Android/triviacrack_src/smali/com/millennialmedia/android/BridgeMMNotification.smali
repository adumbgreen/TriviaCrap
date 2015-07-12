.class Lcom/millennialmedia/android/BridgeMMNotification;
.super Lcom/millennialmedia/android/MMJSObject;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 19
    const-string v0, "alert"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->a:Ljava/lang/String;

    .line 20
    const-string v0, "vibrate"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->d:Ljava/lang/String;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/millennialmedia/android/BridgeMMNotification;)I
    .locals 1
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->e:I

    return v0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
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
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMNotification;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMNotification;->alert(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMNotification;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMNotification;->vibrate(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized alert(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/millennialmedia/android/BridgeMMNotification$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/BridgeMMNotification$1;-><init>(Lcom/millennialmedia/android/BridgeMMNotification;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMNotification;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 47
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->e:I

    .line 48
    :cond_0
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->e:I

    .line 50
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->e:I

    .line 52
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public vibrate(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMNotification;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 133
    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-double v1, v1

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v1, v5

    double-to-long v1, v1

    .line 136
    :goto_0
    if-eqz v0, :cond_1

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.VIBRATE"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 139
    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibrating for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 149
    :goto_1
    return-object v0

    .line 145
    :cond_0
    const-string v0, "The required permissions to vibrate are not set."

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_1

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-wide v1, v3

    goto :goto_0
.end method
