.class Lcom/etermax/gamescommon/h/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/social/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/h/a/c;->a(Landroid/widget/BaseAdapter;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/BaseAdapter;

.field final synthetic b:Lcom/etermax/gamescommon/h/a/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/h/a/c;Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/c$2;->b:Lcom/etermax/gamescommon/h/a/c;

    iput-object p2, p0, Lcom/etermax/gamescommon/h/a/c$2;->a:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$2;->b:Lcom/etermax/gamescommon/h/a/c;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/h/a/c;->a(Lcom/etermax/gamescommon/h/a/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    .line 440
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$2;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 441
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 425
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$2;->b:Lcom/etermax/gamescommon/h/a/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->facebook_invite_failure:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 428
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$2;->b:Lcom/etermax/gamescommon/h/a/c;

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

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$2;->b:Lcom/etermax/gamescommon/h/a/c;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->NOT_INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/h/a/c;->a(Lcom/etermax/gamescommon/h/a/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    .line 434
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$2;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 435
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$2;->b:Lcom/etermax/gamescommon/h/a/c;

    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->NOT_INVITED:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/h/a/c;->a(Lcom/etermax/gamescommon/h/a/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    .line 446
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c$2;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 447
    return-void
.end method
