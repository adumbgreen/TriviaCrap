.class Lcom/etermax/gamescommon/i/b/g$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/g;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/g;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/g$6;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFacebookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$6;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$6;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$6;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$6;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFbShowPicture()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$6;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->m()Z

    move-result v0

    return v0
.end method
