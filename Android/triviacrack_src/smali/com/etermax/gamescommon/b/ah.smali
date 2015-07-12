.class public Lcom/etermax/gamescommon/b/ah;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 12
    const-string v0, "login_register_fb_ok"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/ah;->e(Ljava/lang/String;)V

    .line 13
    const-string v0, "result"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/ah;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method
