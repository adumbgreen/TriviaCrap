.class final Lcom/inmobi/commons/internal/ApplicationFocusManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/internal/ApplicationFocusManager;->b()V
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;

    invoke-static {}, Lcom/inmobi/commons/internal/ApplicationFocusManager;->a()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/internal/ApplicationFocusManager$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    iget-object v0, p0, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    if-eqz p3, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onActivityPaused"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->a(Landroid/app/Activity;)V

    .line 91
    :cond_0
    :goto_0
    return-object v1

    .line 85
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onActivityResumed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/internal/ApplicationFocusManager$b;->b(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v2, "[InMobi]-4.3.0"

    const-string v3, "Unable to invoke method"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
