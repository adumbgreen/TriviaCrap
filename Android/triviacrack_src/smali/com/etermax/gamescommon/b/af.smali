.class public Lcom/etermax/gamescommon/b/af;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 10
    const-string v0, "login_fb_ok"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/af;->e(Ljava/lang/String;)V

    .line 11
    const-string v0, "result"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
