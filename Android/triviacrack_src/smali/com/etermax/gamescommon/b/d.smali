.class public Lcom/etermax/gamescommon/b/d;
.super Lcom/etermax/gamescommon/b/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/l;-><init>()V

    .line 12
    const-string v0, "chat_delete_all"

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/b/d;->e(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    const-string v0, "from"

    invoke-virtual {p0, v0, p1}, Lcom/etermax/gamescommon/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method
