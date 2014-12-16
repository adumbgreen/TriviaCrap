.class public Lcom/etermax/preguntados/ui/dashboard/b/a;
.super Lcom/etermax/widget/a/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/etermax/tools/nationality/Nationality;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/etermax/tools/nationality/Nationality;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/etermax/widget/a/a;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcom/etermax/preguntados/ui/dashboard/b/a;->a:Lcom/etermax/tools/nationality/Nationality;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/b/a;->a:Lcom/etermax/tools/nationality/Nationality;

    invoke-static {p1, v0}, Lcom/etermax/tools/nationality/NationalityManager;->getFlag(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/etermax/tools/nationality/Nationality;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/b/a;->a:Lcom/etermax/tools/nationality/Nationality;

    return-object v0
.end method
