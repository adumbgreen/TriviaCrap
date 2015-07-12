.class Lcom/etermax/tools/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# instance fields
.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const/16 v0, -0x3e7

    sput v0, Lcom/etermax/tools/b/b;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    sget v0, Lcom/etermax/tools/b/b;->a:I

    invoke-direct {p0, p1, v0}, Lcom/etermax/tools/b/b;-><init>(Ljava/lang/Class;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Exception;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/etermax/tools/b/b;-><init>(Ljava/lang/Class;Ljava/lang/Class;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Exception;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/etermax/tools/b/b;->b:Ljava/lang/Class;

    .line 171
    iput-object p2, p0, Lcom/etermax/tools/b/b;->c:Ljava/lang/Class;

    .line 172
    iput p3, p0, Lcom/etermax/tools/b/b;->d:I

    .line 173
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 201
    if-ne p0, p1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 204
    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 206
    goto :goto_0

    .line 207
    :cond_3
    check-cast p1, Lcom/etermax/tools/b/b;

    .line 208
    iget-object v2, p0, Lcom/etermax/tools/b/b;->b:Ljava/lang/Class;

    if-nez v2, :cond_4

    .line 209
    iget-object v2, p1, Lcom/etermax/tools/b/b;->b:Ljava/lang/Class;

    if-eqz v2, :cond_5

    move v0, v1

    .line 210
    goto :goto_0

    .line 211
    :cond_4
    iget-object v2, p0, Lcom/etermax/tools/b/b;->b:Ljava/lang/Class;

    iget-object v3, p1, Lcom/etermax/tools/b/b;->b:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 212
    goto :goto_0

    .line 213
    :cond_5
    iget v2, p0, Lcom/etermax/tools/b/b;->d:I

    iget v3, p1, Lcom/etermax/tools/b/b;->d:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 214
    goto :goto_0

    .line 215
    :cond_6
    iget-object v2, p0, Lcom/etermax/tools/b/b;->c:Ljava/lang/Class;

    if-nez v2, :cond_7

    .line 216
    iget-object v2, p1, Lcom/etermax/tools/b/b;->c:Ljava/lang/Class;

    if-eqz v2, :cond_0

    move v0, v1

    .line 217
    goto :goto_0

    .line 218
    :cond_7
    iget-object v2, p0, Lcom/etermax/tools/b/b;->c:Ljava/lang/Class;

    iget-object v3, p1, Lcom/etermax/tools/b/b;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 219
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 190
    .line 192
    iget-object v0, p0, Lcom/etermax/tools/b/b;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 193
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/etermax/tools/b/b;->d:I

    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/etermax/tools/b/b;->c:Ljava/lang/Class;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 196
    return v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/b/b;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/etermax/tools/b/b;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method
