.class public Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;
.super Lcom/etermax/tools/navigation/BaseFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/achievements/ui/o;
.implements Lcom/etermax/gamescommon/menu/b;
.implements Lcom/etermax/gamescommon/menu/c;
.implements Lcom/etermax/gamescommon/menu/navigation/d;
.implements Lcom/etermax/gamescommon/shop/b;
.implements Lcom/etermax/preguntados/ui/b/b;
.implements Lcom/etermax/preguntados/ui/dashboard/a/b;
.implements Lcom/etermax/preguntados/ui/dashboard/b;
.implements Lcom/etermax/preguntados/ui/dashboard/f;
.implements Lcom/etermax/preguntados/ui/rankings/n;
.implements Lcom/etermax/tools/widget/b/h;


# instance fields
.field private A:I

.field private B:I

.field private C:Landroid/content/Intent;

.field private D:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

.field private E:Lcom/etermax/gamescommon/gifting/f;

.field private F:Lcom/etermax/gamescommon/gifting/e;

.field protected a:Z

.field protected b:Lcom/etermax/gamescommon/menu/a;

.field protected c:Lcom/etermax/gamescommon/login/datasource/a;

.field protected d:Lcom/etermax/tools/social/a/b;

.field protected e:Lcom/etermax/preguntados/datasource/d;

.field protected f:Lcom/etermax/gamescommon/shop/c;

.field protected g:Lcom/etermax/preguntados/ui/game/a/a;

.field protected h:Lcom/etermax/tools/f/a;

.field protected i:Lcom/etermax/gamescommon/menu/a/d;

.field protected j:Lcom/etermax/gamescommon/c/a;

.field protected k:Lcom/etermax/gamescommon/e;

.field protected l:Lcom/etermax/gamescommon/achievements/ui/k;

.field protected m:Lcom/etermax/preguntados/f/a;

.field protected n:Lcom/etermax/gamescommon/datasource/e;

.field protected o:Lcom/etermax/gamescommon/datasource/j;

.field protected p:Lcom/etermax/gamescommon/promotion/PromotionsManager;

.field protected q:Lcom/etermax/gamescommon/social/h;

.field protected r:Lcom/etermax/preguntados/e/c;

.field protected s:Lcom/etermax/gamescommon/mediation/MediationManager;

.field protected t:Lcom/etermax/preguntados/ui/newgame/e;

.field protected u:Lcom/etermax/preguntados/sharing/m;

.field protected v:Lcom/etermax/preguntados/ui/d/i;

.field protected w:Lcom/etermax/chat/a/a;

.field protected x:Lcom/etermax/gamescommon/datasource/l;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;-><init>()V

    .line 761
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$9;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$9;-><init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->E:Lcom/etermax/gamescommon/gifting/f;

    .line 773
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$10;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$10;-><init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->F:Lcom/etermax/gamescommon/gifting/e;

    return-void
.end method

.method private B()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->x:Lcom/etermax/gamescommon/datasource/l;

    sget-object v1, Lcom/etermax/preguntados/notification/b;->a:Lcom/etermax/preguntados/notification/b;

    invoke-virtual {v1}, Lcom/etermax/preguntados/notification/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/l;->b(I)V

    .line 309
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->x:Lcom/etermax/gamescommon/datasource/l;

    sget-object v1, Lcom/etermax/preguntados/notification/b;->c:Lcom/etermax/preguntados/notification/b;

    invoke-virtual {v1}, Lcom/etermax/preguntados/notification/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/l;->b(I)V

    .line 310
    return-void
.end method

.method private C()Z
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->C:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private D()V
    .locals 7

    .prologue
    .line 526
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->C:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 527
    const-string v1, "gameId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    const-string v1, "gameId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 529
    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v3

    .line 530
    if-eqz v3, :cond_0

    .line 531
    const-string v4, "acceptNewGame"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 532
    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 545
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->C:Landroid/content/Intent;

    .line 546
    return-void

    .line 533
    :cond_1
    const-string v4, "rematchGame"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->t:Lcom/etermax/preguntados/ui/newgame/e;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/newgame/e;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->t:Lcom/etermax/preguntados/ui/newgame/e;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->v()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/newgame/e;->a(I)V

    goto :goto_0

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->t:Lcom/etermax/preguntados/ui/newgame/e;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getLanguageCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v2

    invoke-virtual {v3}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getOpponent()Lcom/etermax/gamescommon/k;

    move-result-object v3

    invoke-interface {v3}, Lcom/etermax/gamescommon/k;->getId()Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->z:I

    iget v5, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->A:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/preguntados/ui/newgame/e;->a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;Ljava/lang/Long;IIZ)V

    goto :goto_0

    .line 541
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b(J)V

    goto :goto_0
