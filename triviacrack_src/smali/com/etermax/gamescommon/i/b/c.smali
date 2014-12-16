.class public Lcom/etermax/gamescommon/i/b/c;
.super Lcom/etermax/widget/a/a;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/tools/nationality/Nationality;

.field final synthetic b:Lcom/etermax/gamescommon/i/b/a;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/i/b/a;Lcom/etermax/tools/nationality/Nationality;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/c;->b:Lcom/etermax/gamescommon/i/b/a;

    .line 691
    invoke-direct {p0, p3}, Lcom/etermax/widget/a/a;-><init>(Ljava/lang/String;)V

    .line 692
    iput-object p2, p0, Lcom/etermax/gamescommon/i/b/c;->a:Lcom/etermax/tools/nationality/Nationality;

    .line 693
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/c;->a:Lcom/etermax/tools/nationality/Nationality;

    invoke-static {p1, v0}, Lcom/etermax/tools/nationality/NationalityManager;->getFlag(Landroid/content/Context;Lcom/etermax/tools/nationality/Nationality;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
