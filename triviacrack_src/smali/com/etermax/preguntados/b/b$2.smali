.class Lcom/etermax/preguntados/b/b$2;
.super Lorg/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/b/b;->a([Lcom/etermax/preguntados/b/c;)V
.end annotation


# instance fields
.field final synthetic a:[Lcom/etermax/preguntados/b/c;

.field final synthetic b:Lcom/etermax/preguntados/b/b;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/b/b;Ljava/lang/String;ILjava/lang/String;[Lcom/etermax/preguntados/b/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/etermax/preguntados/b/b$2;->b:Lcom/etermax/preguntados/b/b;

    iput-object p5, p0, Lcom/etermax/preguntados/b/b$2;->a:[Lcom/etermax/preguntados/b/c;

    invoke-direct {p0, p2, p3, p4}, Lorg/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/b/b$2;->b:Lcom/etermax/preguntados/b/b;

    iget-object v1, p0, Lcom/etermax/preguntados/b/b$2;->a:[Lcom/etermax/preguntados/b/c;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/b/b;->a(Lcom/etermax/preguntados/b/b;[Lcom/etermax/preguntados/b/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