.end method

.method private E()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 572
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_app_rater"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 573
    sget v1, Lcom/etermax/o;->please_rate:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/etermax/o;->app_name:I

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->rate:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->no_thanks:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/etermax/o;->remind_me_later:I

    invoke-virtual {p0, v4}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/etermax/k;->app_rater_layout:I

    move-object v6, v0

    invoke-static/range {v0 .. v6}, Lcom/etermax/tools/widget/b/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Lcom/etermax/tools/widget/b/g;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_app_rater"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 584
    :cond_0
    return-void
.end method

.method private F()V
    .locals 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->k:Lcom/etermax/gamescommon/e;

    const-string v1, "has_rated_preguntados"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Z)V

    .line 606
    return-void
.end method

.method private G()Z
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->k:Lcom/etermax/gamescommon/e;

    const-string v1, "has_rated_preguntados"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private H()V
    .locals 2

    .prologue
    .line 692
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "inbox_dialog_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/d/h;

    .line 693
    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->m:Lcom/etermax/preguntados/f/a;

    const-string v1, "click_inbox"

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/f/a;->a(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->m:Lcom/etermax/preguntados/f/a;

    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$7;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$7;-><init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/etermax/preguntados/f/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/social/c;)V

    .line 716
    :goto_0
    return-void

    .line 713
    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->E:Lcom/etermax/gamescommon/gifting/f;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/d/h;->a(Lcom/etermax/gamescommon/gifting/f;)V

    .line 714
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->F:Lcom/etermax/gamescommon/gifting/e;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/d/h;->a(Lcom/etermax/gamescommon/gifting/e;)V

    goto :goto_0
.end method

.method private I()V
    .locals 2

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 720
    new-instance v1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;

    invoke-direct {v1, p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;-><init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$8;->a(Ljava/lang/Object;)Z

    .line 758
    return-void
.end method

.method private J()V
    .locals 1

    .prologue
    .line 952
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$2;-><init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$2;->a(Ljava/lang/Object;)Z

    .line 975
    return-void
.end method

.method private K()V
    .locals 2

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_accept_game"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 979
    if-eqz v0, :cond_0

    .line 980
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 982
    :cond_0
    return-void
.end method

.method private L()V
    .locals 4

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/g;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 1006
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->t:Lcom/etermax/preguntados/ui/newgame/e;

    invoke-virtual {v2, p0}, Lcom/etermax/preguntados/ui/newgame/e;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/etermax/gamescommon/language/Language;

    move-result-object v2

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->M()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p0, v1, v2, v3, v0}, Lcom/etermax/preguntados/ui/newgame/duelmode/NewDuelModeActivity;->a(Landroid/content/Context;Ljava/lang/String;Lcom/etermax/gamescommon/language/Language;Ljava/util/ArrayList;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/content/Intent;

    move-result-object v0

    .line 1007
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 1011
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->r()Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Lcom/etermax/preguntados/datasource/dto/LivesDTO;Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;)V

    goto :goto_0
.end method

.method private M()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->k:Lcom/etermax/gamescommon/e;

    const-string v1, "last_participants"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1016
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1017
    new-instance v2, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$3;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$3;-><init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1018
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1020
    return-object v0
.end method

