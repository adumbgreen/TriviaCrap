.class public Lcom/etermax/gamescommon/b/s;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/b/t;)V
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 13
    sget-object v0, Lcom/etermax/gamescommon/b/t;->a:Lcom/etermax/gamescommon/b/t;

    if-ne p1, v0, :cond_0

    .line 14
    const-string v0, "update_forced_show"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/s;->e(Ljava/lang/String;)V

    .line 19
    :goto_0
    return-void

    .line 16
    :cond_0
    const-string v0, "update_forced_ok"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/s;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    const-string v0, "user_version"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method
