.class public abstract Lcom/etermax/gamescommon/gifting/d;
.super Lcom/etermax/tools/widget/b/e;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/gamescommon/login/datasource/a;

.field protected b:Lcom/etermax/gamescommon/datasource/e;

.field protected c:Lcom/etermax/tools/social/a/b;

.field protected d:Lcom/etermax/gamescommon/social/h;

.field protected e:Lcom/etermax/tools/f/a;

.field protected f:Landroid/widget/ListView;

.field protected g:Landroid/widget/BaseAdapter;

.field protected h:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

.field protected i:Lcom/etermax/tools/widget/CustomLinearButton;

.field protected j:Landroid/widget/Button;

.field protected k:Z

.field protected l:Lcom/etermax/gamescommon/gifting/e;

.field protected m:Lcom/etermax/gamescommon/gifting/f;

.field protected n:I

.field protected o:I

.field private p:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/e;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/gifting/d;->k:Z

    .line 167
    new-instance v0, Lcom/etermax/gamescommon/gifting/d$5;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/gifting/d$5;-><init>(Lcom/etermax/gamescommon/gifting/d;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/gifting/d;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/etermax/gamescommon/gifting/d;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->d:Lcom/etermax/gamescommon/social/h;

    const/4 v1, 0x0

    new-instance v2, Lcom/etermax/gamescommon/gifting/d$2;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/gifting/d$2;-><init>(Lcom/etermax/gamescommon/gifting/d;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/etermax/gamescommon/social/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Long;Lcom/etermax/gamescommon/social/i;)V

    .line 119
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/gifting/d;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/etermax/gamescommon/gifting/d;->c()V

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 126
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->h:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;->getAsks()[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_2

    iget v0, p0, Lcom/etermax/gamescommon/gifting/d;->o:I

    if-lez v0, :cond_2

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 130
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->getState()Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    move-result-object v2

    sget-object v3, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;->READ:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$GiftState;

    if-eq v2, v3, :cond_0

    .line 131
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->getSender()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/etermax/gamescommon/gifting/d;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/etermax/o;->user_sent_ticket:I

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/gifting/d;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->d:Lcom/etermax/gamescommon/social/h;

    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v5, Lcom/etermax/gamescommon/gifting/d$3;

    invoke-direct {v5, p0, v1}, Lcom/etermax/gamescommon/gifting/d$3;-><init>(Lcom/etermax/gamescommon/gifting/d;[Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/etermax/gamescommon/social/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/Long;[Ljava/lang/String;Lcom/etermax/gamescommon/social/i;)V

    .line 156
    :goto_1
    return-void

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/gamescommon/gifting/d;->a()V

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/etermax/gamescommon/gifting/d$4;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/gifting/d$4;-><init>(Lcom/etermax/gamescommon/gifting/d;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/d;->h:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    .line 92
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/gifting/e;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/d;->l:Lcom/etermax/gamescommon/gifting/e;

    .line 177
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/gifting/f;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/d;->m:Lcom/etermax/gamescommon/gifting/f;

    .line 181
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 66
    sget v0, Lcom/etermax/k;->inbox_dialog_fragment:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    sget v0, Lcom/etermax/i;->inbox_dialog_close_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomLinearButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->i:Lcom/etermax/tools/widget/CustomLinearButton;

    .line 69
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->i:Lcom/etermax/tools/widget/CustomLinearButton;

    iget-object v2, p0, Lcom/etermax/gamescommon/gifting/d;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget v0, Lcom/etermax/i;->inbox_dialog_accept_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->j:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->j:Landroid/widget/Button;

    new-instance v2, Lcom/etermax/gamescommon/gifting/d$1;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/gifting/d$1;-><init>(Lcom/etermax/gamescommon/gifting/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Lcom/etermax/i;->inbox_dialog_items:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->f:Landroid/widget/ListView;

    .line 82
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAnimationCacheEnabled(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/etermax/gamescommon/gifting/d;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/b/e;->onDismiss(Landroid/content/DialogInterface;)V

    .line 186
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/etermax/tools/widget/b/e;->onStop()V

    .line 191
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->m:Lcom/etermax/gamescommon/gifting/f;

    iget-boolean v1, p0, Lcom/etermax/gamescommon/gifting/d;->k:Z

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/gifting/f;->a(Z)V

    .line 192
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/d;->l:Lcom/etermax/gamescommon/gifting/e;

    iget-boolean v1, p0, Lcom/etermax/gamescommon/gifting/d;->k:Z

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/gifting/e;->a(Z)V

    .line 193
    return-void
.end method
