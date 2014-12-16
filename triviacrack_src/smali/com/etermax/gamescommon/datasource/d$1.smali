.class Lcom/etermax/gamescommon/datasource/d$1;
.super Lorg/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/d;->a(Ljava/lang/Long;Ljava/util/Date;Lcom/etermax/gamescommon/datasource/c;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Ljava/util/Date;

.field final synthetic c:Lcom/etermax/gamescommon/datasource/c;

.field final synthetic d:Lcom/etermax/gamescommon/datasource/d;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/d;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Long;Ljava/util/Date;Lcom/etermax/gamescommon/datasource/c;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/d$1;->d:Lcom/etermax/gamescommon/datasource/d;

    iput-object p5, p0, Lcom/etermax/gamescommon/datasource/d$1;->a:Ljava/lang/Long;

    iput-object p6, p0, Lcom/etermax/gamescommon/datasource/d$1;->b:Ljava/util/Date;

    iput-object p7, p0, Lcom/etermax/gamescommon/datasource/d$1;->c:Lcom/etermax/gamescommon/datasource/c;

    invoke-direct {p0, p2, p3, p4}, Lorg/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/d$1;->d:Lcom/etermax/gamescommon/datasource/d;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/d$1;->a:Ljava/lang/Long;

    iget-object v2, p0, Lcom/etermax/gamescommon/datasource/d$1;->b:Ljava/util/Date;

    iget-object v3, p0, Lcom/etermax/gamescommon/datasource/d$1;->c:Lcom/etermax/gamescommon/datasource/c;

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/gamescommon/datasource/d;->a(Lcom/etermax/gamescommon/datasource/d;Ljava/lang/Long;Ljava/util/Date;Lcom/etermax/gamescommon/datasource/c;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
