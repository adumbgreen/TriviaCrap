.class Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_$1;
.super Lorg/a/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;->a(Landroid/content/Context;Lcom/etermax/gamescommon/notification/a/a;Lcom/etermax/gamescommon/notification/g;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/etermax/gamescommon/notification/a/a;

.field final synthetic c:Lcom/etermax/gamescommon/notification/g;

.field final synthetic d:Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/etermax/gamescommon/notification/a/a;Lcom/etermax/gamescommon/notification/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_$1;->d:Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;

    iput-object p5, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_$1;->a:Landroid/content/Context;

    iput-object p6, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_$1;->b:Lcom/etermax/gamescommon/notification/a/a;

    iput-object p7, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_$1;->c:Lcom/etermax/gamescommon/notification/g;

    invoke-direct {p0, p2, p3, p4}, Lorg/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_$1;->d:Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;

    iget-object v1, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_$1;->b:Lcom/etermax/gamescommon/notification/a/a;

    iget-object v3, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_$1;->c:Lcom/etermax/gamescommon/notification/g;

    invoke-static {v0, v1, v2, v3}, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;->a(Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;Landroid/content/Context;Lcom/etermax/gamescommon/notification/a/a;Lcom/etermax/gamescommon/notification/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
