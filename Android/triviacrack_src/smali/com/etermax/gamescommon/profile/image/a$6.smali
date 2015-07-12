.class Lcom/etermax/gamescommon/profile/image/a$6;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/image/a;->e()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/Fragment;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/image/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/image/a;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/image/a$6;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;

    invoke-direct {v0}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;-><init>()V

    .line 279
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->setFBShowPicture(Z)V

    .line 280
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/image/a$6;->a:Lcom/etermax/gamescommon/profile/image/a;

    iget-object v1, v1, Lcom/etermax/gamescommon/profile/image/a;->a:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/datasource/e;->a(Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;)V

    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$6;->a:Lcom/etermax/gamescommon/profile/image/a;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/image/a;->e:Lcom/etermax/gamescommon/login/datasource/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->c(Z)V

    .line 289
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$6;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/image/a;->b(Lcom/etermax/gamescommon/profile/image/a;)Lcom/etermax/gamescommon/profile/image/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/image/a$6;->a:Lcom/etermax/gamescommon/profile/image/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/image/a;->b(Lcom/etermax/gamescommon/profile/image/a;)Lcom/etermax/gamescommon/profile/image/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/profile/image/c;->a(Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    check-cast p1, Landroid/support/v4/app/Fragment;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/profile/image/a$6;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Void;)V

    return-void
.end method
