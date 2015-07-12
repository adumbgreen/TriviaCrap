.class public Lcom/etermax/preguntados/ui/rankings/c;
.super Lcom/etermax/tools/widget/b/e;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/tools/widget/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/e;-><init>()V

    return-void
.end method

.method public static a()Lcom/etermax/preguntados/ui/rankings/c;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/etermax/preguntados/ui/rankings/c;

    invoke-direct {v0}, Lcom/etermax/preguntados/ui/rankings/c;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/ui/rankings/c;)Lcom/etermax/tools/widget/b/b;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/c;->a:Lcom/etermax/tools/widget/b/b;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 26
    sget v0, Lcom/etermax/k;->rankings_invite_cancel_dialog:I

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 28
    sget v0, Lcom/etermax/o;->not_enough_friends:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/c;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/etermax/o;->weekly_ranking:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/etermax/preguntados/ui/rankings/c;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 29
    sget v0, Lcom/etermax/i;->message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/c;->a:Lcom/etermax/tools/widget/b/b;

    .line 32
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/widget/b/b;

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/b/b;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/c;->a:Lcom/etermax/tools/widget/b/b;

    .line 38
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/c;->a:Lcom/etermax/tools/widget/b/b;

    if-eqz v0, :cond_1

    .line 39
    sget v0, Lcom/etermax/i;->accept_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/etermax/preguntados/ui/rankings/c$1;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/rankings/c$1;-><init>(Lcom/etermax/preguntados/ui/rankings/c;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    sget v0, Lcom/etermax/i;->cancel_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/etermax/preguntados/ui/rankings/c$2;

    invoke-direct {v2, p0}, Lcom/etermax/preguntados/ui/rankings/c$2;-><init>(Lcom/etermax/preguntados/ui/rankings/c;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :cond_1
    invoke-virtual {p0, v6}, Lcom/etermax/preguntados/ui/rankings/c;->setCancelable(Z)V

    .line 58
    return-object v1

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/c;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/c;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/etermax/tools/widget/b/b;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/c;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/b/b;

    iput-object v0, p0, Lcom/etermax/preguntados/ui/rankings/c;->a:Lcom/etermax/tools/widget/b/b;

    goto :goto_0
.end method
