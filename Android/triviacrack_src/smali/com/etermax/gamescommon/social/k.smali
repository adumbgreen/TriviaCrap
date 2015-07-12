.class public Lcom/etermax/gamescommon/social/k;
.super Lcom/etermax/tools/widget/b/e;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/tools/b/a;

.field b:Lcom/etermax/tools/social/twitter/a;

.field c:Lcom/etermax/gamescommon/login/datasource/a;

.field d:Lcom/etermax/tools/f/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/e;-><init>()V

    return-void
.end method

.method public static a()Lcom/etermax/gamescommon/social/k;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/etermax/gamescommon/social/l;

    invoke-direct {v0}, Lcom/etermax/gamescommon/social/l;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/social/k;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/etermax/gamescommon/social/k;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/etermax/gamescommon/social/k;->d:Lcom/etermax/tools/f/a;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/etermax/gamescommon/social/k;->d:Lcom/etermax/tools/f/a;

    new-instance v1, Lcom/etermax/gamescommon/b/r;

    invoke-direct {v1}, Lcom/etermax/gamescommon/b/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 43
    sget v0, Lcom/etermax/k;->twitter_actions:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 44
    invoke-virtual {p0, v4}, Lcom/etermax/gamescommon/social/k;->setCancelable(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/etermax/gamescommon/social/k;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 47
    sget v0, Lcom/etermax/i;->btnTwitterInvite:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/etermax/gamescommon/social/k$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/social/k$1;-><init>(Lcom/etermax/gamescommon/social/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    sget v0, Lcom/etermax/i;->btnTwitterFollow:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 79
    sget v1, Lcom/etermax/i;->txtTwFollow:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/etermax/tools/widget/CustomFontTextView;

    .line 80
    sget v3, Lcom/etermax/o;->twitter_follow:I

    invoke-virtual {p0, v3}, Lcom/etermax/gamescommon/social/k;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/etermax/o;->twitter_account_name:I

    invoke-virtual {p0, v6}, Lcom/etermax/gamescommon/social/k;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/etermax/tools/widget/CustomFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v1, Lcom/etermax/gamescommon/social/k$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/social/k$2;-><init>(Lcom/etermax/gamescommon/social/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-object v2
.end method
