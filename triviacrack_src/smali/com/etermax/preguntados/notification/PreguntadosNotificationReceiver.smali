.class public Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver;
.super Lcom/etermax/gamescommon/notification/NotificationReceiver;
.source "SourceFile"


# instance fields
.field d:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/etermax/gamescommon/notification/NotificationReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/etermax/h;->ic_stat:I

    return v0
.end method

.method protected a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/preguntados/notification/PreguntadosNotificationReceiver;->d:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 32
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/notification/NotificationReceiver;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/os/Bundle;)Lcom/etermax/gamescommon/notification/a/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-static {p1, p2}, Lcom/etermax/preguntados/notification/c;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/etermax/gamescommon/notification/a/a;

    move-result-object v0

    return-object v0
.end method
