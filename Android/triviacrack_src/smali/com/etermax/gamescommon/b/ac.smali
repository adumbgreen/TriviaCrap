.class public Lcom/etermax/gamescommon/b/ac;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "link_account"

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    const-string v0, "from"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    const-string v0, "user_type"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
