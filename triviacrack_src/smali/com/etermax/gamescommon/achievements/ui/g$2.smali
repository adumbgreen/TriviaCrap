.class Lcom/etermax/gamescommon/achievements/ui/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/achievements/ui/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/achievements/ui/g;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/achievements/ui/g;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/achievements/ui/g;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/etermax/gamescommon/achievements/ui/g$2;->a:Lcom/etermax/gamescommon/achievements/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
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
    .line 62
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/g$2;->a:Lcom/etermax/gamescommon/achievements/ui/g;

    invoke-static {v0, p1}, Lcom/etermax/gamescommon/achievements/ui/g;->a(Lcom/etermax/gamescommon/achievements/ui/g;Ljava/util/List;)V

    .line 63
    return-void
.end method
