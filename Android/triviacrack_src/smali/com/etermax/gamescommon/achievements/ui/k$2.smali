.class Lcom/etermax/gamescommon/achievements/ui/k$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/achievements/ui/k;->a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;Lcom/etermax/gamescommon/achievements/ui/l;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        "[",
        "Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

.field final synthetic b:Lcom/etermax/gamescommon/achievements/ui/l;

.field final synthetic c:Lcom/etermax/gamescommon/achievements/ui/k;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/achievements/ui/k;Ljava/lang/String;Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;Lcom/etermax/gamescommon/achievements/ui/l;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/etermax/gamescommon/achievements/ui/k$2;->c:Lcom/etermax/gamescommon/achievements/ui/k;

    iput-object p3, p0, Lcom/etermax/gamescommon/achievements/ui/k$2;->a:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    iput-object p4, p0, Lcom/etermax/gamescommon/achievements/ui/k$2;->b:Lcom/etermax/gamescommon/achievements/ui/l;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/etermax/gamescommon/achievements/ui/k$2;->b()[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 60
    return-void
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/k$2;->a:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    sget-object v1, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;->PENDING:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    if-ne v0, v1, :cond_1

    .line 65
    array-length v0, p2

    if-lez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/k$2;->c:Lcom/etermax/gamescommon/achievements/ui/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/k$2;->c:Lcom/etermax/gamescommon/achievements/ui/k;

    invoke-static {v1, p2}, Lcom/etermax/gamescommon/achievements/ui/k;->a(Lcom/etermax/gamescommon/achievements/ui/k;[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/achievements/ui/k;->a(Lcom/etermax/gamescommon/achievements/ui/k;Ljava/util/ArrayList;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/k$2;->b:Lcom/etermax/gamescommon/achievements/ui/l;

    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/k$2;->c:Lcom/etermax/gamescommon/achievements/ui/k;

    invoke-static {v1, p2}, Lcom/etermax/gamescommon/achievements/ui/k;->a(Lcom/etermax/gamescommon/achievements/ui/k;[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/achievements/ui/l;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/achievements/ui/k$2;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, [Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/achievements/ui/k$2;->a(Landroid/support/v4/app/FragmentActivity;[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;)V

    return-void
.end method

.method public b()[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/k$2;->c:Lcom/etermax/gamescommon/achievements/ui/k;

    iget-object v0, v0, Lcom/etermax/gamescommon/achievements/ui/k;->b:Lcom/etermax/gamescommon/datasource/e;

    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/k$2;->a:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/datasource/e;->a(Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;)[Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;

    move-result-object v0

    return-object v0
.end method
