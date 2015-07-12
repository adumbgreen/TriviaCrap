.class public Lcom/etermax/gamescommon/gifting/a;
.super Lcom/etermax/tools/widget/b/e;
.source "SourceFile"


# instance fields
.field protected a:Lcom/etermax/gamescommon/social/h;

.field protected b:Lcom/etermax/gamescommon/login/datasource/a;

.field protected c:Lcom/etermax/tools/social/a/b;

.field protected d:Lcom/etermax/tools/f/a;

.field protected e:Landroid/view/View;

.field private f:Landroid/widget/GridView;

.field private g:Lcom/etermax/tools/widget/CustomLinearButton;

.field private h:[Lcom/etermax/tools/social/a/c;

.field private i:Lcom/etermax/gamescommon/gifting/e;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/e;-><init>()V

    .line 147
    new-instance v0, Lcom/etermax/gamescommon/gifting/a$2;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/gifting/a$2;-><init>(Lcom/etermax/gamescommon/gifting/a;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/gifting/a;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/a;->c:Lcom/etermax/tools/social/a/b;

    const/16 v1, 0xa

    new-instance v2, Lcom/etermax/gamescommon/gifting/a$1;

    invoke-direct {v2, p0, p1}, Lcom/etermax/gamescommon/gifting/a$1;-><init>(Lcom/etermax/gamescommon/gifting/a;Landroid/view/View;)V

    invoke-virtual {v0, v1, p0, v2}, Lcom/etermax/tools/social/a/b;->a(ILandroid/support/v4/app/Fragment;Lcom/etermax/tools/social/a/h;)V

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/gifting/a;)[Lcom/etermax/tools/social/a/c;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/a;->h:[Lcom/etermax/tools/social/a/c;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/gifting/a;[Lcom/etermax/tools/social/a/c;)[Lcom/etermax/tools/social/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/a;->h:[Lcom/etermax/tools/social/a/c;

    return-object p1
.end method

.method static synthetic b(Lcom/etermax/gamescommon/gifting/a;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/a;->f:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/gifting/e;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/a;->i:Lcom/etermax/gamescommon/gifting/e;

    .line 156
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 63
    sget v0, Lcom/etermax/k;->empty_inbox_dialog_fragment:I

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 65
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    sget v0, Lcom/etermax/i;->friends_grid_view:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/etermax/gamescommon/gifting/a;->f:Landroid/widget/GridView;

    .line 70
    new-array v0, v2, [Lcom/etermax/tools/social/a/c;

    iput-object v0, p0, Lcom/etermax/gamescommon/gifting/a;->h:[Lcom/etermax/tools/social/a/c;

    .line 71
    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/gifting/a;->a(Landroid/view/View;)V

    .line 73
    sget v0, Lcom/etermax/i;->empty_inbox_dialog_close_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/CustomLinearButton;

    iput-object v0, p0, Lcom/etermax/gamescommon/gifting/a;->g:Lcom/etermax/tools/widget/CustomLinearButton;

    .line 74
    sget v0, Lcom/etermax/i;->empty_inbox_dialog_accept_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/gifting/a;->e:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/a;->g:Lcom/etermax/tools/widget/CustomLinearButton;

    iget-object v2, p0, Lcom/etermax/gamescommon/gifting/a;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/etermax/tools/widget/CustomLinearButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-object v1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Lcom/etermax/tools/widget/b/e;->onStop()V

    .line 161
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/a;->i:Lcom/etermax/gamescommon/gifting/e;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/gifting/e;->a(Z)V

    .line 162
    return-void
.end method
