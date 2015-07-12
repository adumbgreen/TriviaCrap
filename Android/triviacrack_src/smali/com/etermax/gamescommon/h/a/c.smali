.class public Lcom/etermax/gamescommon/h/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/h/a/f;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/etermax/gamescommon/h/a/a;


# direct methods
.method protected constructor <init>(Lcom/etermax/gamescommon/h/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/h/a/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/h/a/c;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    return-void
.end method

.method private a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V
    .locals 2
    .parameter

    .prologue
    .line 452
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    .line 454
    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setInvitationStatus(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 458
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/BaseAdapter;)V
    .locals 7
    .parameter

    .prologue
    const/16 v5, 0x32

    const/4 v3, 0x0

    .line 401
    const-string v1, ""

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->a:Ljava/util/List;

    move v2, v3

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/h/a/a;->e(Lcom/etermax/gamescommon/h/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v5, :cond_0

    .line 405
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/h/a/a;->e(Lcom/etermax/gamescommon/h/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getIs_app_user()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/h/a/a;->e(Lcom/etermax/gamescommon/h/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v4}, Lcom/etermax/gamescommon/h/a/a;->e(Lcom/etermax/gamescommon/h/a/a;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/h/a/a;->e(Lcom/etermax/gamescommon/h/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    sget-object v4, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->INVITING:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-virtual {v0, v4}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setInvitationStatus(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    .line 410
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/h/a/a;->e(Lcom/etermax/gamescommon/h/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v5, :cond_1

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 416
    :cond_0
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 418
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/etermax/o;->try_out:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v5}, Lcom/etermax/gamescommon/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/etermax/o;->app_name:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {v0, v2, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v2, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    iget-object v2, v2, Lcom/etermax/gamescommon/h/a/a;->b:Lcom/etermax/tools/social/a/b;

    iget-object v3, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/etermax/gamescommon/h/a/c$2;

    invoke-direct {v4, p0, p1}, Lcom/etermax/gamescommon/h/a/c$2;-><init>(Lcom/etermax/gamescommon/h/a/c;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/etermax/tools/social/a/b;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/tools/social/a/g;)V

    .line 449
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Landroid/widget/BaseAdapter;Lcom/etermax/gamescommon/j;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/etermax/o;->try_out:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v4}, Lcom/etermax/gamescommon/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Lcom/etermax/o;->app_name:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 365
    sget-object v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;->INVITING:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;

    invoke-interface {p2, v1}, Lcom/etermax/gamescommon/j;->setInvitationStatus(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$InvitationStatus;)V

    .line 366
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 368
    iget-object v1, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    iget-object v1, v1, Lcom/etermax/gamescommon/h/a/a;->b:Lcom/etermax/tools/social/a/b;

    iget-object v2, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lcom/etermax/gamescommon/j;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/etermax/gamescommon/h/a/c$1;

    invoke-direct {v4, p0, p2, p1}, Lcom/etermax/gamescommon/h/a/c$1;-><init>(Lcom/etermax/gamescommon/h/a/c;Lcom/etermax/gamescommon/j;Landroid/widget/BaseAdapter;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/etermax/tools/social/a/b;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Lcom/etermax/tools/social/a/g;)V

    .line 397
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/h/a/e;Lcom/etermax/gamescommon/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/etermax/gamescommon/h/a/c;->b:Lcom/etermax/gamescommon/h/a/a;

    invoke-static {v0, p1, p2}, Lcom/etermax/gamescommon/h/a/a;->a(Lcom/etermax/gamescommon/h/a/a;Lcom/etermax/gamescommon/h/a/e;Lcom/etermax/gamescommon/j;)V

    .line 358
    return-void
.end method
