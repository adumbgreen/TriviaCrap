.class Lcom/etermax/gamescommon/i/b/m;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/gamescommon/i/b/g;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/g;

.field private b:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/i/b/g;Landroid/widget/ToggleButton;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/m;->a:Lcom/etermax/gamescommon/i/b/g;

    .line 315
    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/etermax/gamescommon/i/b/m;->b:Landroid/widget/ToggleButton;

    .line 317
    iget-object v0, p1, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p1, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-static {p1}, Lcom/etermax/gamescommon/i/b/g;->k(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->b(Z)V

    .line 319
    iget-object v0, p1, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-static {p1}, Lcom/etermax/gamescommon/i/b/g;->l(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/a;->c(Z)V

    .line 321
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/m;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/i/b/g;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 325
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/m;->b:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/m;->b:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 326
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 327
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 310
    check-cast p1, Lcom/etermax/gamescommon/i/b/g;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/i/b/m;->a(Lcom/etermax/gamescommon/i/b/g;Ljava/lang/Exception;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;

    invoke-direct {v0}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;-><init>()V

    .line 332
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/m;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v1}, Lcom/etermax/gamescommon/i/b/g;->m(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->setFavoritesOnly(Z)V

    .line 333
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/m;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v1}, Lcom/etermax/gamescommon/i/b/g;->n(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->setMailNews(Z)V

    .line 334
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/m;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v1, v1, Lcom/etermax/gamescommon/i/b/g;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/m;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v1}, Lcom/etermax/gamescommon/i/b/g;->k(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->setFBShowName(Z)V

    .line 336
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/m;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v1}, Lcom/etermax/gamescommon/i/b/g;->l(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->setFBShowPicture(Z)V

    .line 337
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/m;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v1}, Lcom/etermax/gamescommon/i/b/g;->o(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->setAllowOGPosts(Z)V

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/m;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v1, v1, Lcom/etermax/gamescommon/i/b/g;->c:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/datasource/e;->a(Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;)V

    .line 340
    const/4 v0, 0x0

    return-object v0
.end method
