.class Lcom/etermax/gamescommon/profile/ui/l$2;
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
    .line 129
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/l$2;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$2;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/ui/l;->b()V

    .line 133
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$2;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/ui/l;->a(Lcom/etermax/gamescommon/profile/ui/l;)Lcom/etermax/gamescommon/profile/ui/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/h;->isFriend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$2;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/ui/l;->b(Lcom/etermax/gamescommon/profile/ui/l;)Lcom/etermax/gamescommon/profile/ui/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/m;->f()V

    .line 135
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$2;->a:Lcom/etermax/gamescommon/profile/ui/l;

    const-string v1, "remove_friend"

    const-string v2, "another_profile_setting_actions"

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/profile/ui/l;->a(Lcom/etermax/gamescommon/profile/ui/l;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$2;->a:Lcom/etermax/gamescommon/profile/ui/l;

    invoke-static {v0}, Lcom/etermax/gamescommon/profile/ui/l;->b(Lcom/etermax/gamescommon/profile/ui/l;)Lcom/etermax/gamescommon/profile/ui/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/m;->e()V

    .line 138
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/l$2;->a:Lcom/etermax/gamescommon/profile/ui/l;

    const-string v1, "add_friend"

    const-string v2, "another_profile_main_actions"

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/profile/ui/l;->a(Lcom/etermax/gamescommon/profile/ui/l;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
