.class public Lcom/etermax/preguntados/a/d;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 10
    const-string v0, "duel_invited"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/a/d;->e(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 22
    const-string v0, "time_elapsed"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    const-string v0, "action"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method
