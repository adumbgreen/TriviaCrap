.class abstract enum Lorg/b/e/b/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/b/e/b/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/b/e/b/e;

.field public static final enum b:Lorg/b/e/b/e;

.field public static final enum c:Lorg/b/e/b/e;

.field public static final enum d:Lorg/b/e/b/e;

.field public static final enum e:Lorg/b/e/b/e;

.field public static final enum f:Lorg/b/e/b/e;

.field public static final enum g:Lorg/b/e/b/e;

.field public static final enum h:Lorg/b/e/b/e;

.field public static final enum i:Lorg/b/e/b/e;

.field public static final enum j:Lorg/b/e/b/e;

.field private static final synthetic k:[Lorg/b/e/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 612
    new-instance v0, Lorg/b/e/b/e$1;

    const-string v1, "SCHEME"

    invoke-direct {v0, v1, v3}, Lorg/b/e/b/e$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/e/b/e;->a:Lorg/b/e/b/e;

    .line 618
    new-instance v0, Lorg/b/e/b/e$3;

    const-string v1, "AUTHORITY"

    invoke-direct {v0, v1, v4}, Lorg/b/e/b/e$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/e/b/e;->b:Lorg/b/e/b/e;

    .line 624
    new-instance v0, Lorg/b/e/b/e$4;

    const-string v1, "USER_INFO"

    invoke-direct {v0, v1, v5}, Lorg/b/e/b/e$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/e/b/e;->c:Lorg/b/e/b/e;

    .line 630
    new-instance v0, Lorg/b/e/b/e$5;

    const-string v1, "HOST"

    invoke-direct {v0, v1, v6}, Lorg/b/e/b/e$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/e/b/e;->d:Lorg/b/e/b/e;

    .line 636
    new-instance v0, Lorg/b/e/b/e$6;

    const-string v1, "PORT"

    invoke-direct {v0, v1, v7}, Lorg/b/e/b/e$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/e/b/e;->e:Lorg/b/e/b/e;

    .line 642
    new-instance v0, Lorg/b/e/b/e$7;

    const-string v1, "PATH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/b/e/b/e$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/e/b/e;->f:Lorg/b/e/b/e;

    .line 648
    new-instance v0, Lorg/b/e/b/e$8;

    const-string v1, "PATH_SEGMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/b/e/b/e$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/e/b/e;->g:Lorg/b/e/b/e;

    .line 654
    new-instance v0, Lorg/b/e/b/e$9;

    const-string v1, "QUERY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/b/e/b/e$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/e/b/e;->h:Lorg/b/e/b/e;

    .line 660
    new-instance v0, Lorg/b/e/b/e$10;

    const-string v1, "QUERY_PARAM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/b/e/b/e$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/e/b/e;->i:Lorg/b/e/b/e;

    .line 671
    new-instance v0, Lorg/b/e/b/e$2;

    const-string v1, "FRAGMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/b/e/b/e$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/b/e/b/e;->j:Lorg/b/e/b/e;

    .line 610
    const/16 v0, 0xa

    new-array v0, v0, [Lorg/b/e/b/e;

    sget-object v1, Lorg/b/e/b/e;->a:Lorg/b/e/b/e;

    aput-object v1, v0, v3

    sget-object v1, Lorg/b/e/b/e;->b:Lorg/b/e/b/e;

    aput-object v1, v0, v4

    sget-object v1, Lorg/b/e/b/e;->c:Lorg/b/e/b/e;

    aput-object v1, v0, v5

    sget-object v1, Lorg/b/e/b/e;->d:Lorg/b/e/b/e;

    aput-object v1, v0, v6

    sget-object v1, Lorg/b/e/b/e;->e:Lorg/b/e/b/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/b/e/b/e;->f:Lorg/b/e/b/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/b/e/b/e;->g:Lorg/b/e/b/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/b/e/b/e;->h:Lorg/b/e/b/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/b/e/b/e;->i:Lorg/b/e/b/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/b/e/b/e;->j:Lorg/b/e/b/e;

    aput-object v2, v0, v1

    sput-object v0, Lorg/b/e/b/e;->k:[Lorg/b/e/b/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 610
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/b/e/b/a$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    invoke-direct {p0, p1, p2}, Lorg/b/e/b/e;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/b/e/b/e;
    .locals 1
    .parameter

    .prologue
    .line 610
    const-class v0, Lorg/b/e/b/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/b/e/b/e;

    return-object v0
.end method

.method public static values()[Lorg/b/e/b/e;
    .locals 1

    .prologue
    .line 610
    sget-object v0, Lorg/b/e/b/e;->k:[Lorg/b/e/b/e;

    invoke-virtual {v0}, [Lorg/b/e/b/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/b/e/b/e;

    return-object v0
.end method


# virtual methods
.method public abstract a(I)Z
.end method

.method protected b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 692
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 701
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(I)Z
    .locals 1
    .parameter

    .prologue
    .line 719
    const/16 v0, 0x21

    if-eq v0, p1, :cond_0

    const/16 v0, 0x24

    if-eq v0, p1, :cond_0

    const/16 v0, 0x26

    if-eq v0, p1, :cond_0

    const/16 v0, 0x27

    if-eq v0, p1, :cond_0

    const/16 v0, 0x28

    if-eq v0, p1, :cond_0

    const/16 v0, 0x29

    if-eq v0, p1, :cond_0

    const/16 v0, 0x2a

    if-eq v0, p1, :cond_0

    const/16 v0, 0x2b

    if-eq v0, p1, :cond_0

    const/16 v0, 0x2c

    if-eq v0, p1, :cond_0

    const/16 v0, 0x3b

    if-eq v0, p1, :cond_0

    const/16 v0, 0x3d

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e(I)Z
    .locals 1
    .parameter

    .prologue
    .line 738
    invoke-virtual {p0, p1}, Lorg/b/e/b/e;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/b/e/b/e;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    if-eq v0, p1, :cond_0

    const/16 v0, 0x2e

    if-eq v0, p1, :cond_0

    const/16 v0, 0x5f

    if-eq v0, p1, :cond_0

    const/16 v0, 0x7e

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f(I)Z
    .locals 1
    .parameter

    .prologue
    .line 747
    invoke-virtual {p0, p1}, Lorg/b/e/b/e;->e(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/b/e/b/e;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3a

    if-eq v0, p1, :cond_0

    const/16 v0, 0x40

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
