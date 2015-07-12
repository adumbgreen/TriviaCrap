.class Lcom/etermax/preguntados/e/d$2;
.super Lorg/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/e/d;->a(Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

.field final synthetic b:Lcom/etermax/preguntados/e/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/e/d;Ljava/lang/String;ILjava/lang/String;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/etermax/preguntados/e/d$2;->b:Lcom/etermax/preguntados/e/d;

    iput-object p5, p0, Lcom/etermax/preguntados/e/d$2;->a:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-direct {p0, p2, p3, p4}, Lorg/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/e/d$2;->b:Lcom/etermax/preguntados/e/d;

    iget-object v1, p0, Lcom/etermax/preguntados/e/d$2;->a:Lcom/etermax/preguntados/datasource/dto/QuestionDTO;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/e/d;->a(Lcom/etermax/preguntados/e/d;Lcom/etermax/preguntados/datasource/dto/QuestionDTO;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
