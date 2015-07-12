.class public Lcom/etermax/preguntados/a/a/d;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 13
    const-string v0, "extra_spin_popup"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/a/a/d;->e(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    const-string v0, "option_select"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
