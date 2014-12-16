.class public Lcom/etermax/gamescommon/b/ae;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 12
    const-string v0, "login_fb_failed"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/ae;->e(Ljava/lang/String;)V

    .line 13
    return-void
.end method
