.class public Lcom/etermax/tools/widget/ProfileProgressBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/RelativeLayout$LayoutParams;

.field protected b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/RelativeLayout;

.field e:Landroid/widget/RelativeLayout;

.field f:Landroid/widget/RelativeLayout;

.field g:I

.field h:I

.field i:I

.field j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->g:I

    .line 32
    iput v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->h:I

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->i:I

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->j:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->g:I

    .line 32
    iput v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->h:I

    .line 33
    const/16 v0, 0x64

    iput v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->i:I

    .line 34
    const/16 v0, 0xa

    iput v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->j:I

    .line 40
    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->a:Landroid/widget/RelativeLayout$LayoutParams;

    .line 86
    iget-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->a:Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 87
    iget-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/widget/ProfileProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/etermax/tools/widget/ProfileProgressBar;->c()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/widget/ProfileProgressBar;Landroid/widget/RelativeLayout;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/etermax/tools/widget/ProfileProgressBar;->a(Landroid/widget/RelativeLayout;I)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->a:Landroid/widget/RelativeLayout$LayoutParams;

    .line 93
    iget-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->a:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 94
    iget-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->d:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->a:Landroid/widget/RelativeLayout$LayoutParams;

    .line 97
    iget-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->a:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 98
    iget-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->b:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->c:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/etermax/tools/widget/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/etermax/tools/widget/b;-><init>(Lcom/etermax/tools/widget/ProfileProgressBar;Lcom/etermax/tools/widget/ProfileProgressBar$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    return-void
.end method

.method public setCycles(I)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput p1, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->i:I

    .line 66
    return-void
.end method

.method public setLoses(I)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput p1, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->h:I

    .line 78
    return-void
.end method

.method public setSleepTime(I)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->j:I

    .line 70
    return-void
.end method

.method public setWins(I)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/etermax/tools/widget/ProfileProgressBar;->g:I

    .line 74
    return-void
.end method
