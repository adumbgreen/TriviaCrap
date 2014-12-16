.class public Lcom/etermax/gamescommon/b/am;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/etermax/gamescommon/b/ao;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 51
    const-string v0, "profile_view"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/am;->e(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Lcom/etermax/gamescommon/b/ao;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const-string v1, "from"

    invoke-virtual {p0, v1, p1}, Lcom/etermax/gamescommon/b/am;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    if-eqz v0, :cond_1

    .line 59
    const-string v1, "type"

    invoke-virtual {p0, v1, v0}, Lcom/etermax/gamescommon/b/am;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    return-void
.end method
