.class public abstract Lcom/etermax/gamescommon/gifting/c;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/etermax/gamescommon/gifting/e;

.field protected e:Lcom/etermax/gamescommon/social/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/gifting/c;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/etermax/gamescommon/gifting/c;->d()V

    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/etermax/gamescommon/gifting/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v3, v0, [Ljava/lang/String;

    move v1, v2

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_id()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 92
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int v1, v2, v0

    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_id()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/c;->e:Lcom/etermax/gamescommon/social/h;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/gifting/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/etermax/gamescommon/gifting/c;->c()Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;

    move-result-object v4

    new-instance v5, Lcom/etermax/gamescommon/gifting/c$3;

    invoke-direct {v5, p0}, Lcom/etermax/gamescommon/gifting/c$3;-><init>(Lcom/etermax/gamescommon/gifting/c;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/etermax/gamescommon/social/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;[Ljava/lang/String;Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;Lcom/etermax/gamescommon/social/i;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/util/List;)Landroid/widget/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;)",
            "Landroid/widget/BaseAdapter;"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public a(Lcom/etermax/gamescommon/gifting/e;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/c;->d:Lcom/etermax/gamescommon/gifting/e;

    .line 115
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract c()Lcom/etermax/gamescommon/gifting/dto/GiftItemDTO$GiftType;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/gifting/c;->setCancelable(Z)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/gifting/c;->b:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/gifting/c;->c:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 60
    sget v0, Lcom/etermax/k;->inactive_friends_dialog_fragment:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lcom/etermax/gamescommon/gifting/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p0}, Lcom/etermax/gamescommon/gifting/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 64
    sget v0, Lcom/etermax/i;->inactive_friends_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/gifting/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget v0, Lcom/etermax/i;->inactive_friends_listview:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/etermax/gamescommon/gifting/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/gifting/c;->a(Ljava/util/List;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    sget v0, Lcom/etermax/i;->inactive_friends_dialog_close_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomLinearButton;

    new-instance v2, Lcom/etermax/gamescommon/gifting/c$1;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/gifting/c$1;-><init>(Lcom/etermax/gamescommon/gifting/c;)V

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v0, Lcom/etermax/i;->inactive_friends_dialog_send_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/etermax/gamescommon/gifting/c$2;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/gifting/c$2;-><init>(Lcom/etermax/gamescommon/gifting/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-object v1
.end method
