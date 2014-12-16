.class public Lcom/etermax/preguntados/d/a;
.super Lcom/etermax/gamescommon/gifting/a;
.source "SourceFile"


# instance fields
.field protected f:Landroid/view/View;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/etermax/gamescommon/gifting/a;-><init>()V

    .line 33
    new-instance v0, Lcom/etermax/preguntados/d/a$1;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/d/a$1;-><init>(Lcom/etermax/preguntados/d/a;)V

    iput-object v0, p0, Lcom/etermax/preguntados/d/a;->g:Landroid/view/View$OnClickListener;

    .line 54
    new-instance v0, Lcom/etermax/preguntados/d/a$2;

    invoke-direct {v0, p0}, Lcom/etermax/preguntados/d/a$2;-><init>(Lcom/etermax/preguntados/d/a;)V

    iput-object v0, p0, Lcom/etermax/preguntados/d/a;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/d/a;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/preguntados/d/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method public static a()Lcom/etermax/preguntados/d/a;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/etermax/preguntados/d/b;

    invoke-direct {v0}, Lcom/etermax/preguntados/d/b;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/d/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/d/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/etermax/preguntados/a/b/b;

    invoke-direct {v0}, Lcom/etermax/preguntados/a/b/b;-><init>()V

    .line 78
    invoke-virtual {v0, p1}, Lcom/etermax/preguntados/a/b/b;->a(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/etermax/preguntados/d/a;->d:Lcom/etermax/tools/f/a;

    invoke-virtual {v1, v0}, Lcom/etermax/tools/f/a;->a(Lcom/etermax/tools/f/a/a;)V

    .line 80
    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/d/a;)Lcom/etermax/gamescommon/social/h;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/preguntados/d/a;->a:Lcom/etermax/gamescommon/social/h;

    return-object v0
.end method

.method static synthetic c(Lcom/etermax/preguntados/d/a;)Lcom/etermax/gamescommon/login/datasource/a;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/preguntados/d/a;->b:Lcom/etermax/gamescommon/login/datasource/a;

    return-object v0
.end method

.method static synthetic d(Lcom/etermax/preguntados/d/a;)Lcom/etermax/gamescommon/social/h;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/etermax/preguntados/d/a;->a:Lcom/etermax/gamescommon/social/h;

    return-object v0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/gifting/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 28
    sget v0, Lcom/etermax/i;->empty_inbox_dialog_accept_button_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/d/a;->f:Landroid/view/View;

    .line 29
    iget-object v0, p0, Lcom/etermax/preguntados/d/a;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/etermax/preguntados/d/a;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/d/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/etermax/preguntados/d/a;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
