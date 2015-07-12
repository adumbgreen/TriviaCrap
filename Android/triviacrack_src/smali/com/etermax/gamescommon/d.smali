.class public abstract Lcom/etermax/gamescommon/d;
.super Lcom/etermax/tools/a/a/a;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/gamescommon/login/datasource/c;

.field protected b:Lcom/etermax/gamescommon/login/datasource/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/etermax/tools/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/etermax/gamescommon/d;->a:Lcom/etermax/gamescommon/login/datasource/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/c;->a()Z

    move-result v0

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/gamescommon/d;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
