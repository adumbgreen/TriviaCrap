.class public Lcom/etermax/preguntados/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/etermax/preguntados/e/e;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/e/e;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/etermax/preguntados/e/b;->a:Lcom/etermax/preguntados/e/e;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/etermax/preguntados/e/b;->b:Landroid/graphics/Bitmap;

    .line 29
    return-void
.end method

.method public a(Lcom/etermax/preguntados/e/e;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/etermax/preguntados/e/b;->a:Lcom/etermax/preguntados/e/e;

    .line 21
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/etermax/preguntados/e/b;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
