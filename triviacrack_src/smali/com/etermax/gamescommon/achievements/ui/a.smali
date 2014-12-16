.class public Lcom/etermax/gamescommon/achievements/ui/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/etermax/gamescommon/achievements/ui/a;->a:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/etermax/gamescommon/achievements/ui/a;->b:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public a(I)Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/a;->a(I)Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getId()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    if-nez p2, :cond_0

    .line 41
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/etermax/gamescommon/achievements/ui/c;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/achievements/ui/b;

    move-result-object p2

    .line 45
    :goto_0
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/a;->a(I)Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/etermax/gamescommon/achievements/ui/b;->a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V

    .line 46
    return-object p2

    .line 43
    :cond_0
    check-cast p2, Lcom/etermax/gamescommon/achievements/ui/b;

    goto :goto_0
.end method
