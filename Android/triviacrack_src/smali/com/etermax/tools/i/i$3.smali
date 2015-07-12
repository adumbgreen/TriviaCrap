.class Lcom/etermax/tools/i/i$3;
.super Lorg/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/tools/i/i;->b(Lcom/etermax/tools/i/h;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/tools/i/h;

.field final synthetic b:Lcom/etermax/tools/i/i;


# direct methods
.method constructor <init>(Lcom/etermax/tools/i/i;Ljava/lang/String;ILjava/lang/String;Lcom/etermax/tools/i/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/etermax/tools/i/i$3;->b:Lcom/etermax/tools/i/i;

    iput-object p5, p0, Lcom/etermax/tools/i/i$3;->a:Lcom/etermax/tools/i/h;

    invoke-direct {p0, p2, p3, p4}, Lorg/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/i/i$3;->b:Lcom/etermax/tools/i/i;

    iget-object v1, p0, Lcom/etermax/tools/i/i$3;->a:Lcom/etermax/tools/i/h;

    invoke-static {v0, v1}, Lcom/etermax/tools/i/i;->a(Lcom/etermax/tools/i/i;Lcom/etermax/tools/i/h;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
