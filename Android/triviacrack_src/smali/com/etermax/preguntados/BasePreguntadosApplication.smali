.class public abstract Lcom/etermax/preguntados/BasePreguntadosApplication;
.super Lcom/etermax/gamescommon/EtermaxGamesApplication;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/a;


# static fields
.field private static k:[Lcom/etermax/gamescommon/menu/navigation/e;


# instance fields
.field protected f:Lcom/etermax/gamescommon/c/a;

.field protected g:Lcom/etermax/preguntados/datasource/d;

.field protected h:Lcom/etermax/preguntados/g/a;

.field protected i:Lcom/etermax/gamescommon/promotion/PromotionsManager;

.field protected j:Lcom/etermax/preguntados/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 170
    const/16 v0, 0x11

    new-array v13, v0, [Lcom/etermax/gamescommon/menu/navigation/e;

    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->a:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v2, Lcom/etermax/gamescommon/b/n;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v0, v13, v5

    const/4 v0, 0x1

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->d:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v3, Lcom/etermax/gamescommon/b/n;->j:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v1, v13, v0

    const/4 v0, 0x2

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->i:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v3, Lcom/etermax/gamescommon/b/n;->L:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v1, v13, v0

    const/4 v6, 0x3

    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->j:Lcom/etermax/gamescommon/menu/navigation/f;

    sget v2, Lcom/etermax/o;->redeem_coupon:I

    sget v3, Lcom/etermax/h;->dashboard_coupon:I

    sget-object v4, Lcom/etermax/gamescommon/b/n;->k:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;IILjava/lang/String;Z)V

    aput-object v0, v13, v6

    const/4 v6, 0x4

    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->p:Lcom/etermax/gamescommon/menu/navigation/f;

    sget v2, Lcom/etermax/o;->player_ranking_plural:I

    sget v3, Lcom/etermax/h;->dashboard_ranking:I

    sget-object v4, Lcom/etermax/gamescommon/b/n;->O:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;IILjava/lang/String;Z)V

    aput-object v0, v13, v6

    const/4 v6, 0x5

    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->n:Lcom/etermax/gamescommon/menu/navigation/f;

    sget v2, Lcom/etermax/o;->questions_factory:I

    sget v3, Lcom/etermax/h;->dashboard_factory:I

    sget-object v4, Lcom/etermax/gamescommon/b/n;->K:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;IILjava/lang/String;Z)V

    aput-object v0, v13, v6

    const/4 v0, 0x6

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->g:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v3, Lcom/etermax/gamescommon/b/n;->M:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v1, v13, v0

    const/4 v0, 0x7

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->e:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v3, Lcom/etermax/gamescommon/b/n;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v1, v13, v0

    const/16 v0, 0x8

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->f:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v3, Lcom/etermax/gamescommon/b/n;->n:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v1, v13, v0

    const/16 v0, 0x9

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->b:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v3, Lcom/etermax/gamescommon/b/n;->i:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v1, v13, v0

    const/16 v0, 0xa

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->c:Lcom/etermax/gamescommon/menu/navigation/f;

    sget-object v3, Lcom/etermax/gamescommon/b/n;->l:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;Z)V

    aput-object v1, v13, v0

    const/16 v6, 0xb

    new-instance v0, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v1, Lcom/etermax/gamescommon/menu/navigation/f;->h:Lcom/etermax/gamescommon/menu/navigation/f;

    sget v2, Lcom/etermax/o;->buy_premium:I

    sget v3, Lcom/etermax/h;->dashboard_pro_version:I

    sget-object v4, Lcom/etermax/gamescommon/b/n;->o:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;IILjava/lang/String;Z)V

    aput-object v0, v13, v6

    const/16 v0, 0xc

    new-instance v1, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v2, Lcom/etermax/gamescommon/menu/navigation/f;->k:Lcom/etermax/gamescommon/menu/navigation/f;

    invoke-direct {v1, v2, v5}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Z)V

    aput-object v1, v13, v0

    const/16 v0, 0xd

    new-instance v6, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v7, Lcom/etermax/gamescommon/menu/navigation/f;->l:Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v8, "com.etermax.triviafans.fcb"

    sget v9, Lcom/etermax/o;->fcbarcelona_app_name:I

    sget v10, Lcom/etermax/h;->dashboard_games_fcbarcelona:I

    sget-object v11, Lcom/etermax/gamescommon/b/n;->t:Ljava/lang/String;

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;IILjava/lang/String;Z)V

    aput-object v6, v13, v0

    const/16 v0, 0xe

    new-instance v6, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v7, Lcom/etermax/gamescommon/menu/navigation/f;->l:Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v8, "com.etermax.apalabrados"

    sget v9, Lcom/etermax/o;->apalabrados_app_name:I

    sget v10, Lcom/etermax/h;->dashboard_games_apalabrados:I

    sget-object v11, Lcom/etermax/gamescommon/b/n;->q:Ljava/lang/String;

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;IILjava/lang/String;Z)V

    aput-object v6, v13, v0

    const/16 v0, 0xf

    new-instance v6, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v7, Lcom/etermax/gamescommon/menu/navigation/f;->l:Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v8, "com.etermax.wordcrack"

    sget v9, Lcom/etermax/o;->wordcrack_app_name:I

    sget v10, Lcom/etermax/h;->dashboard_games_mezcladitos:I

    sget-object v11, Lcom/etermax/gamescommon/b/n;->p:Ljava/lang/String;

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;IILjava/lang/String;Z)V

    aput-object v6, v13, v0

    const/16 v0, 0x10

    new-instance v6, Lcom/etermax/gamescommon/menu/navigation/e;

    sget-object v7, Lcom/etermax/gamescommon/menu/navigation/f;->l:Lcom/etermax/gamescommon/menu/navigation/f;

    const-string v8, "com.etermax.bingocrack"

    sget v9, Lcom/etermax/o;->bingocrack_app_name:I

    sget v10, Lcom/etermax/h;->dashboard_games_bingocrack:I

    sget-object v11, Lcom/etermax/gamescommon/b/n;->r:Ljava/lang/String;

    move v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/etermax/gamescommon/menu/navigation/e;-><init>(Lcom/etermax/gamescommon/menu/navigation/f;Ljava/lang/String;IILjava/lang/String;Z)V

    aput-object v6, v13, v0

    sput-object v13, Lcom/etermax/preguntados/BasePreguntadosApplication;->k:[Lcom/etermax/gamescommon/menu/navigation/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/etermax/gamescommon/EtermaxGamesApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/etermax/preguntados/BasePreguntadosApplication;->g:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->h()V

    .line 102
    invoke-virtual {p0}, Lcom/etermax/preguntados/BasePreguntadosApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/preguntados/ui/dashboard/DashboardActivity;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public getDefaultMediation()[Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;
    .locals 6

    .prologue
    .line 158
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    const/4 v1, 0x0

    new-instance v2, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    const-string v3, "banner"

    sget-object v4, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->mopub:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    const-string v5, "d20507e2fa544c759602b0be7ba2316c"

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    const-string v3, "banner_tablet"

    sget-object v4, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->mopub:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    const-string v5, "b822b9088ef14f3a9f5d5f95d8c46d25"

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    const-string v3, "interstitial"

    sget-object v4, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->mopub:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    const-string v5, "e5a92c11c26d44d183adb7afed9b7c80"

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    const-string v3, "interstitial_tablet"

    sget-object v4, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->mopub:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    const-string v5, "89c753a7c1f04ce3b392fb622b15ed31"

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    const-string v3, "interstitial_duel"

    sget-object v4, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->mopub:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    const-string v5, "e5a92c11c26d44d183adb7afed9b7c80"

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    const-string v3, "interstitial_duel_tablet"

    sget-object v4, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->mopub:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    const-string v5, "89c753a7c1f04ce3b392fb622b15ed31"

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    const-string v3, "interstitial_duel_wc"

    sget-object v4, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->mopub:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    const-string v5, "e5a92c11c26d44d183adb7afed9b7c80"

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;

    const-string v3, "interstitial_duel_wc_tablet"

    sget-object v4, Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;->mopub:Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;

    const-string v5, "89c753a7c1f04ce3b392fb622b15ed31"

    invoke-direct {v2, v3, v4, v5}, Lcom/etermax/gamescommon/datasource/dto/AdUnitDTO;-><init>(Ljava/lang/String;Lcom/etermax/gamescommon/mediation/MediationManager$AdMediatorType;Ljava/lang/String;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const-string v0, "com.etermax.preguntados.preferences"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "271648825839"

    return-object v0
.end method

.method protected j()V
    .locals 7

    .prologue
    .line 53
    iget-object v0, p0, Lcom/etermax/preguntados/BasePreguntadosApplication;->f:Lcom/etermax/gamescommon/c/a;

    const-wide/16 v1, 0xa

    const-wide/16 v3, 0x3

    const-wide/16 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/etermax/gamescommon/c/a;->a(JJJ)V

    .line 54
    iget-object v0, p0, Lcom/etermax/preguntados/BasePreguntadosApplication;->h:Lcom/etermax/preguntados/g/a;

    invoke-virtual {v0}, Lcom/etermax/preguntados/g/a;->a()V

    .line 55
    invoke-virtual {p0}, Lcom/etermax/preguntados/BasePreguntadosApplication;->k()V

    .line 56
    invoke-virtual {p0}, Lcom/etermax/preguntados/BasePreguntadosApplication;->l()V

    .line 57
    return-void
.end method

.method public abstract k()V
.end method

.method public l()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/etermax/preguntados/c/a/a;

    invoke-direct {v0}, Lcom/etermax/preguntados/c/a/a;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/etermax/preguntados/BasePreguntadosApplication;->j:Lcom/etermax/preguntados/c/a/b;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/c/a/b;->a(Lcom/etermax/preguntados/c/a/e;)V

    .line 68
    return-void
.end method

.method public m()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/etermax/o;->unknown_error:I

    return v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/etermax/preguntados/BasePreguntadosApplication;->g()V

    .line 79
    iget-object v0, p0, Lcom/etermax/preguntados/BasePreguntadosApplication;->g:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->e()V

    .line 80
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "279901035446446"

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "preguntados"

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/BasePreguntadosApplication;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.etermax.preguntados.pro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "6RY2I2s9fbek5lN3tWxw"

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "JnMMiPzaL0XAqYNpqSrqzS56zJ3RXtac7zKfA3wvkI4"

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "preguntados-twitter-callback"

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "market_google"

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/etermax/preguntados/BasePreguntadosApplication;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/etermax/preguntados/BasePreguntadosApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "H7NMF324GKZXV57H4FJT"

    return-object v0
.end method

.method public x()[Lcom/etermax/gamescommon/menu/navigation/e;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/etermax/preguntados/BasePreguntadosApplication;->k:[Lcom/etermax/gamescommon/menu/navigation/e;

    return-object v0
.end method
