.class public Lcom/etermax/preguntados/a/c;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 16
    const-string v0, "duel_ended"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/a/c;->e(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 28
    const-string v0, "participantes"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
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

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    const-string v0, "tipo"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const-string v0, "motivo"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    const-string v0, "ganador"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
