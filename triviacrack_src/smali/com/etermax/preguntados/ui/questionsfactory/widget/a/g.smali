.class public Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;
.super Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/gamescommon/language/Language;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/language/Language;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;->a:Lcom/etermax/gamescommon/language/Language;

    .line 16
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;->a:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getByString(Ljava/lang/String;)Lcom/etermax/gamescommon/language/LanguageResourceMapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/language/LanguageResourceMapper;->getNameResource()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;->a:Lcom/etermax/gamescommon/language/Language;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/language/Language;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->a(Ljava/lang/String;)Lcom/etermax/preguntados/ui/questionsfactory/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/ui/questionsfactory/a/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/etermax/gamescommon/language/Language;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/g;->a:Lcom/etermax/gamescommon/language/Language;

    return-object v0
.end method
