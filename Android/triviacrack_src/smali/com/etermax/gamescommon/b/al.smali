.class public Lcom/etermax/gamescommon/b/al;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/b/al;->e(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    const-string v0, "actions"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/al;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
