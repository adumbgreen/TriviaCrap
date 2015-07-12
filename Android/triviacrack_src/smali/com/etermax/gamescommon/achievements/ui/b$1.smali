.class Lcom/etermax/gamescommon/achievements/ui/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/achievements/ui/b;->a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

.field final synthetic b:Lcom/etermax/gamescommon/achievements/ui/b;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/achievements/ui/b;Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/etermax/gamescommon/achievements/ui/b$1;->b:Lcom/etermax/gamescommon/achievements/ui/b;

    iput-object p2, p0, Lcom/etermax/gamescommon/achievements/ui/b$1;->a:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/b$1;->a:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->getStatus()Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->OBTAINED:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/b$1;->b:Lcom/etermax/gamescommon/achievements/ui/b;

    iget-object v0, v0, Lcom/etermax/gamescommon/achievements/ui/b;->d:Lcom/etermax/gamescommon/achievements/ui/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/b$1;->a:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/achievements/ui/k;->a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V

    .line 39
    :cond_0
    return-void
.end method
