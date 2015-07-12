.class public Lcom/etermax/gamescommon/menu/a/b/a;
.super Lcom/etermax/gamescommon/menu/a/b/i;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;

.field protected c:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

.field protected d:Landroid/view/View;

.field protected e:Landroid/widget/ViewSwitcher;

.field protected f:Landroid/widget/LinearLayout;

.field protected g:Landroid/view/View;

.field protected h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/menu/a/b/i;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/etermax/h;->navigation_panel_item_states:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/menu/a/b/a;->setBackgroundResource(I)V

    .line 46
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 50
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFb_show_name()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->c:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setUsername(Ljava/lang/String;)V

    .line 57
    :goto_0
    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getOnlineStatus()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/etermax/gamescommon/menu/a/b/a$3;->a:[I

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getOnlineStatus()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Status;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 71
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getLastText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :goto_2
    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUnreadCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUnreadCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_3
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->i:Lcom/etermax/gamescommon/menu/a/m;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/m;->a()Lcom/etermax/gamescommon/menu/a/a/a;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_4

    instance-of v2, v0, Lcom/etermax/gamescommon/menu/a/a/b;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/etermax/gamescommon/menu/a/a/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/b;->c()Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getUser()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getId()Ljava/lang/Long;

    move-result-object v2

    if-ne v0, v2, :cond_4

    .line 87
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->i:Lcom/etermax/gamescommon/menu/a/m;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/m;->a(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 93
    :goto_4
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->g:Landroid/view/View;

    new-instance v2, Lcom/etermax/gamescommon/menu/a/b/a$1;

    invoke-direct {v2, p0, v1}, Lcom/etermax/gamescommon/menu/a/b/a$1;-><init>(Lcom/etermax/gamescommon/menu/a/b/a;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->h:Landroid/view/View;

    new-instance v2, Lcom/etermax/gamescommon/menu/a/b/a$2;

    invoke-direct {v2, p0, v1}, Lcom/etermax/gamescommon/menu/a/b/a$2;-><init>(Lcom/etermax/gamescommon/menu/a/b/a;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->c:Lcom/etermax/tools/widget/UsernameCustomFontTextView;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/UsernameCustomFontTextView;->setUsername(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->d:Landroid/view/View;

    sget v2, Lcom/etermax/h;->user_status_connected:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->d:Landroid/view/View;

    sget v2, Lcom/etermax/h;->user_status_idle:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 66
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->d:Landroid/view/View;

    sget v2, Lcom/etermax/h;->user_status_disconnected:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/etermax/gamescommon/datasource/dto/ChatHeaderDTO;->getLastText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->f:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 58
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
    .line 120
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getUserIcon()Landroid/widget/ViewSwitcher;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/b/a;->e:Landroid/widget/ViewSwitcher;

    return-object v0
.end method
