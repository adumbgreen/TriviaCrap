.class public Lcom/etermax/preguntados/a/f;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 9
    const-string v0, "full_bar_action"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/a/f;->e(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 13
    const-string v0, "action_selected"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method
