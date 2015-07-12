.class public Lcom/etermax/gamescommon/user/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/gamescommon/h/a/e;

.field b:Lcom/etermax/gamescommon/user/b/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/user/b/c;Lcom/etermax/gamescommon/h/a/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/user/b/a;->a(Lcom/etermax/gamescommon/user/b/c;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/etermax/gamescommon/user/b/a;->a(Lcom/etermax/gamescommon/h/a/e;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/user/b/c;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etermax/gamescommon/user/b/a;->b:Lcom/etermax/gamescommon/user/b/c;

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/h/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/etermax/gamescommon/user/b/a;->a:Lcom/etermax/gamescommon/h/a/e;

    .line 29
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/user/b/c;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/etermax/gamescommon/user/b/a;->b:Lcom/etermax/gamescommon/user/b/c;

    .line 21
    return-void
.end method

.method public b()Lcom/etermax/gamescommon/h/a/e;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/gamescommon/user/b/a;->a:Lcom/etermax/gamescommon/h/a/e;

    return-object v0
.end method
