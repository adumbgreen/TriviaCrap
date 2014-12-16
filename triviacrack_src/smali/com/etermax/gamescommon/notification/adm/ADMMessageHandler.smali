.class public Lcom/etermax/gamescommon/notification/adm/ADMMessageHandler;
.super Lcom/amazon/device/messaging/ADMMessageHandlerBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/etermax/gamescommon/notification/adm/ADMMessageHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageHandlerBase;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onMessage(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/etermax/gamescommon/notification/adm/ADMMessageHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/etermax/gamescommon/notification/f;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 33
    return-void
.end method

.method protected onRegistered(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/etermax/gamescommon/notification/adm/ADMMessageHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/login/datasource/c;->d(Ljava/lang/String;)V

    .line 39
    const-string v0, "ADMMessageHandler"

    invoke-static {v0, p1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected onRegistrationError(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    const-string v0, "ADMMessageHandler"

    invoke-static {v0, p1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected onUnregistered(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    const-string v0, "ADMMessageHandler"

    invoke-static {v0, p1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
