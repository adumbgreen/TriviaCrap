.class public Lcom/etermax/gamescommon/i/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/i/b/a;

.field private b:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/i/b/a;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/d;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 705
    iput-object p2, p0, Lcom/etermax/gamescommon/i/b/d;->b:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    .line 706
    return-void
.end method

.method private b()Lcom/etermax/gamescommon/i/b/a;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/d;->a:Lcom/etermax/gamescommon/i/b/a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/d;->b:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 734
    if-ne p0, p1, :cond_1

    .line 750
    :cond_0
    :goto_0
    return v0

    .line 737
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 738
    goto :goto_0

    .line 740
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 741
    goto :goto_0

    .line 743
    :cond_3
    check-cast p1, Lcom/etermax/gamescommon/i/b/d;

    .line 744
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/d;->b()Lcom/etermax/gamescommon/i/b/a;

    move-result-object v2

    invoke-direct {p1}, Lcom/etermax/gamescommon/i/b/d;->b()Lcom/etermax/gamescommon/i/b/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/etermax/gamescommon/i/b/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 745
    goto :goto_0

    .line 747
    :cond_4
    iget-object v2, p0, Lcom/etermax/gamescommon/i/b/d;->b:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    iget-object v3, p1, Lcom/etermax/gamescommon/i/b/d;->b:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 748
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 725
    .line 727
    invoke-direct {p0}, Lcom/etermax/gamescommon/i/b/d;->b()Lcom/etermax/gamescommon/i/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/b/a;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 728
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/d;->b:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 729
    return v0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/d;->b:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 714
    sget-object v0, Lcom/etermax/gamescommon/i/b/a$5;->a:[I

    iget-object v1, p0, Lcom/etermax/gamescommon/i/b/d;->b:Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO$Gender;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 717
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/d;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->female:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 719
    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/d;->a:Lcom/etermax/gamescommon/i/b/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/i/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/o;->male:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
