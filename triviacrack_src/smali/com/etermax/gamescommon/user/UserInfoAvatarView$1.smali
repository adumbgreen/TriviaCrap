.class Lcom/etermax/gamescommon/user/UserInfoAvatarView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/j;

.field final synthetic b:Lcom/etermax/gamescommon/user/UserInfoAvatarView;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/user/UserInfoAvatarView;Lcom/etermax/gamescommon/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView$1;->b:Lcom/etermax/gamescommon/user/UserInfoAvatarView;

    iput-object p2, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView$1;->a:Lcom/etermax/gamescommon/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView$1;->b:Lcom/etermax/gamescommon/user/UserInfoAvatarView;

    invoke-static {v0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Lcom/etermax/gamescommon/user/UserInfoAvatarView;)Lcom/etermax/gamescommon/user/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView$1;->b:Lcom/etermax/gamescommon/user/UserInfoAvatarView;

    invoke-static {v0}, Lcom/etermax/gamescommon/user/UserInfoAvatarView;->a(Lcom/etermax/gamescommon/user/UserInfoAvatarView;)Lcom/etermax/gamescommon/user/b;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/user/UserInfoAvatarView$1;->a:Lcom/etermax/gamescommon/j;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/user/b;->a(Lcom/etermax/gamescommon/j;)V

    .line 233
    :cond_0
    return-void
.end method
