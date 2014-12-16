.class abstract Lcom/millennialmedia/android/MMJSObject;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field protected b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/millennialmedia/android/MMJSObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/MMJSObject;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
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
.end method

.method a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/millennialmedia/android/MMJSResponse;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 52
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->a(Ljava/lang/Runnable;)V

    .line 54
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    sget-object v1, Lcom/millennialmedia/android/MMJSObject;->a:Ljava/lang/String;

    const-string v2, "Future interrupted"

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    .line 58
    sget-object v1, Lcom/millennialmedia/android/MMJSObject;->a:Ljava/lang/String;

    const-string v2, "Future execution problem: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method a(Lcom/millennialmedia/android/MMWebView;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMJSObject;->c:Ljava/lang/ref/WeakReference;

    .line 31
    return-void
.end method

.method b(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-long v0, v0

    .line 68
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x4

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMJSObject;->b:Ljava/lang/ref/WeakReference;

    .line 26
    return-void
.end method

.method d()Lcom/millennialmedia/android/AdViewOverlayActivity;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/millennialmedia/android/MMJSObject;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->i()Landroid/app/Activity;

    move-result-object v0

    .line 38
    instance-of v1, v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v1, :cond_0

    .line 39
    check-cast v0, Lcom/millennialmedia/android/MMActivity;

    .line 40
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->h()Lcom/millennialmedia/android/MMBaseActivity;

    move-result-object v0

    .line 41
    instance-of v1, v0, Lcom/millennialmedia/android/AdViewOverlayActivity;

    if-eqz v1, :cond_0

    .line 42
    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayActivity;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
