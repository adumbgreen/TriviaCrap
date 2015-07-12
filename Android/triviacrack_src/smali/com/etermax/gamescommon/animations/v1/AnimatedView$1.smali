.class Lcom/etermax/gamescommon/animations/v1/AnimatedView$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/animations/v1/AnimatedView;->d()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/animations/v1/AnimatedView;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/animations/v1/AnimatedView;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView$1;->a:Lcom/etermax/gamescommon/animations/v1/AnimatedView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onTick(J)V
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/etermax/gamescommon/animations/v1/AnimatedView$1;->a:Lcom/etermax/gamescommon/animations/v1/AnimatedView;

    invoke-static {v0}, Lcom/etermax/gamescommon/animations/v1/AnimatedView;->a(Lcom/etermax/gamescommon/animations/v1/AnimatedView;)V

    .line 162
    return-void
.end method
