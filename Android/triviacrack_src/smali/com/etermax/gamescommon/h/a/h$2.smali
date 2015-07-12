.class Lcom/etermax/gamescommon/h/a/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/h/a/h;->a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/gamescommon/user/b/d;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

.field final synthetic b:Lcom/etermax/gamescommon/user/b/d;

.field final synthetic c:Landroid/widget/BaseAdapter;

.field final synthetic d:Lcom/etermax/gamescommon/h/a/h;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/h/a/h;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Lcom/etermax/gamescommon/user/b/d;Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/h$2;->d:Lcom/etermax/gamescommon/h/a/h;

    iput-object p2, p0, Lcom/etermax/gamescommon/h/a/h$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    iput-object p3, p0, Lcom/etermax/gamescommon/h/a/h$2;->b:Lcom/etermax/gamescommon/user/b/d;

    iput-object p4, p0, Lcom/etermax/gamescommon/h/a/h$2;->c:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/h$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getIs_app_user()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/h$2;->d:Lcom/etermax/gamescommon/h/a/h;

    iget-object v0, v0, Lcom/etermax/gamescommon/h/a/h;->a:Lcom/etermax/gamescommon/h/a/f;

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/h$2;->b:Lcom/etermax/gamescommon/user/b/d;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/user/b/d;->b()Lcom/etermax/gamescommon/h/a/e;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/h/a/h$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/h/a/f;->a(Lcom/etermax/gamescommon/h/a/e;Lcom/etermax/gamescommon/j;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/h$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getInvitationStatus()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    move-result-object v0

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->NOT_INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/h$2;->d:Lcom/etermax/gamescommon/h/a/h;

    iget-object v0, v0, Lcom/etermax/gamescommon/h/a/h;->a:Lcom/etermax/gamescommon/h/a/f;

    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/h$2;->c:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/etermax/gamescommon/h/a/h$2;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/h/a/f;->a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V

    goto :goto_0
.end method
