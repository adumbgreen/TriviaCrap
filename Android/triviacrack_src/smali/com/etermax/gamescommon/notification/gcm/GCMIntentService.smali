.class public Lcom/etermax/gamescommon/notification/gcm/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 29
    invoke-static {p1, v0}, Lcom/etermax/gamescommon/notification/f;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    const-string v0, "GCMIntentService"

    invoke-static {v0, p2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method protected a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/notification/gcm/GCMIntentService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/notification/gcm/b;

    invoke-interface {v0}, Lcom/etermax/gamescommon/notification/gcm/b;->i()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 46
    return-object v1
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {p1}, Lcom/etermax/gamescommon/login/datasource/d;->b(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/d;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p2}, Lcom/etermax/gamescommon/login/datasource/c;->d(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    return-void
.end method
