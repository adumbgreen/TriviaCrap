.class Lcom/etermax/gamescommon/i/b/j;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/gamescommon/i/b/g;",
        "Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/g;


# direct methods
.method private constructor <init>(Lcom/etermax/gamescommon/i/b/g;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/j;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/gamescommon/i/b/g;Lcom/etermax/gamescommon/i/b/g$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/i/b/j;-><init>(Lcom/etermax/gamescommon/i/b/g;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/j;->b()Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/i/b/g;Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 358
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->isFavoritesOnly()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->isFavoritesOnly()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 364
    :goto_0
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->isMailNews()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 365
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->isMailNews()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 370
    :goto_1
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->isFBShowName()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 371
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->isFBShowName()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 376
    :goto_2
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->isFBShowPicture()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 377
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->isFBShowPicture()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 382
    :goto_3
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->allowOGPosts()Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 383
    invoke-virtual {p2}, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;->allowOGPosts()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 388
    :cond_0
    iget-object v5, p0, Lcom/etermax/gamescommon/i/b/j;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v5}, Lcom/etermax/gamescommon/i/b/g;->m(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 389
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/j;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->n(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 390
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/j;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->k(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 391
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/j;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->l(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 392
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/j;->a:Lcom/etermax/gamescommon/i/b/g;

    invoke-static {v0}, Lcom/etermax/gamescommon/i/b/g;->o(Lcom/etermax/gamescommon/i/b/g;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 393
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 394
    return-void

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 367
    goto :goto_1

    :cond_3
    move v3, v2

    .line 373
    goto :goto_2

    :cond_4
    move v4, v2

    .line 379
    goto :goto_3
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 347
    check-cast p1, Lcom/etermax/gamescommon/i/b/g;

    check-cast p2, Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/i/b/j;->a(Lcom/etermax/gamescommon/i/b/g;Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/j;->a:Lcom/etermax/gamescommon/i/b/g;

    iget-object v0, v0, Lcom/etermax/gamescommon/i/b/g;->c:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/e;->h()Lcom/etermax/gamescommon/datasource/dto/PreferencesDTO;

    move-result-object v0

    return-object v0
.end method
