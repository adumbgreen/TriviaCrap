.class Lcom/etermax/gamescommon/dashboard/tabs/BadgeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView$1;->a:Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v0, 0x63

    .line 49
    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView$1;->a:Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;

    iget-object v1, v1, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->a:Lcom/etermax/gamescommon/dashboard/tabs/a;

    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView$1;->a:Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;

    invoke-static {v2}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->a(Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/gamescommon/dashboard/tabs/a;->a(Ljava/lang/String;)I

    move-result v1

    .line 50
    if-lez v1, :cond_0

    .line 51
    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView$1;->a:Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->setVisibility(I)V

    .line 52
    if-le v1, v0, :cond_1

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView$1;->a:Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_1
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView$1;->a:Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->invalidate()V

    .line 59
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView$1;->a:Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/dashboard/tabs/BadgeView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
