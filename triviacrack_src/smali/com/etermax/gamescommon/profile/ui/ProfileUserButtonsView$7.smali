.class Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$7;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$7;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    iget-object v0, v0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->o:Lcom/etermax/gamescommon/profile/ui/j;

    invoke-interface {v0}, Lcom/etermax/gamescommon/profile/ui/j;->l()V

    .line 149
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView$7;->a:Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;

    const-string v1, "play"

    const-string v2, "another_profile_main_actions"

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;->a(Lcom/etermax/gamescommon/profile/ui/ProfileUserButtonsView;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method
