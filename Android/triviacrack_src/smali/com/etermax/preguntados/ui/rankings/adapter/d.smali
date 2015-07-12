.class public Lcom/etermax/preguntados/ui/rankings/adapter/d;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/etermax/preguntados/datasource/dto/RankingsDTO;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/RankingsDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 22
    iput-object p2, p0, Lcom/etermax/preguntados/ui/rankings/adapter/d;->a:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/etermax/preguntados/ui/rankings/adapter/d;->b:Lcom/etermax/preguntados/datasource/dto/RankingsDTO;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/datasource/dto/RankingsDTO;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/d;->b:Lcom/etermax/preguntados/datasource/dto/RankingsDTO;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter

    .prologue
    .line 28
    packed-switch p1, :pswitch_data_0

    .line 34
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/d;->b:Lcom/etermax/preguntados/datasource/dto/RankingsDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/RankingsDTO;->getHistoricalRanking()Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/rankings/i;->a(ILcom/etermax/preguntados/datasource/dto/RanksDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/adapter/d;->b:Lcom/etermax/preguntados/datasource/dto/RankingsDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/RankingsDTO;->getPeriodicalRanking()Lcom/etermax/preguntados/datasource/dto/RanksDTO;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/rankings/i;->a(ILcom/etermax/preguntados/datasource/dto/RanksDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter

    .prologue
    .line 49
    packed-switch p1, :pswitch_data_0

    .line 55
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/d;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->player_ranking_plural:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/d;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->all_time:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/adapter/d;->a:Landroid/content/Context;

    sget v1, Lcom/etermax/o;->weekly:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
