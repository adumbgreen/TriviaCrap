.class public Lcom/etermax/gamescommon/achievements/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/tools/navigation/BaseFragmentActivity;

.field b:Lcom/etermax/gamescommon/datasource/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/achievements/ui/k;[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/k;->a([Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a([Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    array-length v4, p1

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, p1, v1

    .line 95
    invoke-virtual {v5}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getId()I

    move-result v0

    const/16 v6, 0xa

    if-ge v0, v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "achievement_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v6, p0, Lcom/etermax/gamescommon/achievements/ui/k;->a:Lcom/etermax/tools/navigation/BaseFragmentActivity;

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v7}, Lcom/etermax/a/b;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 98
    iget-object v7, p0, Lcom/etermax/gamescommon/achievements/ui/k;->a:Lcom/etermax/tools/navigation/BaseFragmentActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_active"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/etermax/a/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 100
    iget-object v8, p0, Lcom/etermax/gamescommon/achievements/ui/k;->a:Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-static {v8, v0}, Lcom/etermax/a/b;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 102
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {v5, v6}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->setTitle(Ljava/lang/String;)V

    .line 104
    iget-object v6, p0, Lcom/etermax/gamescommon/achievements/ui/k;->a:Lcom/etermax/tools/navigation/BaseFragmentActivity;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "_txt"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getMax()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v6, v0, v9}, Lcom/etermax/a/b;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->setDescription(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v5, v7}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->setActiveImageResourceId(I)V

    .line 106
    invoke-virtual {v5, v8}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->setImageResourceId(I)V

    .line 107
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 95
    :cond_1
    invoke-virtual {v5}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 110
    :cond_2
    return-object v3
.end method

.method static synthetic a(Lcom/etermax/gamescommon/achievements/ui/k;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/achievements/ui/k;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;Lcom/etermax/gamescommon/achievements/ui/l;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/k;->a:Lcom/etermax/tools/navigation/BaseFragmentActivity;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/etermax/gamescommon/achievements/ui/k$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/etermax/gamescommon/achievements/ui/k$2;-><init>(Lcom/etermax/gamescommon/achievements/ui/k;Ljava/lang/String;Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;Lcom/etermax/gamescommon/achievements/ui/l;)V

    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/k;->a:Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/achievements/ui/k$2;->a(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/k;->a:Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-static {p1}, Lcom/etermax/gamescommon/achievements/ui/n;->a(Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const-string v2, "new_achievement_fg"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 83
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->PENDING:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    new-instance v1, Lcom/etermax/gamescommon/achievements/ui/k$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/achievements/ui/k$1;-><init>(Lcom/etermax/gamescommon/achievements/ui/k;)V

    invoke-direct {p0, v0, v1}, Lcom/etermax/gamescommon/achievements/ui/k;->a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;Lcom/etermax/gamescommon/achievements/ui/l;)V

    .line 44
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/achievements/ui/l;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->ALL:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    invoke-direct {p0, v0, p1}, Lcom/etermax/gamescommon/achievements/ui/k;->a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;Lcom/etermax/gamescommon/achievements/ui/l;)V

    .line 48
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 4
    .parameter

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/k;->a:Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-static {v0}, Lcom/etermax/gamescommon/achievements/ui/n;->a(Ljava/util/ArrayList;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v2, "new_achievement_fg"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 79
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/k;->a:Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "new_achievement_fg"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/k;->a:Lcom/etermax/tools/navigation/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 89
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 90
    return-void
.end method
