.class public Lcom/etermax/preguntados/ui/rankings/adapter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/widget/a/e",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/UserRankDTO;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/etermax/preguntados/ui/rankings/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/preguntados/ui/rankings/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/c;->a:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/etermax/preguntados/ui/rankings/adapter/c;->b:Lcom/etermax/preguntados/ui/rankings/b;

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-static {p1}, Lcom/etermax/preguntados/ui/rankings/adapter/view/d;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/rankings/adapter/view/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/etermax/tools/widget/a/h;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/etermax/tools/widget/a/h",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 54
    return-void
.end method

.method public a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/tools/widget/a/g;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/BaseAdapter;",
            "Landroid/view/View;",
            "Lcom/etermax/tools/widget/a/g",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/UserRankDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    instance-of v0, p2, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;

    if-eqz v0, :cond_0

    .line 46
    check-cast p2, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;

    .line 47
    invoke-virtual {p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual {p2, v0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->a(Lcom/etermax/preguntados/datasource/dto/UserRankDTO;)V

    .line 48
    invoke-virtual {p3}, Lcom/etermax/tools/widget/a/g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/UserRankDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/rankings/adapter/c;->b:Lcom/etermax/preguntados/ui/rankings/b;

    invoke-virtual {p2, v0, v1, v2}, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;->a(JLcom/etermax/preguntados/ui/rankings/b;)V

    .line 50
    :cond_0
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/rankings/adapter/view/e;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/f;->rankings_section:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/e;->setHeaderColor(I)V

    .line 58
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/c;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->friend_plural:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/e;->setLeftTitle(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/c;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->level:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/etermax/preguntados/ui/rankings/adapter/view/e;->setRightTitle(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    sget v0, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 74
    sget v0, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    sget v0, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public g(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Lcom/etermax/preguntados/ui/rankings/adapter/view/f;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/rankings/adapter/view/e;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    sget v0, Lcom/etermax/i;->item_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void
.end method

.method public h(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView_;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/rankings/adapter/view/RankingsPlayerItemView;

    move-result-object v0

    return-object v0
.end method
