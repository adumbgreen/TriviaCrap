.class Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$4;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFacebookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$4;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->v:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$4;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->v:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$4;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iget-object v1, v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->v:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$4;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iget-object v1, v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->v:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$4;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iget-object v1, v1, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->v:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$4;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->v:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v0

    .line 407
    :cond_0
    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFbShowPicture()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader$4;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/ProfileUserHeader;->v:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->m()Z

    move-result v0

    return v0
.end method
