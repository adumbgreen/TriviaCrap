.class public Lcom/etermax/preguntados/ui/rankings/e;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/preguntados/ui/rankings/f;",
        ">;",
        "Lcom/etermax/tools/widget/b/b;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/preguntados/datasource/d;

.field b:Lcom/etermax/gamescommon/social/a;

.field c:Lcom/etermax/tools/social/a/b;

.field d:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

.field e:Landroid/support/v4/view/ViewPager;

.field protected f:Lcom/etermax/preguntados/ui/rankings/adapter/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 52
    return-void
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/RankingsDTO;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/adapter/d;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/etermax/preguntados/ui/rankings/adapter/d;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/RankingsDTO;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e;->f:Lcom/etermax/preguntados/ui/rankings/adapter/d;

    .line 101
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/e;->f:Lcom/etermax/preguntados/ui/rankings/adapter/d;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e;->d:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    sget v1, Lcom/etermax/k;->rankings_tab_header:I

    sget v2, Lcom/etermax/i;->tab_header:I

    invoke-virtual {v0, v1, v2, v4}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->a(III)V

    .line 104
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e;->d:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/e;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 105
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e;->d:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/etermax/f;->rankings_tab_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->setBackgroundColor(I)V

    .line 106
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e;->d:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    new-array v1, v5, [I

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/f;->rankings_tab_indicator:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    .line 107
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e;->d:Lcom/etermax/widget/slidingtab/SlidingTabLayout;

    new-array v1, v5, [I

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/etermax/f;->rankings_tab_divider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/etermax/widget/slidingtab/SlidingTabLayout;->setDividerColors([I)V

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/rankings/e;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/e;->f()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/rankings/e;Lcom/etermax/preguntados/datasource/dto/RankingsDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/rankings/e;->a(Lcom/etermax/preguntados/datasource/dto/RankingsDTO;)V

    return-void
.end method

.method public static b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/etermax/preguntados/ui/rankings/g;->e()Lcom/etermax/preguntados/ui/rankings/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/rankings/h;->a()Lcom/etermax/preguntados/ui/rankings/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/rankings/e;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/e;->h()V

    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/rankings/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/rankings/e;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/e$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/rankings/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/rankings/e$2;-><init>(Lcom/etermax/preguntados/ui/rankings/e;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/rankings/e$2;->a(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/etermax/preguntados/ui/rankings/c;->a()Lcom/etermax/preguntados/ui/rankings/c;

    move-result-object v0

    .line 121
    const/16 v1, 0x15f

    invoke-virtual {v0, p0, v1}, Lcom/etermax/preguntados/ui/rankings/c;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 122
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "invite_or_cancel"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/rankings/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e;->b:Lcom/etermax/gamescommon/social/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/etermax/preguntados/ui/rankings/e$3;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/rankings/e$3;-><init>(Lcom/etermax/preguntados/ui/rankings/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    .line 142
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/e$4;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/rankings/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/rankings/e$4;-><init>(Lcom/etermax/preguntados/ui/rankings/e;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/rankings/e$4;->a(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/ui/rankings/f;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/e$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/rankings/e$1;-><init>(Lcom/etermax/preguntados/ui/rankings/e;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 190
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/e;->e()V

    .line 71
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 112
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/e;->f:Lcom/etermax/preguntados/ui/rankings/adapter/d;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/etermax/preguntados/ui/rankings/e;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/rankings/e;->f:Lcom/etermax/preguntados/ui/rankings/adapter/d;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/rankings/adapter/d;->a()Lcom/etermax/preguntados/datasource/dto/RankingsDTO;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/etermax/preguntados/sharing/t;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/RankingsDTO;Z)Lcom/etermax/preguntados/sharing/s;

    move-result-object v1

    .line 115
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e;->mCallbacks:Ljava/lang/Object;

    check-cast v0, Lcom/etermax/preguntados/ui/rankings/f;

    invoke-interface {v0, v1}, Lcom/etermax/preguntados/ui/rankings/f;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 117
    :cond_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e;->a()Lcom/etermax/preguntados/ui/rankings/f;

    move-result-object v0

    return-object v0
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/rankings/e;->g()V

    .line 185
    return-void
.end method
