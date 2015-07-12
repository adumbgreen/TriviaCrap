.class public Lcom/etermax/gamescommon/view/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lcom/etermax/gamescommon/language/Language;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/etermax/gamescommon/view/a;->d:I

    .line 31
    iput p2, p0, Lcom/etermax/gamescommon/view/a;->c:I

    .line 32
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/etermax/gamescommon/view/a;->d:I

    .line 36
    iput p2, p0, Lcom/etermax/gamescommon/view/a;->c:I

    .line 37
    iput p3, p0, Lcom/etermax/gamescommon/view/a;->f:I

    .line 38
    return-void
.end method

.method private b(Landroid/content/Context;Lcom/etermax/gamescommon/language/LanguageResourceMapper;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-static {p1}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/b;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 71
    invoke-virtual {p2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/language/Language;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/b;->n()Lcom/etermax/tools/nationality/Nationality;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/tools/nationality/Nationality;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v2, Lcom/etermax/gamescommon/language/Language;->PT:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 75
    sget-object v1, Lcom/etermax/tools/nationality/Nationality;->PT:Lcom/etermax/tools/nationality/Nationality;

    invoke-virtual {v1}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget v0, Lcom/etermax/h;->country_pt:I

    .line 88
    :goto_0
    return v0

    .line 78
    :cond_0
    sget v0, Lcom/etermax/h;->country_br:I

    goto :goto_0

    .line 80
    :cond_1
    sget-object v2, Lcom/etermax/gamescommon/language/Language;->EN:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 81
    sget-object v1, Lcom/etermax/tools/nationality/Nationality;->US:Lcom/etermax/tools/nationality/Nationality;

    invoke-virtual {v1}, Lcom/etermax/tools/nationality/Nationality;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 82
    sget v0, Lcom/etermax/h;->country_us:I

    goto :goto_0

    .line 84
    :cond_2
    sget v0, Lcom/etermax/h;->country_gb:I

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {p2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getFlagResource()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/etermax/gamescommon/language/LanguageResourceMapper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-virtual {p2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/view/a;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getCode()Lcom/etermax/gamescommon/language/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/view/a;->g:Lcom/etermax/gamescommon/language/Language;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/etermax/gamescommon/view/a;->b(Landroid/content/Context;Lcom/etermax/gamescommon/language/LanguageResourceMapper;)I

    move-result v0

    iput v0, p0, Lcom/etermax/gamescommon/view/a;->b:I

    .line 54
    invoke-virtual {p2}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getNameResource()I

    move-result v0

    iput v0, p0, Lcom/etermax/gamescommon/view/a;->e:I

    .line 55
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/etermax/gamescommon/view/a;->a:Ljava/lang/String;

    check-cast p1, Lcom/etermax/gamescommon/view/a;

    iget-object v1, p1, Lcom/etermax/gamescommon/view/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
