.class public Lcom/etermax/gamescommon/b/v;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 18
    const-string v0, "game_created"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/v;->e(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/language/Language;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    const-string v0, "lang"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/b/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    const-string v0, "opponent"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method
