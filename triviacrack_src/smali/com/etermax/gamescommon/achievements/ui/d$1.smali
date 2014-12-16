.class Lcom/etermax/gamescommon/achievements/ui/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/achievements/ui/d;->a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

.field final synthetic b:Lcom/etermax/gamescommon/achievements/ui/d;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/achievements/ui/d;Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/etermax/gamescommon/achievements/ui/d$1;->b:Lcom/etermax/gamescommon/achievements/ui/d;

    iput-object p2, p0, Lcom/etermax/gamescommon/achievements/ui/d$1;->a:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d$1;->a:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getStatus()Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->OBTAINED:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    if-ne v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/d$1;->b:Lcom/etermax/gamescommon/achievements/ui/d;

    iget-object v0, v0, Lcom/etermax/gamescommon/achievements/ui/d;->h:Lcom/etermax/gamescommon/achievements/ui/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/d$1;->a:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/achievements/ui/k;->a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V

    .line 48
    :cond_0
    return-void
.end method
