.class Lcom/etermax/gamescommon/menu/navigation/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/menu/navigation/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/menu/navigation/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/navigation/a;->a:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/etermax/gamescommon/menu/navigation/a;->b:Ljava/util/List;

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;Ljava/util/List;Lcom/etermax/gamescommon/menu/navigation/NavigationPanel$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/menu/navigation/a;-><init>(Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/etermax/gamescommon/menu/navigation/c;
    .locals 1
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/menu/navigation/c;

    return-object v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/menu/navigation/a;->a(I)Lcom/etermax/gamescommon/menu/navigation/c;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 286
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/navigation/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/menu/navigation/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/c;->c()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->k:Lcom/etermax/gamescommon/menu/navigation/f;

    if-ne v0, v1, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/menu/navigation/a;->a(I)Lcom/etermax/gamescommon/menu/navigation/c;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/c;->c()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v1

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->k:Lcom/etermax/gamescommon/menu/navigation/f;

    if-ne v1, v2, :cond_1

    .line 306
    if-nez p2, :cond_0

    .line 307
    new-instance p2, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelSectionView;

    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/a;->a:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelSectionView;-><init>(Landroid/content/Context;)V

    .line 311
    :goto_0
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelSectionView;->setText(Ljava/lang/String;)V

    .line 321
    :goto_1
    return-object p2

    .line 309
    :cond_0
    check-cast p2, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelSectionView;

    goto :goto_0

    .line 315
    :cond_1
    if-nez p2, :cond_2

    .line 316
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/navigation/a;->a:Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView_;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;

    move-result-object p2

    .line 320
    :goto_2
    invoke-virtual {p2, v0}, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;->a(Lcom/etermax/gamescommon/menu/navigation/c;)V

    goto :goto_1

    .line 318
    :cond_2
    check-cast p2, Lcom/etermax/gamescommon/menu/navigation/NavigationPanelItemView;

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/menu/navigation/a;->a(I)Lcom/etermax/gamescommon/menu/navigation/c;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/navigation/c;->c()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->k:Lcom/etermax/gamescommon/menu/navigation/f;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
