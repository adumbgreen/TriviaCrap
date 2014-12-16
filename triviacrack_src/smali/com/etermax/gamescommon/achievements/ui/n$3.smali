.class Lcom/etermax/gamescommon/achievements/ui/n$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/achievements/ui/n;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/achievements/ui/n;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/achievements/ui/n;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/etermax/gamescommon/achievements/ui/n$3;->a:Lcom/etermax/gamescommon/achievements/ui/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/n$3;->a:Lcom/etermax/gamescommon/achievements/ui/n;

    iget v1, v0, Lcom/etermax/gamescommon/achievements/ui/n;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/etermax/gamescommon/achievements/ui/n;->g:I

    .line 116
    iget-object v0, p0, Lcom/etermax/gamescommon/achievements/ui/n$3;->a:Lcom/etermax/gamescommon/achievements/ui/n;

    invoke-static {v0}, Lcom/etermax/gamescommon/achievements/ui/n;->a(Lcom/etermax/gamescommon/achievements/ui/n;)V

    .line 117
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method
