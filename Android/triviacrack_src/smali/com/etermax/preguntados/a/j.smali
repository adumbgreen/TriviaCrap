.class public Lcom/etermax/preguntados/a/j;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 16
    const-string v0, "user_ended_game"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/a/j;->e(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    const-string v0, "turns_played"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    const-string v0, "time_elapsed"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    const-string v0, "reason"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
