.class public final enum Lcom/etermax/preguntados/c/a/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/preguntados/c/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/preguntados/c/a/d;",
        ">;",
        "Lcom/etermax/preguntados/c/a/f;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/preguntados/c/a/d;

.field public static final enum b:Lcom/etermax/preguntados/c/a/d;

.field public static final enum c:Lcom/etermax/preguntados/c/a/d;

.field public static final enum d:Lcom/etermax/preguntados/c/a/d;

.field public static final enum e:Lcom/etermax/preguntados/c/a/d;

.field public static final enum f:Lcom/etermax/preguntados/c/a/d;

.field private static final synthetic m:[Lcom/etermax/preguntados/c/a/d;


# instance fields
.field private final g:I

.field private final h:I

.field private final i:Lcom/etermax/preguntados/b/d;

.field private final j:I

.field private final k:I

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/etermax/preguntados/c/a/d;

    const-string v1, "ENTERTAINMENT"

    sget v3, Lcom/etermax/h;->character_entertainment:I

    sget-object v4, Lcom/etermax/preguntados/b/d;->d:Lcom/etermax/preguntados/b/d;

    sget v5, Lcom/etermax/h;->character_ent_select:I

    sget v6, Lcom/etermax/h;->crown_entertainment:I

    sget v7, Lcom/etermax/h;->crown_entertainment_disability:I

    sget v8, Lcom/etermax/h;->re_spin_ent:I

    invoke-direct/range {v0 .. v8}, Lcom/etermax/preguntados/c/a/d;-><init>(Ljava/lang/String;IILcom/etermax/preguntados/b/d;IIII)V

    sput-object v0, Lcom/etermax/preguntados/c/a/d;->a:Lcom/etermax/preguntados/c/a/d;

    .line 11
    new-instance v3, Lcom/etermax/preguntados/c/a/d;

    const-string v4, "ARTS"

    sget v6, Lcom/etermax/h;->character_arts:I

    sget-object v7, Lcom/etermax/preguntados/b/d;->b:Lcom/etermax/preguntados/b/d;

    sget v8, Lcom/etermax/h;->character_art_select:I

    sget v9, Lcom/etermax/h;->crown_arts:I

    sget v10, Lcom/etermax/h;->crown_arts_disability:I

    sget v11, Lcom/etermax/h;->re_spin_art:I

    move v5, v12

    invoke-direct/range {v3 .. v11}, Lcom/etermax/preguntados/c/a/d;-><init>(Ljava/lang/String;IILcom/etermax/preguntados/b/d;IIII)V

    sput-object v3, Lcom/etermax/preguntados/c/a/d;->b:Lcom/etermax/preguntados/c/a/d;

    .line 12
    new-instance v3, Lcom/etermax/preguntados/c/a/d;

    const-string v4, "SPORTS"

    sget v6, Lcom/etermax/h;->character_sports:I

    sget-object v7, Lcom/etermax/preguntados/b/d;->c:Lcom/etermax/preguntados/b/d;

    sget v8, Lcom/etermax/h;->character_spo_select:I

    sget v9, Lcom/etermax/h;->crown_sports:I

    sget v10, Lcom/etermax/h;->crown_sports_disability:I

    sget v11, Lcom/etermax/h;->re_spin_spo:I

    move v5, v13

    invoke-direct/range {v3 .. v11}, Lcom/etermax/preguntados/c/a/d;-><init>(Ljava/lang/String;IILcom/etermax/preguntados/b/d;IIII)V

    sput-object v3, Lcom/etermax/preguntados/c/a/d;->c:Lcom/etermax/preguntados/c/a/d;

    .line 13
    new-instance v3, Lcom/etermax/preguntados/c/a/d;

    const-string v4, "HISTORY"

    sget v6, Lcom/etermax/h;->character_history:I

    sget-object v7, Lcom/etermax/preguntados/b/d;->e:Lcom/etermax/preguntados/b/d;

    sget v8, Lcom/etermax/h;->character_his_select:I

    sget v9, Lcom/etermax/h;->crown_history:I

    sget v10, Lcom/etermax/h;->crown_history_disability:I

    sget v11, Lcom/etermax/h;->re_spin_his:I

    move v5, v14

    invoke-direct/range {v3 .. v11}, Lcom/etermax/preguntados/c/a/d;-><init>(Ljava/lang/String;IILcom/etermax/preguntados/b/d;IIII)V

    sput-object v3, Lcom/etermax/preguntados/c/a/d;->d:Lcom/etermax/preguntados/c/a/d;

    .line 14
    new-instance v3, Lcom/etermax/preguntados/c/a/d;

    const-string v4, "SCIENCE"

    sget v6, Lcom/etermax/h;->character_science:I

    sget-object v7, Lcom/etermax/preguntados/b/d;->a:Lcom/etermax/preguntados/b/d;

    sget v8, Lcom/etermax/h;->character_sci_select:I

    sget v9, Lcom/etermax/h;->crown_science:I

    sget v10, Lcom/etermax/h;->crown_science_disability:I

    sget v11, Lcom/etermax/h;->re_spin_sci:I

    move v5, v15

    invoke-direct/range {v3 .. v11}, Lcom/etermax/preguntados/c/a/d;-><init>(Ljava/lang/String;IILcom/etermax/preguntados/b/d;IIII)V

    sput-object v3, Lcom/etermax/preguntados/c/a/d;->e:Lcom/etermax/preguntados/c/a/d;

    .line 15
    new-instance v3, Lcom/etermax/preguntados/c/a/d;

    const-string v4, "GEOGRAPHY"

    const/4 v5, 0x5

    sget v6, Lcom/etermax/h;->character_geography:I

    sget-object v7, Lcom/etermax/preguntados/b/d;->f:Lcom/etermax/preguntados/b/d;

    sget v8, Lcom/etermax/h;->character_geo_select:I

    sget v9, Lcom/etermax/h;->crown_geography:I

    sget v10, Lcom/etermax/h;->crown_geography_disability:I

    sget v11, Lcom/etermax/h;->re_spin_geo:I

    invoke-direct/range {v3 .. v11}, Lcom/etermax/preguntados/c/a/d;-><init>(Ljava/lang/String;IILcom/etermax/preguntados/b/d;IIII)V

    sput-object v3, Lcom/etermax/preguntados/c/a/d;->f:Lcom/etermax/preguntados/c/a/d;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/etermax/preguntados/c/a/d;

    sget-object v1, Lcom/etermax/preguntados/c/a/d;->a:Lcom/etermax/preguntados/c/a/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/preguntados/c/a/d;->b:Lcom/etermax/preguntados/c/a/d;

    aput-object v1, v0, v12

    sget-object v1, Lcom/etermax/preguntados/c/a/d;->c:Lcom/etermax/preguntados/c/a/d;

    aput-object v1, v0, v13

    sget-object v1, Lcom/etermax/preguntados/c/a/d;->d:Lcom/etermax/preguntados/c/a/d;

    aput-object v1, v0, v14

    sget-object v1, Lcom/etermax/preguntados/c/a/d;->e:Lcom/etermax/preguntados/c/a/d;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v2, Lcom/etermax/preguntados/c/a/d;->f:Lcom/etermax/preguntados/c/a/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/etermax/preguntados/c/a/d;->m:[Lcom/etermax/preguntados/c/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/etermax/preguntados/b/d;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/etermax/preguntados/b/d;",
            "IIII)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/etermax/preguntados/c/a/d;->g:I

    .line 27
    iput-object p4, p0, Lcom/etermax/preguntados/c/a/d;->i:Lcom/etermax/preguntados/b/d;

    .line 28
    iput p5, p0, Lcom/etermax/preguntados/c/a/d;->j:I

    .line 29
    iput p6, p0, Lcom/etermax/preguntados/c/a/d;->k:I

    .line 30
    iput p7, p0, Lcom/etermax/preguntados/c/a/d;->l:I

    .line 31
    iput p8, p0, Lcom/etermax/preguntados/c/a/d;->h:I

    .line 32
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/etermax/preguntados/c/a/d;
    .locals 5
    .parameter

    .prologue
    .line 47
    invoke-static {}, Lcom/etermax/preguntados/c/a/d;->values()[Lcom/etermax/preguntados/c/a/d;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 48
    invoke-virtual {v0}, Lcom/etermax/preguntados/c/a/d;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    :goto_1
    return-object v0

    .line 47
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/preguntados/c/a/d;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/etermax/preguntados/c/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/c/a/d;

    return-object v0
.end method

.method public static values()[Lcom/etermax/preguntados/c/a/d;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/etermax/preguntados/c/a/d;->m:[Lcom/etermax/preguntados/c/a/d;

    invoke-virtual {v0}, [Lcom/etermax/preguntados/c/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/preguntados/c/a/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/etermax/preguntados/c/a/d;->g:I

    return v0
.end method

.method public b()Lcom/etermax/preguntados/b/c;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/etermax/preguntados/c/a/d;->i:Lcom/etermax/preguntados/b/d;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/etermax/preguntados/c/a/d;->j:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/etermax/preguntados/c/a/d;->l:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/etermax/preguntados/c/a/d;->k:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/etermax/preguntados/c/a/d;->h:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method
