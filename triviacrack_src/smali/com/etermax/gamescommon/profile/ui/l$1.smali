.class Lcom/etermax/gamescommon/profile/ui/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/l;->a(Lcom/etermax/gamescommon/profile/ui/h;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/l;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/l;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/l$1;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$1;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/ui/l;->b()V

    .line 119
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$1;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/ui/l;->a(Lcom/etermax/gamescommon/profile/ui/l;)Lcom/etermax/gamescommon/profile/ui/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/h;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$1;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/ui/l;->b(Lcom/etermax/gamescommon/profile/ui/l;)Lcom/etermax/gamescommon/profile/ui/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/m;->h()V

    .line 121
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$1;->a:Lcom/etermax/gamescommon/profile/ui/l;

    const-string v1, "unblock"

    const-string v2, "another_profile_setting_actions"

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/profile/ui/l;->a(Lcom/etermax/gamescommon/profile/ui/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$1;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/ui/l;->b(Lcom/etermax/gamescommon/profile/ui/l;)Lcom/etermax/gamescommon/profile/ui/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/m;->g()V

    .line 124
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$1;->a:Lcom/etermax/gamescommon/profile/ui/l;

    const-string v1, "block"

    const-string v2, "another_profile_setting_actions"

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/profile/ui/l;->a(Lcom/etermax/gamescommon/profile/ui/l;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
