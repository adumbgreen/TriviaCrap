.class Lcom/etermax/preguntados/ui/SplashActivity_$1;
.super Lorg/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/SplashActivity_;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/SplashActivity_;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/SplashActivity_;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/etermax/preguntados/ui/SplashActivity_$1;->a:Lcom/etermax/preguntados/ui/SplashActivity_;

    invoke-direct {p0, p2, p3, p4}, Lorg/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/SplashActivity_$1;->a:Lcom/etermax/preguntados/ui/SplashActivity_;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/SplashActivity_;->a(Lcom/etermax/preguntados/ui/SplashActivity_;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
