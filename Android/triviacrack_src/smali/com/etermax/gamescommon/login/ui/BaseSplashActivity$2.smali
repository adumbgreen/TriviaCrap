.class Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$2;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$2;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$2;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$2;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    new-instance v1, Lcom/etermax/gamescommon/b/ad;

    const-string v2, "autologin"

    invoke-direct {v1, v2}, Lcom/etermax/gamescommon/b/ad;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;Lcom/etermax/gamescommon/b/l;)V

    .line 127
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$2;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->finish()V

    .line 128
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$2;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a()V

    .line 130
    new-instance v0, Lcom/etermax/gamescommon/b/ad;

    invoke-direct {v0}, Lcom/etermax/gamescommon/b/ad;-><init>()V

    .line 131
    const-string v1, "user_auto"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/b/ad;->b(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$2;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-static {v1, v0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->a(Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;Lcom/etermax/gamescommon/b/l;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity$2;->a:Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/ui/BaseSplashActivity;->c()V

    goto :goto_0
.end method