.method private N()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1030
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1031
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/etermax/preguntados/ui/questionsfactory/ratequestion/RateQuestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1032
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 128
    iget v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->z:I

    return v0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 347
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;)Lcom/etermax/adsinterface/a;
    .locals 2
    .parameter

    .prologue
    .line 313
    sget-object v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$5;->a:[I

    invoke-virtual {p1}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 319
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 315
    :pswitch_0
    sget v0, Lcom/etermax/i;->ad_place_admob:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/adsinterface/a;

    goto :goto_0

    .line 317
    :pswitch_1
    sget v0, Lcom/etermax/i;->ad_place_mopub:I

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/adsinterface/a;

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "go_to_login"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->i:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->j()V

    .line 226
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->k:Lcom/etermax/gamescommon/e;

    const-string v1, "last_participants"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->N()V

    .line 228
    invoke-static {p0}, Lcom/etermax/gamescommon/login/ui/LoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "go_to_chat"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 230
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "go_to_profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Ljava/lang/Long;)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "go_to_statistics"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    invoke-static {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/StatisticsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 235
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "gameId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->C:Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 367
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$1;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$1;-><init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V

    .line 381
    invoke-virtual {v0, p0}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;)Z

    .line 382
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void
.end method

.method private a(Lcom/etermax/tools/nationality/Nationality;)V
    .locals 3
    .parameter

    .prologue
    .line 565
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "fragment_set_country"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 566
    invoke-static {p1}, Lcom/etermax/preguntados/ui/dashboard/b/b;->a(Lcom/etermax/tools/nationality/Nationality;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 567
    const-string v1, "fragment_set_country"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 569
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 985
    new-instance v0, Lcom/etermax/preguntados/a/j;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/j;-><init>()V

    .line 986
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/j;->a(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/a/j;->a(Ljava/lang/Integer;)V

    .line 988
    invoke-virtual {v0, p3}, Lcom/etermax/preguntados/a/j;->a(Ljava/lang/Long;)V

    .line 989
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 990
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
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 550
    const-string v1, "dialog_inactive_friends"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a:Z

    if-nez v1, :cond_0

    .line 551
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/etermax/preguntados/d/c;->a(Ljava/util/ArrayList;)Lcom/etermax/preguntados/d/c;

    move-result-object v1

    .line 552
    new-instance v2, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$6;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$6;-><init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V

    invoke-virtual {v1, v2}, Lcom/etermax/preguntados/d/c;->a(Lcom/etermax/gamescommon/gifting/e;)V

    .line 559
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a:Z

    .line 560
    const-string v2, "dialog_inactive_friends"

    invoke-virtual {v1, v0, v2}, Lcom/etermax/preguntados/d/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 562
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 128
    iget v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->A:I

    return v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "go_to_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private b(J)V
    .locals 2
    .parameter

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "main_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/e;

    .line 459
    invoke-virtual {v0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/e;->b(J)V

    .line 460
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data.U"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 243
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "data.OPP"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    const/4 v4, 0x0

    sget-object v5, Lcom/etermax/gamescommon/b/g;->a:Lcom/etermax/gamescommon/b/g;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->a(Landroid/content/Context;JLjava/lang/String;ZLcom/etermax/gamescommon/b/g;)Landroid/content/Intent;

    move-result-object v0

    .line 245
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 246
    return-void
.end method

.method private c(J)V
    .locals 1
    .parameter

    .prologue
    .line 904
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;-><init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;J)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$11;->a(Ljava/lang/Object;)Z

    .line 928
    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->I()V

    return-void
.end method

.method static synthetic d(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)Lcom/etermax/gamescommon/gifting/e;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->F:Lcom/etermax/gamescommon/gifting/e;

    return-object v0
.end method

.method private d(J)V
    .locals 1
    .parameter

    .prologue
    .line 932
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$12;-><init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;J)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$12;->a(Ljava/lang/Object;)Z

    .line 949
    return-void
.end method

.method static synthetic e(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)Lcom/etermax/gamescommon/gifting/f;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->E:Lcom/etermax/gamescommon/gifting/f;

    return-object v0
.end method

.method private e(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/j/h;->a(Landroid/content/Context;)Ljava/util/Date;

    move-result-object v0

    .line 449
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->isMyTurn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getExpiration_date()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_0

    .line 450
    invoke-static {p0, p1}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 455
    :goto_0
    return-void

    .line 452
    :cond_0
    sget-object v0, Lcom/etermax/preguntados/ui/game/duelmode/g;->a:Lcom/etermax/preguntados/ui/game/duelmode/g;

    .line 453
    invoke-static {p0, p1, v0}, Lcom/etermax/preguntados/ui/game/duelmode/DuelModeResultsActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;Lcom/etermax/preguntados/ui/game/duelmode/g;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->K()V

    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/menu/navigation/c;)I
    .locals 2
    .parameter

    .prologue
    .line 645
    invoke-virtual {p1}, Lcom/etermax/gamescommon/menu/navigation/c;->c()Lcom/etermax/gamescommon/menu/navigation/f;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->g:Lcom/etermax/gamescommon/menu/navigation/f;

    if-ne v0, v1, :cond_0

    .line 646
    iget v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->B:I

    .line 648
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 343
    invoke-static {}, Lcom/etermax/preguntados/ui/dashboard/e;->n()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method protected a(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 5
    .parameter

    .prologue
    .line 508
    const/4 v1, 0x0

    .line 509
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->i()Ljava/util/List;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 511
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 512
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 518
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 356
    invoke-static {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/NewGameActivity;->a(Landroid/content/Context;II)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 357
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->F()V

    .line 590
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/EtermaxGamesApplication;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;->v()Ljava/lang/String;

    move-result-object v0

    .line 591
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 592
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 1025
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/etermax/preguntados/sharing/b;->a(Landroid/content/Context;Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)Lcom/etermax/preguntados/sharing/a;

    move-result-object v0

    .line 1026
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->u:Lcom/etermax/preguntados/sharing/m;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 1027
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 361
    new-instance v0, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-direct {v0, v1, p1, p2}, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 362
    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V

    .line 363
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 6
    .parameter

    .prologue
    .line 790
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->i:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/d;->l()I

    move-result v0

    if-lez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 793
    :cond_0
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    sget-object v5, Lcom/etermax/gamescommon/b/g;->c:Lcom/etermax/gamescommon/b/g;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->a(Landroid/content/Context;JLjava/lang/String;ZLcom/etermax/gamescommon/b/g;)Landroid/content/Intent;

    move-result-object v0

    .line 794
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 795
    return-void
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/DashboardDTO;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 464
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getCoins()I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->z:I

    .line 465
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getExtra_shots()I

    move-result v0

    iput v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->A:I

    .line 466
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getInbox()Lcom/etermax/preguntados/datasource/dto/InboxDTO;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getInbox()Lcom/etermax/preguntados/datasource/dto/InboxDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/InboxDTO;->getTotal()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->B:I

    .line 467
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getInbox()Lcom/etermax/preguntados/datasource/dto/InboxDTO;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getInbox()Lcom/etermax/preguntados/datasource/dto/InboxDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/dto/InboxDTO;->getNews()I

    move-result v0

    move v2, v0

    .line 470
    :goto_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->m()V

    .line 472
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, "main_tag"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/e;

    .line 473
    if-eqz v0, :cond_0

    .line 474
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v3}, Lcom/etermax/preguntados/ui/game/a/a;->u()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 475
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->m()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/e;->b(J)V

    .line 505
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 466
    goto :goto_0

    :cond_2
    move v2, v1

    .line 467
    goto :goto_1

    .line 476
    :cond_3
    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v3}, Lcom/etermax/preguntados/ui/game/a/a;->A()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 477
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->v()V

    .line 478
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->x()Lcom/etermax/preguntados/ui/game/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/c;->a()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1, p0, v0}, Lcom/etermax/preguntados/ui/game/a/a;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto :goto_2

    .line 480
    :cond_4
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->C()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 481
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->D()V

    goto :goto_2

    .line 482
    :cond_5
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->hasConfirmedCountry()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/login/datasource/a;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v3

    if-nez v3, :cond_7

    .line 483
    :cond_6
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->v:Lcom/etermax/preguntados/ui/d/i;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/d/i;->f(Landroid/content/Context;)V

    .line 484
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getCountry()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Lcom/etermax/tools/nationality/Nationality;)V

    goto :goto_2

    .line 485
    :cond_7
    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v2}, Lcom/etermax/tools/social/a/b;->h()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 486
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->H()V

    goto :goto_2

    .line 487
    :cond_8
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getInactiveFriends()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v2}, Lcom/etermax/tools/social/a/b;->h()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 488
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->getInactiveFriends()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Ljava/util/List;)V

    goto :goto_2

    .line 489
    :cond_9
    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->p:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->isCurrentPromoActive()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->p:Lcom/etermax/gamescommon/promotion/PromotionsManager;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/promotion/PromotionsManager;->mustShowDailyPromo()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 491
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/e;->h()V

    goto/16 :goto_2

    .line 492
    :cond_a
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->j:Lcom/etermax/gamescommon/c/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->G()Z

    move-result v0

    if-nez v0, :cond_b

    .line 493
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->E()V

    goto/16 :goto_2

    .line 494
    :cond_b
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->isLevelUp()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 495
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->d(J)V

    .line 496
    invoke-virtual {p1, v1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->setLevelUp(Z)V

    goto/16 :goto_2

    .line 497
    :cond_c
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->hasNewAchievements()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 498
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->l:Lcom/etermax/gamescommon/achievements/ui/k;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/achievements/ui/k;->a()V

    .line 499
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->y()V

    goto/16 :goto_2

    .line 500
    :cond_d
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->isWeeklyRank()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->J()V

    .line 502
    invoke-virtual {p1, v1}, Lcom/etermax/preguntados/datasource/dto/DashboardDTO;->setWeeklyRank(Z)V

    goto/16 :goto_2
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 886
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->q()Lcom/etermax/preguntados/datasource/dto/LivesDTO;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->r()Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Lcom/etermax/preguntados/datasource/dto/LivesDTO;Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;)V

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    if-eqz p1, :cond_0

    .line 890
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->K()V

    .line 891
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 892
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->j:Lcom/etermax/gamescommon/c/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/c/a;->b()V

    .line 893
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->c(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto :goto_0
.end method

.method public a(Lcom/etermax/preguntados/datasource/dto/LivesDTO;Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->y()V

    .line 616
    invoke-static {}, Lcom/etermax/preguntados/ui/dashboard/a/e;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 617
    const-string v1, "out_of_lives_fragment"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 618
    return-void
.end method

.method public a(Lcom/etermax/preguntados/sharing/ShareView;)V
    .locals 1
    .parameter

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->u:Lcom/etermax/preguntados/sharing/m;

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 1044
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 1048
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 1049
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 1050
    return-void
.end method

.method public a(Lcom/etermax/preguntados/ui/rankings/m;)V
    .locals 1
    .parameter

    .prologue
    .line 1059
    invoke-virtual {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b(Landroid/support/v4/app/Fragment;)V

    .line 1060
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 1061
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 4
    .parameter

    .prologue
    .line 823
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/gamescommon/b/an;->b:Lcom/etermax/gamescommon/b/an;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/b/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 826
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/gamescommon/b/an;->a:Lcom/etermax/gamescommon/b/an;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/b/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 660
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 596
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->j:Lcom/etermax/gamescommon/c/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/c/a;->d()V

    .line 597
    return-void
.end method

.method public b(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 1
    .parameter

    .prologue
    .line 1083
    new-instance v0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;-><init>(Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$4;->a(Ljava/lang/Object;)Z

    .line 1102
    return-void
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 900
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->c(J)V

    .line 901
    return-void
.end method

.method public b(Lcom/etermax/preguntados/datasource/dto/LivesDTO;Lcom/etermax/preguntados/datasource/dto/LivesConfigDTO;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->y()V

    .line 623
    invoke-static {}, Lcom/etermax/preguntados/ui/dashboard/a/a;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 624
    const-string v1, "get_more_lives_key"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 625
    return-void
.end method

.method public b(Lcom/etermax/preguntados/sharing/ShareView;)V
    .locals 1
    .parameter

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->u:Lcom/etermax/preguntados/sharing/m;

    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 1055
    return-void
.end method

.method public b(Lcom/etermax/gamescommon/menu/navigation/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 664
    invoke-static {p0}, Lcom/etermax/preguntados/ui/settings/SettingsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 665
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 666
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->j:Lcom/etermax/gamescommon/c/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/c/a;->c()V

    .line 602
    return-void
.end method

.method public c(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 800
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/etermax/gamescommon/b/an;->c:Lcom/etermax/gamescommon/b/an;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/b/an;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 801
    return-void
.end method

.method public c(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x400

    const/4 v0, 0x0

    .line 386
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->r:Lcom/etermax/preguntados/e/c;

    invoke-virtual {v1, p1}, Lcom/etermax/preguntados/e/c;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 387
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->u()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 389
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getStatusVersion()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v3}, Lcom/etermax/preguntados/ui/game/a/a;->p()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->d()Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 390
    sget-object v1, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity$5;->b:[I

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v2}, Lcom/etermax/preguntados/ui/game/a/a;->d()Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/dto/enums/SpinType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 428
    :goto_0
    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 430
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 445
    :cond_0
    :goto_1
    return-void

    .line 392
    :pswitch_0
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->z:I

    iget v3, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->A:I

    invoke-static {v1, p1, v2, v3, v0}, Lcom/etermax/preguntados/ui/game/question/crown/QuestionCrownActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IILcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 400
    :pswitch_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->f()I

    move-result v2

    iget v3, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->A:I

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->g()Z

    move-result v4

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->d()Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-result-object v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZLcom/etermax/preguntados/datasource/dto/enums/SpinType;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 409
    :pswitch_2
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->f()I

    move-result v2

    iget v3, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->A:I

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->g()Z

    move-result v4

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/game/a/a;->d()Lcom/etermax/preguntados/datasource/dto/enums/SpinType;

    move-result-object v5

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/etermax/preguntados/ui/game/question/duel/QuestionDuelActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZLcom/etermax/preguntados/datasource/dto/enums/SpinType;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 418
    :pswitch_3
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->z:I

    iget v3, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->A:I

    invoke-static {v1, p1, v2, v3, v0}, Lcom/etermax/preguntados/ui/game/question/normal/QuestionNormalActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IILcom/etermax/preguntados/datasource/dto/enums/PowerUp;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->s()V

    .line 433
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    goto :goto_1

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->s()V

    .line 437
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->g:Lcom/etermax/preguntados/ui/game/a/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/a/a;->t()V

    .line 438
    const-string v0, "DashboardActivity"

    const-string v1, "Estado no coincide"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 440
    :cond_3
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_5

    .line 441
    :cond_4
    iget v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->z:I

    iget v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->A:I

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 442
    :cond_5
    invoke-virtual {p1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getGameType()Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    move-result-object v0

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->DUEL_GAME:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    if-ne v0, v1, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    goto/16 :goto_1

    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public d()V
    .locals 1

    .prologue
    .line 654
    invoke-static {p0}, Lcom/etermax/preguntados/ui/help/HelpActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 655
    return-void
.end method

.method public d(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 994
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->t:Lcom/etermax/preguntados/ui/newgame/e;

    sget-object v1, Lcom/etermax/preguntados/datasource/dto/enums/GameType;->NORMAL:Lcom/etermax/preguntados/datasource/dto/enums/GameType;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/etermax/gamescommon/language/Language;->get(Ljava/lang/String;Z)Lcom/etermax/gamescommon/language/Language;

    move-result-object v2

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->z:I

    iget v5, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->A:I

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/preguntados/ui/newgame/e;->a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;Ljava/lang/Long;IIZ)V

    .line 995
    return-void
.end method

.method public d(Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 3
    .parameter

    .prologue
    .line 880
    invoke-static {p1}, Lcom/etermax/preguntados/ui/dashboard/a;->a(Lcom/etermax/preguntados/datasource/dto/GameDTO;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 881
    const-string v1, "fragment_accept_game"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 882
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 670
    iget v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->A:I

    const-string v1, "left_panel"

    invoke-static {p0, v0, v1}, Lcom/etermax/preguntados/ui/shop/ShopActivity;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 671
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 672
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 676
    invoke-static {p0}, Lcom/etermax/preguntados/ui/questionsfactory/suggestquestion/SuggestQuestionActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 677
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 678
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 870
    return-void
.end method

.method public h_()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 830
    invoke-static {p0}, Lcom/etermax/preguntados/ui/achievements/AchievementsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 831
    return-void
.end method

.method public i_()V
    .locals 1

    .prologue
    .line 682
    invoke-static {p0}, Lcom/etermax/preguntados/ui/questionsfactory/QuestionsFactoryActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 683
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 684
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->H()V

    .line 689
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/rankings/RankingsActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1078
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 1079
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 1106
    invoke-static {p0}, Lcom/etermax/preguntados/ui/coupon/CouponActivity_;->a(Landroid/content/Context;)Lcom/etermax/preguntados/ui/coupon/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/coupon/a;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 1108
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b:Lcom/etermax/gamescommon/menu/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a;->b()V

    .line 265
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 630
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->o()V

    .line 631
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "main_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/dashboard/e;

    .line 835
    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/dashboard/e;->l()V

    .line 838
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/etermax/tools/social/a/b;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 251
    if-nez p1, :cond_2

    .line 252
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->finish()V

    goto :goto_0

    .line 256
    :cond_2
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->f:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/etermax/gamescommon/shop/c;->a(IILandroid/content/Intent;)V

    .line 258
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 271
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b:Lcom/etermax/gamescommon/menu/a;

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->c:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/a;

    invoke-interface {v0}, Lcom/etermax/preguntados/a;->x()[Lcom/etermax/gamescommon/menu/navigation/e;

    move-result-object v0

    invoke-virtual {v1, v2, p0, p0, v0}, Lcom/etermax/gamescommon/menu/a;->a(Ljava/lang/String;Lcom/etermax/gamescommon/menu/navigation/d;Lcom/etermax/gamescommon/menu/c;[Lcom/etermax/gamescommon/menu/navigation/e;)V

    .line 272
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b:Lcom/etermax/gamescommon/menu/a;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a;->a(Lcom/etermax/gamescommon/menu/b;)V

    .line 273
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->j:Lcom/etermax/gamescommon/c/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/c/a;->a()V

    .line 274
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 275
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->n:Lcom/etermax/gamescommon/datasource/e;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/e;->l()V

    .line 277
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->s:Lcom/etermax/gamescommon/mediation/MediationManager;

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/mediation/MediationManager;->getMediationForAdUnitType(Ljava/lang/String;)Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->D:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    .line 279
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 842
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 844
    sget v1, Lcom/etermax/l;->preguntados_debug_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 845
    const/4 v0, 0x1

    .line 847
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onDestroy()V

    .line 335
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->D:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;->getMediator()Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;)Lcom/etermax/adsinterface/a;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0}, Lcom/etermax/adsinterface/a;->b()V

    .line 339
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 853
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 854
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/etermax/i;->cheat:I

    if-ne v1, v2, :cond_1

    .line 855
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->k:Lcom/etermax/gamescommon/e;

    const-string v2, "ANSWERS_CHEAT"

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/e;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->k:Lcom/etermax/gamescommon/e;

    const-string v2, "ANSWERS_CHEAT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Z)V

    .line 857
    const-string v1, "Enable Answer Cheat"

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 865
    :goto_0
    return v0

    .line 859
    :cond_0
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->k:Lcom/etermax/gamescommon/e;

    const-string v2, "ANSWERS_CHEAT"

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/e;->b(Ljava/lang/String;Z)V

    .line 860
    const-string v1, "Disable Answer Cheat"

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 865
    :cond_1
    invoke-super {p0, p1}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onPause()V

    .line 326
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->D:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;->getMediator()Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;)Lcom/etermax/adsinterface/a;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_0

    .line 328
    invoke-interface {v0}, Lcom/etermax/adsinterface/a;->a()V

    .line 330
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onResume()V

    .line 300
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->B()V

    .line 301
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->D:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;->getMediator()Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->a(Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;)Lcom/etermax/adsinterface/a;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->D:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediationConfig;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/etermax/adsinterface/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 284
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStart()V

    .line 285
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->f:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 286
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->a(Landroid/content/Context;)V

    .line 287
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Lcom/etermax/tools/navigation/BaseFragmentActivity;->onStop()V

    .line 292
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->f:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/shop/c;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 293
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->h:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0}, Lcom/etermax/tools/f/a;->b(Landroid/content/Context;)V

    .line 294
    return-void
.end method

.method public p()V
    .locals 1

    .prologue
    .line 1036
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->openOptionsMenu()V

    .line 1039
    :cond_0
    return-void
.end method

.method public q()V
    .locals 0

    .prologue
    .line 1066
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->L()V

    .line 1067
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 1071
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->e:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->s()Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/PreguntadosAppConfigDTO;->getShowQuestionsReloadSeconds()I

    move-result v1

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/tvshow/TvShowQuestionActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 1072
    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 1073
    return-void
.end method
