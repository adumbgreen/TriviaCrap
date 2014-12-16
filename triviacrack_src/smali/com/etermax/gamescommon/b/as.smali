.class public Lcom/etermax/gamescommon/b/as;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/b/at;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 16
    sget-object v0, Lcom/etermax/gamescommon/b/at;->a:Lcom/etermax/gamescommon/b/at;

    if-ne p1, v0, :cond_0

    .line 17
    const-string v0, "update_suggest_show"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/as;->e(Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void

    .line 19
    :cond_0
    const-string v0, "update_suggest_click"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/as;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    const-string v0, "user_version"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/as;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "click"

    const-string v1, "ok"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/b/as;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "click"

    const-string v1, "later"

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/b/as;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
