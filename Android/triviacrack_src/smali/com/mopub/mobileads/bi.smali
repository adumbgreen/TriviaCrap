.class Lcom/mopub/mobileads/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:F

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/view/View$OnTouchListener;

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mopub/mobileads/bi;->a:Landroid/content/Context;

    .line 40
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mopub/mobileads/bi;->b:F

    .line 41
    const/16 v0, 0x11

    iput v0, p0, Lcom/mopub/mobileads/bi;->c:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/mobileads/bi;->i:I

    .line 45
    const/16 v0, 0x9

    iput v0, p0, Lcom/mopub/mobileads/bi;->j:I

    .line 46
    const/16 v0, 0xb

    iput v0, p0, Lcom/mopub/mobileads/bi;->k:I

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/bi;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/bi;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/mobileads/bi;)F
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/mopub/mobileads/bi;->b:F

    return v0
.end method

.method static synthetic c(Lcom/mopub/mobileads/bi;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/mopub/mobileads/bi;->c:I

    return v0
.end method

.method static synthetic d(Lcom/mopub/mobileads/bi;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/mopub/mobileads/bi;->i:I

    return v0
.end method

.method static synthetic e(Lcom/mopub/mobileads/bi;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/mopub/mobileads/bi;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/mopub/mobileads/bi;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/bi;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/mopub/mobileads/bi;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/mopub/mobileads/bi;->k:I

    return v0
.end method

.method static synthetic h(Lcom/mopub/mobileads/bi;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/mopub/mobileads/bi;->d:Z

    return v0
.end method

.method static synthetic i(Lcom/mopub/mobileads/bi;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/bi;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/mopub/mobileads/bi;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lcom/mopub/mobileads/bi;->j:I

    return v0
.end method

.method static synthetic k(Lcom/mopub/mobileads/bi;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mobileads/bi;->h:Landroid/view/View$OnTouchListener;

    return-object v0
.end method


# virtual methods
.method a()Lcom/mopub/mobileads/bi;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/bi;->d:Z

    .line 61
    return-object p0
.end method

.method a(F)Lcom/mopub/mobileads/bi;
    .locals 0
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/mopub/mobileads/bi;->b:F

    .line 51
    return-object p0
.end method

.method a(I)Lcom/mopub/mobileads/bi;
    .locals 0
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/mopub/mobileads/bi;->c:I

    .line 56
    return-object p0
.end method

.method a(Landroid/graphics/drawable/Drawable;)Lcom/mopub/mobileads/bi;
    .locals 1
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/bi;->f:Z

    .line 77
    iput-object p1, p0, Lcom/mopub/mobileads/bi;->g:Landroid/graphics/drawable/Drawable;

    .line 78
    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/mopub/mobileads/bi;
    .locals 1
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/bi;->d:Z

    .line 66
    iput-object p1, p0, Lcom/mopub/mobileads/bi;->e:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method b()Lcom/mopub/mobileads/bh;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/mopub/mobileads/bh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/bh;-><init>(Lcom/mopub/mobileads/bi;Lcom/mopub/mobileads/bh$1;)V

    return-object v0
.end method

.method b(I)Lcom/mopub/mobileads/bi;
    .locals 0
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/mopub/mobileads/bi;->j:I

    .line 83
    return-object p0
.end method

.method c(I)Lcom/mopub/mobileads/bi;
    .locals 0
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/mopub/mobileads/bi;->i:I

    .line 93
    return-object p0
.end method
