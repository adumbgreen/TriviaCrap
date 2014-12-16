.class public Lcom/etermax/gamescommon/achievements/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/q;->a:Landroid/os/Bundle;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/gamescommon/achievements/ui/p$1;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/etermax/gamescommon/achievements/ui/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/achievements/ui/n;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/etermax/gamescommon/achievements/ui/p;

    invoke-direct {v0}, Lcom/etermax/gamescommon/achievements/ui/p;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/q;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/achievements/ui/p;->setArguments(Landroid/os/Bundle;)V

    .line 117
    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)Lcom/etermax/gamescommon/achievements/ui/q;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;",
            ">;)",
            "Lcom/etermax/gamescommon/achievements/ui/q;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/q;->a:Landroid/os/Bundle;

    const-string v1, "mAchievements"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 122
    return-object p0
.end method
