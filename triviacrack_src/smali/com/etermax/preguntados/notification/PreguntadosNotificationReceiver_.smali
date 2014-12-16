.class public final Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;
.super Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver;
.source "SourceFile"


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;Landroid/content/Context;Lcom/etermax/gamescommon/notification/a/a;Lcom/etermax/gamescommon/notification/g;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/notification/NotificationReceiver;->a(Landroid/content/Context;Lcom/etermax/gamescommon/notification/a/a;Lcom/etermax/gamescommon/notification/g;)V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;->b:Lcom/etermax/gamescommon/datasource/l;

    .line 26
    iget-object v0, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/notification/e;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/notification/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;->c:Lcom/etermax/gamescommon/notification/d;

    .line 27
    iget-object v0, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/h;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/h;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;->a:Lcom/etermax/gamescommon/e;

    .line 28
    iget-object v0, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/preguntados/datasource/e;->a(Landroid/content/Context;)Lcom/etermax/preguntados/datasource/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;->d:Lcom/etermax/preguntados/datasource/d;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/etermax/gamescommon/notification/a/a;Lcom/etermax/gamescommon/notification/g;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_$1;

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, ""

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_$1;-><init>(Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/etermax/gamescommon/notification/a/a;Lcom/etermax/gamescommon/notification/g;)V

    invoke-static {v0}, Lorg/a/a/a;->a(Lorg/a/a/b;)V

    .line 54
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;->e:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver_;->b()V

    .line 35
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 36
    return-void
.end method
