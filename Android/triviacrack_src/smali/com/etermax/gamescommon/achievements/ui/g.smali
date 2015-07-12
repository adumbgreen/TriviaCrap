.class public Lcom/etermax/gamescommon/achievements/ui/g;
.super Lcom/etermax/tools/navigation/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/navigation/b",
        "<",
        "Lcom/etermax/gamescommon/achievements/ui/h;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/etermax/gamescommon/datasource/e;

.field b:Lcom/etermax/gamescommon/achievements/ui/k;

.field protected c:Landroid/widget/ListView;

.field protected d:Landroid/widget/ViewSwitcher;

.field protected e:Landroid/widget/GridView;

.field protected f:Landroid/widget/ViewSwitcher;

.field final g:I

.field final h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/etermax/tools/navigation/b;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/etermax/gamescommon/achievements/ui/g;->g:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/etermax/gamescommon/achievements/ui/g;->h:I

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/achievements/ui/g;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/g;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/g;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/etermax/gamescommon/achievements/ui/f;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/etermax/gamescommon/achievements/ui/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/g;->e:Landroid/widget/GridView;

    new-instance v1, Lcom/etermax/gamescommon/achievements/ui/a;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/etermax/gamescommon/achievements/ui/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/g;->f:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 71
    return-void
.end method

.method public static b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/etermax/gamescommon/achievements/ui/i;->f()Lcom/etermax/gamescommon/achievements/ui/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/achievements/ui/j;->a()Lcom/etermax/gamescommon/achievements/ui/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/achievements/ui/h;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/etermax/gamescommon/achievements/ui/g$1;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/achievements/ui/g$1;-><init>(Lcom/etermax/gamescommon/achievements/ui/g;)V

    return-object v0
.end method

.method c()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/g;->b:Lcom/etermax/gamescommon/achievements/ui/k;

    new-instance v1, Lcom/etermax/gamescommon/achievements/ui/g$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/achievements/ui/g$2;-><init>(Lcom/etermax/gamescommon/achievements/ui/g;)V

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/achievements/ui/k;->a(Lcom/etermax/gamescommon/achievements/ui/l;)V

    .line 65
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 75
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/g;->f:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 76
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/g;->d:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 77
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/g;->f:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 82
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/g;->d:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 83
    return-void
.end method

.method public synthetic getDummyCallbacks()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/g;->a()Lcom/etermax/gamescommon/achievements/ui/h;

    move-result-object v0

    return-object v0
.end method
