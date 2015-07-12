.class public Lcom/etermax/preguntados/a/e;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 15
    const-string v0, "duel_played"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/a/e;->e(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 23
    const-string v0, "correct"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 32
    const-string v0, "time_elapsed"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const-string v0, "user"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
