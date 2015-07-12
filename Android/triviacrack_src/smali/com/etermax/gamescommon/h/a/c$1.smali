.class Lcom/etermax/gamescommon/h/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/h/a/c;->a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/j;

.field final synthetic b:Landroid/widget/BaseAdapter;

.field final synthetic c:Lcom/etermax/gamescommon/h/a/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/h/a/c;Lcom/etermax/gamescommon/j;Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/c$1;->c:Lcom/etermax/gamescommon/h/a/c;

    iput-object p2, p0, Lcom/etermax/gamescommon/h/a/c$1;->a:Lcom/etermax/gamescommon/j;

    iput-object p3, p0, Lcom/etermax/gamescommon/h/a/c$1;->b:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$1;->a:Lcom/etermax/gamescommon/j;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/j;->setInvitationStatus(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    .line 388
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$1;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 389
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 373
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$1;->c:Lcom/etermax/gamescommon/h/a/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->facebook_invite_failure:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 376
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$1;->c:Lcom/etermax/gamescommon/h/a/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Facebook Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$1;->a:Lcom/etermax/gamescommon/j;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->NOT_INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/j;->setInvitationStatus(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    .line 382
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$1;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 383
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$1;->a:Lcom/etermax/gamescommon/j;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->NOT_INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/j;->setInvitationStatus(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    .line 394
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$1;->b:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 395
    return-void
.end method
