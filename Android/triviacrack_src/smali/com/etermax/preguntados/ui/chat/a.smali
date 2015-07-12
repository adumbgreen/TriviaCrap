.class public Lcom/etermax/preguntados/ui/chat/a;
.super Lcom/etermax/chat/ui/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/d/a/b;
.implements Lcom/etermax/gamescommon/menu/a/e;
.implements Lcom/etermax/tools/widget/b/b;


# instance fields
.field j:Lcom/etermax/chat/a/a;

.field k:Lcom/etermax/gamescommon/datasource/a;

.field l:Lcom/etermax/tools/f/a;

.field m:Lcom/etermax/gamescommon/datasource/e;

.field n:Lcom/etermax/gamescommon/menu/a/d;

.field private o:Lcom/etermax/gamescommon/d/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/etermax/chat/ui/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/chat/a;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a;->j()V

    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 225
    new-instance v0, Lcom/etermax/preguntados/ui/chat/a$4;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/chat/a$4;-><init>(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/chat/a$4;->a(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 257
    new-instance v0, Lcom/etermax/preguntados/ui/chat/a$5;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/chat/a$5;-><init>(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/chat/a$5;->a(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method private o()V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/etermax/preguntados/ui/chat/a$6;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/ui/chat/a$6;-><init>(Lcom/etermax/preguntados/ui/chat/a;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/chat/a$6;->a(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/etermax/preguntados/ui/chat/a$2;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/chat/a$2;-><init>(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/chat/a$2;->a(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    return-void
.end method

.method public b_()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/a;->o:Lcom/etermax/gamescommon/d/a/a;

    .line 154
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    const-string v1, "action"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    sget v1, Lcom/etermax/o;->are_you_sure_block:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/chat/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->yes:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->no:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 138
    invoke-virtual {v0, p0, v4}, Lcom/etermax/tools/widget/b/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 139
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "block_dialog_tag"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public c_()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 158
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 159
    const-string v1, "action"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    sget v1, Lcom/etermax/o;->are_you_sure_unfriend:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/etermax/preguntados/ui/chat/a;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->yes:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->no:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p0, v4}, Lcom/etermax/tools/widget/b/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 162
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "unfriend_dialog_tag"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public d_()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/etermax/preguntados/ui/chat/a$3;

    sget v1, Lcom/etermax/o;->loading:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/etermax/preguntados/ui/chat/a$3;-><init>(Lcom/etermax/preguntados/ui/chat/a;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/etermax/preguntados/ui/chat/a$3;->a(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    const-string v1, "action"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    sget v1, Lcom/etermax/o;->are_you_sure_delete_chat:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/etermax/o;->yes:I

    invoke-virtual {p0, v2}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->no:I

    invoke-virtual {p0, v3}, Lcom/etermax/preguntados/ui/chat/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/etermax/tools/widget/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/etermax/tools/widget/b/a;

    move-result-object v0

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/etermax/tools/widget/b/a;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 148
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "block_dialog_tag"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public i()V
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a;->n:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->b(J)I

    move-result v0

    .line 343
    const-string v1, "PLAYCHAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnUnreadConversationsUpdated unreadConversations:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/etermax/preguntados/ui/chat/a;->g:Lcom/etermax/chat/ui/b;

    invoke-interface {v1, v0}, Lcom/etermax/chat/ui/b;->b(I)V

    .line 347
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a;->o:Lcom/etermax/gamescommon/d/a/a;

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->c()Z

    move-result v0

    invoke-static {}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->d()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/d/a/a;->a(ZZ)Lcom/etermax/gamescommon/d/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/a;->o:Lcom/etermax/gamescommon/d/a/a;

    .line 92
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a;->o:Lcom/etermax/gamescommon/d/a/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/chat/a;->l:Lcom/etermax/tools/f/a;

    invoke-virtual {v0, p0, v1}, Lcom/etermax/gamescommon/d/a/a;->a(Lcom/etermax/gamescommon/d/a/b;Lcom/etermax/tools/f/a;)V

    .line 93
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 94
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a;->o:Lcom/etermax/gamescommon/d/a/a;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "OPTIONS_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/d/a/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a;->n:Lcom/etermax/gamescommon/menu/a/d;

    invoke-static {}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/menu/a/d;->b(J)I

    move-result v0

    .line 337
    iget-object v1, p0, Lcom/etermax/preguntados/ui/chat/a;->g:Lcom/etermax/chat/ui/b;

    invoke-interface {v1, v0}, Lcom/etermax/chat/ui/b;->b(I)V

    .line 338
    return-void
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 217
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 207
    :pswitch_1
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/chat/a;->m()V

    goto :goto_0

    .line 210
    :pswitch_2
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/chat/a;->n()V

    goto :goto_0

    .line 213
    :pswitch_3
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/chat/a;->o()V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/etermax/chat/ui/a;->onAttach(Landroid/app/Activity;)V

    .line 328
    :try_start_0
    check-cast p1, Lcom/etermax/chat/ui/b;

    iput-object p1, p0, Lcom/etermax/preguntados/ui/chat/a;->g:Lcom/etermax/chat/ui/b;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/chat/ui/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 61
    sget v0, Lcom/etermax/i;->btn_left:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v2, Lcom/etermax/preguntados/ui/chat/a$1;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/chat/a$1;-><init>(Lcom/etermax/preguntados/ui/chat/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a;->l()V

    .line 70
    return-object v1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a;->n:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/d;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a;->n:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/d;->a(Lcom/etermax/gamescommon/menu/a/e;)V

    .line 78
    invoke-super {p0}, Lcom/etermax/chat/ui/a;->onStart()V

    .line 79
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a;->n:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/menu/a/d;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 84
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/a;->n:Lcom/etermax/gamescommon/menu/a/d;

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/menu/a/d;->b(Lcom/etermax/gamescommon/menu/a/e;)V

    .line 85
    invoke-super {p0}, Lcom/etermax/chat/ui/a;->onStop()V

    .line 86
    return-void
.end method
