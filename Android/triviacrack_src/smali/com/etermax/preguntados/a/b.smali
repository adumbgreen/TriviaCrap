.class public Lcom/etermax/preguntados/a/b;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 14
    const-string v0, "duel_created"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/a/b;->e(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 22
    const-string v0, "invitados"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    const-string v0, "country"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method
