.class Lcom/etermax/gamescommon/i/b/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/i/b/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/g;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/i/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/g$2;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFacebookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$2;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$2;->a:Lcom/etermax/gamescommon/i/b/g;

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
    .line 150
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/g$2;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFbShowPicture()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method
