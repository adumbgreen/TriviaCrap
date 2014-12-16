.class public Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/achievements/ui/o;


# instance fields
.field protected a:Lcom/etermax/gamescommon/login/datasource/a;

.field protected b:Lcom/etermax/gamescommon/achievements/ui/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/etermax/gamescommon/achievements/ui/i;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "new_achievement_fg"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity;->b:Lcom/etermax/gamescommon/achievements/ui/k;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/achievements/ui/k;->b()V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method
