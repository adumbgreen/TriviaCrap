.class public Lcom/etermax/preguntados/ui/achievements/AchievementsActivity;
.super Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity;
.source "SourceFile"


# instance fields
.field c:Lcom/etermax/preguntados/sharing/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/gamescommon/achievements/ui/BaseAchievementsActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/etermax/preguntados/ui/achievements/AchievementsActivity_;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/achievements/AchievementsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/etermax/preguntados/sharing/b;->a(Landroid/content/Context;Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)Lcom/etermax/preguntados/sharing/a;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/etermax/preguntados/ui/achievements/AchievementsActivity;->c:Lcom/etermax/preguntados/sharing/m;

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/sharing/m;->a(Lcom/etermax/preguntados/sharing/ShareView;)V

    .line 25
    return-void
.end method
