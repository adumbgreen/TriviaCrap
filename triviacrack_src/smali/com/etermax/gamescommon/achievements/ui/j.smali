.class public Lcom/etermax/gamescommon/achievements/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/j;->a:Landroid/os/Bundle;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lcom/etermax/gamescommon/achievements/ui/i$1;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/etermax/gamescommon/achievements/ui/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/achievements/ui/g;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/etermax/gamescommon/achievements/ui/i;

    invoke-direct {v0}, Lcom/etermax/gamescommon/achievements/ui/i;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/etermax/gamescommon/achievements/ui/j;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/achievements/ui/i;->setArguments(Landroid/os/Bundle;)V

    .line 120
    return-object v0
.end method
