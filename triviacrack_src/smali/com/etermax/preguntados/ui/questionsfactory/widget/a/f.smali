.class public Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;
.super Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/preguntados/datasource/dto/enums/Country;


# direct methods
.method public constructor <init>(Lcom/etermax/preguntados/datasource/dto/enums/Country;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/d;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;->a:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    .line 15
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;->a:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-static {v0}, Lcom/etermax/preguntados/h/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/Country;)Lcom/etermax/preguntados/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/preguntados/h/a;->b()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;->a:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    invoke-static {v1}, Lcom/etermax/preguntados/h/a;->a(Lcom/etermax/preguntados/datasource/dto/enums/Country;)Lcom/etermax/preguntados/h/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/preguntados/h/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/enums/Country;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/widget/a/f;->a:Lcom/etermax/preguntados/datasource/dto/enums/Country;

    return-object v0
.end method
