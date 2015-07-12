.class public Lcom/etermax/preguntados/d/h;
.super Lcom/etermax/gamescommon/gifting/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/gamescommon/gifting/d;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/d/h;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/etermax/preguntados/d/h;->n:I

    return p1
.end method

.method static synthetic a(Lcom/etermax/preguntados/d/h;)Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/preguntados/d/h;->h:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/preguntados/d/h;Lcom/etermax/preguntados/d/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/d/h;->a(Lcom/etermax/preguntados/d/j;)V

    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/d/h;Lcom/etermax/preguntados/d/j;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/d/h;->a(Lcom/etermax/preguntados/d/j;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V

    return-void
.end method

.method private a(Lcom/etermax/preguntados/d/j;)V
    .locals 2
    .parameter

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p1, Lcom/etermax/preguntados/d/j;->f:Lcom/etermax/tools/widget/CustomFontButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setVisibility(I)V

    .line 218
    iget-object v0, p1, Lcom/etermax/preguntados/d/j;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    :cond_0
    return-void
.end method

.method private a(Lcom/etermax/preguntados/d/j;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/etermax/preguntados/d/h;->d:Lcom/etermax/gamescommon/social/h;

    invoke-virtual {p2}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/etermax/preguntados/d/h$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/etermax/preguntados/d/h$1;-><init>(Lcom/etermax/preguntados/d/h;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;Lcom/etermax/preguntados/d/j;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/etermax/gamescommon/social/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Long;Lcom/etermax/gamescommon/social/i;)V

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/etermax/preguntados/d/h;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/etermax/preguntados/d/h;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/etermax/preguntados/d/h;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/etermax/preguntados/d/h;->n:I

    return p1
.end method

.method static synthetic b(Lcom/etermax/preguntados/d/h;)Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/preguntados/d/h;->h:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    return-object v0
.end method

.method public static b()Lcom/etermax/preguntados/d/h;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/etermax/preguntados/d/k;

    invoke-direct {v0}, Lcom/etermax/preguntados/d/k;-><init>()V

    return-object v0
.end method

.method static synthetic b(Lcom/etermax/preguntados/d/h;Lcom/etermax/preguntados/d/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/d/h;->b(Lcom/etermax/preguntados/d/j;)V

    return-void
.end method

.method static synthetic b(Lcom/etermax/preguntados/d/h;Lcom/etermax/preguntados/d/j;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/etermax/preguntados/d/h;->b(Lcom/etermax/preguntados/d/j;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V

    return-void
.end method

.method private b(Lcom/etermax/preguntados/d/j;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    iget-object v0, p1, Lcom/etermax/preguntados/d/j;->f:Lcom/etermax/tools/widget/CustomFontButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/CustomFontButton;->setVisibility(I)V

    .line 226
    iget-object v0, p1, Lcom/etermax/preguntados/d/j;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :cond_0
    return-void
.end method

.method private b(Lcom/etermax/preguntados/d/j;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->getSender()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebook_id()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/etermax/preguntados/d/h;->a:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/etermax/o;->user_sent_ticket:I

    invoke-virtual {p0, v1}, Lcom/etermax/preguntados/d/h;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    iget-object v0, p0, Lcom/etermax/preguntados/d/h;->d:Lcom/etermax/gamescommon/social/h;

    invoke-virtual {p2}, Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v5, Lcom/etermax/preguntados/d/h$2;

    invoke-direct {v5, p0, p2, p1}, Lcom/etermax/preguntados/d/h$2;-><init>(Lcom/etermax/preguntados/d/h;Lcom/etermax/gamescommon/gifting/dto/GiftsDTO$Gift;Lcom/etermax/preguntados/d/j;)V

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/etermax/gamescommon/social/h;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/Long;[Ljava/lang/String;Lcom/etermax/gamescommon/social/i;)V

    .line 213
    return-void
.end method

.method static synthetic c(Lcom/etermax/preguntados/d/h;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/etermax/preguntados/d/h;->o:I

    return p1
.end method

.method static synthetic c(Lcom/etermax/preguntados/d/h;)Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/preguntados/d/h;->h:Lcom/etermax/gamescommon/gifting/dto/GiftsDTO;

    return-object v0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 166
    iget v0, p0, Lcom/etermax/preguntados/d/h;->n:I

    iget v1, p0, Lcom/etermax/preguntados/d/h;->o:I

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/etermax/preguntados/d/h;)I
    .locals 2
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/etermax/preguntados/d/h;->n:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/etermax/preguntados/d/h;->n:I

    return v0
.end method

.method static synthetic d(Lcom/etermax/preguntados/d/h;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lcom/etermax/preguntados/d/h;->o:I

    return p1
.end method

.method static synthetic e(Lcom/etermax/preguntados/d/h;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/etermax/preguntados/d/h;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/etermax/preguntados/d/h;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/etermax/preguntados/d/h;->a()V

    return-void
.end method

.method static synthetic g(Lcom/etermax/preguntados/d/h;)I
    .locals 2
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/etermax/preguntados/d/h;->o:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/etermax/preguntados/d/h;->o:I

    return v0
.end method

.method static synthetic h(Lcom/etermax/preguntados/d/h;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/etermax/preguntados/d/h;->a()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/gifting/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/etermax/preguntados/d/i;

    invoke-direct {v1, p0}, Lcom/etermax/preguntados/d/i;-><init>(Lcom/etermax/preguntados/d/h;)V

    iput-object v1, p0, Lcom/etermax/preguntados/d/h;->g:Landroid/widget/BaseAdapter;

    .line 35
    iget-object v1, p0, Lcom/etermax/preguntados/d/h;->f:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/etermax/preguntados/d/h;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    return-object v0
.end method
