.class public Lcom/etermax/gamescommon/menu/a/b/l;
.super Lcom/etermax/gamescommon/menu/a/b/i;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

.field protected b:Landroid/view/View;

.field protected c:Landroid/widget/ViewSwitcher;

.field protected d:Landroid/widget/LinearLayout;

.field protected e:Landroid/view/View;

.field protected f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/b/i;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/etermax/h;->navigation_panel_item_states:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/a/b/l;->setBackgroundResource(I)V

    .line 42
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFb_show_name()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->a:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setUsername(Ljava/lang/String;)V

    .line 51
    :goto_0
    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getOnlineStatus()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/etermax/gamescommon/menu/a/b/l$3;->a:[I

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getOnlineStatus()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->i:Lcom/etermax/gamescommon/menu/a/m;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/m;->a()Lcom/etermax/gamescommon/menu/a/a/a;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/etermax/gamescommon/menu/a/a/h;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/etermax/gamescommon/menu/a/a/h;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/h;->c()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->i:Lcom/etermax/gamescommon/menu/a/m;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/m;->a(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    :goto_2
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->e:Landroid/view/View;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/b/l$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/gamescommon/menu/a/b/l$1;-><init>(Lcom/etermax/gamescommon/menu/a/b/l;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->f:Landroid/view/View;

    new-instance v1, Lcom/etermax/gamescommon/menu/a/b/l$2;

    invoke-direct {v1, p0, p1}, Lcom/etermax/gamescommon/menu/a/b/l$2;-><init>(Lcom/etermax/gamescommon/menu/a/b/l;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->a:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setUsername(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->b:Landroid/view/View;

    sget v1, Lcom/etermax/h;->user_status_connected:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->b:Landroid/view/View;

    sget v1, Lcom/etermax/h;->user_status_idle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->b:Landroid/view/View;

    sget v1, Lcom/etermax/h;->user_status_disconnected:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getOptions()Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getUserIcon()Landroid/widget/ViewSwitcher;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/l;->c:Landroid/widget/ViewSwitcher;

    return-object v0
.end method
