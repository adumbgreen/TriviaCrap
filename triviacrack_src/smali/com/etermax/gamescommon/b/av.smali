.class public Lcom/etermax/gamescommon/b/av;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 7
    const-string v0, "unlink_account"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/av;->e(Ljava/lang/String;)V

    .line 8
    return-void
.end method
