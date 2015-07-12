.class public Lcom/etermax/gamescommon/social/e;
.super Lcom/etermax/tools/widget/b/e;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/tools/social/a/b;

.field protected b:Lcom/etermax/gamescommon/login/datasource/a;

.field protected c:Lcom/etermax/tools/b/a;

.field protected d:Lcom/etermax/gamescommon/login/datasource/c;

.field protected e:Lcom/etermax/tools/f/a;

.field protected f:Lcom/etermax/gamescommon/social/a;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/e;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/etermax/gamescommon/social/e;
    .locals 3
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/etermax/gamescommon/social/f;

    invoke-direct {v0}, Lcom/etermax/gamescommon/social/f;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v2, "FROM"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/social/e;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e;->e:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e;->e:Lcom/etermax/tools/f/a;

    new-instance v1, Lcom/etermax/gamescommon/b/ab;

    invoke-direct {v1}, Lcom/etermax/gamescommon/b/ab;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 154
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/social/e;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/etermax/gamescommon/social/e;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e;->e:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e;->e:Lcom/etermax/tools/f/a;

    new-instance v1, Lcom/etermax/gamescommon/b/aa;

    invoke-direct {v1}, Lcom/etermax/gamescommon/b/aa;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 160
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/etermax/gamescommon/social/e;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/etermax/gamescommon/social/e;->a()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    .line 61
    sget v0, Lcom/etermax/k;->facebook_actions:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/social/e;->g:Landroid/view/View;

    .line 62
    invoke-virtual {p0, v4}, Lcom/etermax/gamescommon/social/e;->setCancelable(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/e;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e;->g:Landroid/view/View;

    sget v1, Lcom/etermax/i;->btnFacebookInvite:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/etermax/gamescommon/social/e$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/social/e$1;-><init>(Lcom/etermax/gamescommon/social/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e;->g:Landroid/view/View;

    sget v1, Lcom/etermax/i;->btnFacebookLike:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 112
    iget-object v1, p0, Lcom/etermax/gamescommon/social/e;->g:Landroid/view/View;

    sget v2, Lcom/etermax/i;->txtFbLike:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/etermax/tools/widget/CustomFontTextView;

    .line 113
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/etermax/o;->facebook_like:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/etermax/o;->app_name:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    new-instance v1, Lcom/etermax/gamescommon/social/e$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/social/e$2;-><init>(Lcom/etermax/gamescommon/social/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/etermax/gamescommon/social/e;->g:Landroid/view/View;

    sget v2, Lcom/etermax/i;->btnFacebookLink:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 126
    new-instance v2, Lcom/etermax/gamescommon/social/e$3;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/social/e$3;-><init>(Lcom/etermax/gamescommon/social/e;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v2, p0, Lcom/etermax/gamescommon/social/e;->b:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/etermax/gamescommon/social/e;->g:Landroid/view/View;

    sget v2, Lcom/etermax/i;->sepFacebookLink:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 140
    sget v1, Lcom/etermax/h;->social_item_background_top:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/social/e;->g:Landroid/view/View;

    return-object v0

    .line 142
    :cond_0
    sget v1, Lcom/etermax/h;->social_item_background:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method
