.class public Lcom/etermax/preguntados/ui/SplashActivity;
.super Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;
.source "SourceFile"


# instance fields
.field protected e:Lcom/etermax/preguntados/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 37
    invoke-static {p0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/SplashActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 38
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/preguntados/ui/SplashActivity;->e:Lcom/etermax/preguntados/g/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/g/a;->b()V

    .line 28
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/SplashActivity;->d()V

    .line 23
    return-void
.end method
