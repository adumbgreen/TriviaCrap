.class Lcom/etermax/gamescommon/datasource/i$2;
.super Lorg/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/i;->a(Lcom/etermax/gamescommon/datasource/dto/AdsDTO;Ljava/lang/Class;Lcom/etermax/gamescommon/datasource/h;Lcom/etermax/gamescommon/datasource/g;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/datasource/dto/AdsDTO;

.field final synthetic b:Ljava/lang/Class;

.field final synthetic c:Lcom/etermax/gamescommon/datasource/h;

.field final synthetic d:Lcom/etermax/gamescommon/datasource/g;

.field final synthetic e:Lcom/etermax/gamescommon/datasource/i;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/i;Ljava/lang/String;ILjava/lang/String;Lcom/etermax/gamescommon/datasource/dto/AdsDTO;Ljava/lang/Class;Lcom/etermax/gamescommon/datasource/h;Lcom/etermax/gamescommon/datasource/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/i$2;->e:Lcom/etermax/gamescommon/datasource/i;

    iput-object p5, p0, Lcom/etermax/gamescommon/datasource/i$2;->a:Lcom/etermax/gamescommon/datasource/dto/AdsDTO;

    iput-object p6, p0, Lcom/etermax/gamescommon/datasource/i$2;->b:Ljava/lang/Class;

    iput-object p7, p0, Lcom/etermax/gamescommon/datasource/i$2;->c:Lcom/etermax/gamescommon/datasource/h;

    iput-object p8, p0, Lcom/etermax/gamescommon/datasource/i$2;->d:Lcom/etermax/gamescommon/datasource/g;

    invoke-direct {p0, p2, p3, p4}, Lorg/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/i$2;->e:Lcom/etermax/gamescommon/datasource/i;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/i$2;->a:Lcom/etermax/gamescommon/datasource/dto/AdsDTO;

    iget-object v2, p0, Lcom/etermax/gamescommon/datasource/i$2;->b:Ljava/lang/Class;

    iget-object v3, p0, Lcom/etermax/gamescommon/datasource/i$2;->c:Lcom/etermax/gamescommon/datasource/h;

    iget-object v4, p0, Lcom/etermax/gamescommon/datasource/i$2;->d:Lcom/etermax/gamescommon/datasource/g;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/etermax/gamescommon/datasource/i;->a(Lcom/etermax/gamescommon/datasource/i;Lcom/etermax/gamescommon/datasource/dto/AdsDTO;Ljava/lang/Class;Lcom/etermax/gamescommon/datasource/h;Lcom/etermax/gamescommon/datasource/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
