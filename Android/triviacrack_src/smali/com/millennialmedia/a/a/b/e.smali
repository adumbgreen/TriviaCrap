.class final Lcom/millennialmedia/a/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/reflect/WildcardType;


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    array-length v0, p2

    if-gt v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Z)V

    .line 627
    array-length v0, p1

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Z)V

    .line 629
    array-length v0, p2

    if-ne v0, v1, :cond_3

    .line 630
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->h(Ljava/lang/reflect/Type;)V

    .line 632
    aget-object v0, p1, v2

    const-class v3, Ljava/lang/Object;

    if-ne v0, v3, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/millennialmedia/a/a/b/a;->a(Z)V

    .line 633
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    .line 634
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/e;->a:Ljava/lang/reflect/Type;

    .line 642
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 626
    goto :goto_0

    :cond_1
    move v0, v2

    .line 627
    goto :goto_1

    :cond_2
    move v1, v2

    .line 632
    goto :goto_2

    .line 637
    :cond_3
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->h(Ljava/lang/reflect/Type;)V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    .line 640
    aget-object v0, p1, v2

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/e;->a:Ljava/lang/reflect/Type;

    goto :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 660
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/millennialmedia/a/a/b/b;->a:[Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 647
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/e;->a:Ljava/lang/reflect/Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/e;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/e;->b:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/millennialmedia/a/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    :goto_0
    return-object v0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/e;->a:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 679
    const-string v0, "?"

    goto :goto_0

    .line 681
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/e;->a:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/millennialmedia/a/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
