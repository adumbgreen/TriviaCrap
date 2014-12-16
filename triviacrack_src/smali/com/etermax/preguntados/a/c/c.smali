.class public Lcom/etermax/preguntados/a/c/c;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 14
    const-string v0, "option_of_two"

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/a/c/c;->e(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    const-string v0, "option"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/preguntados/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
