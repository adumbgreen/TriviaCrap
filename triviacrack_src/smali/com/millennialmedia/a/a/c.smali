.class public abstract enum Lcom/millennialmedia/a/a/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/a/a/c;",
        ">;",
        "Lcom/millennialmedia/a/a/d;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/millennialmedia/a/a/c;

.field public static final enum b:Lcom/millennialmedia/a/a/c;

.field public static final enum c:Lcom/millennialmedia/a/a/c;

.field public static final enum d:Lcom/millennialmedia/a/a/c;

.field public static final enum e:Lcom/millennialmedia/a/a/c;

.field private static final synthetic f:[Lcom/millennialmedia/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/millennialmedia/a/a/c$1;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/a/a/c$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/c;->a:Lcom/millennialmedia/a/a/c;

    .line 59
    new-instance v0, Lcom/millennialmedia/a/a/c$2;

    const-string v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/a/a/c$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/c;->b:Lcom/millennialmedia/a/a/c;

    .line 82
    new-instance v0, Lcom/millennialmedia/a/a/c$3;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1, v4}, Lcom/millennialmedia/a/a/c$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/c;->c:Lcom/millennialmedia/a/a/c;

    .line 105
    new-instance v0, Lcom/millennialmedia/a/a/c$4;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/a/a/c$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/c;->d:Lcom/millennialmedia/a/a/c;

    .line 135
    new-instance v0, Lcom/millennialmedia/a/a/c$5;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1, v6}, Lcom/millennialmedia/a/a/c$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/c;->e:Lcom/millennialmedia/a/a/c;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/millennialmedia/a/a/c;

    sget-object v1, Lcom/millennialmedia/a/a/c;->a:Lcom/millennialmedia/a/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/millennialmedia/a/a/c;->b:Lcom/millennialmedia/a/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/millennialmedia/a/a/c;->c:Lcom/millennialmedia/a/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/a/a/c;->d:Lcom/millennialmedia/a/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/millennialmedia/a/a/c;->e:Lcom/millennialmedia/a/a/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/millennialmedia/a/a/c;->f:[Lcom/millennialmedia/a/a/c;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/millennialmedia/a/a/c$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/a/a/c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(CLjava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-static {p0}, Lcom/millennialmedia/a/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/millennialmedia/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    const/4 v1, 0x0

    .line 167
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 169
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 170
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 187
    :cond_1
    :goto_1
    return-object p0

    .line 174
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 182
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 183
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/millennialmedia/a/a/c;->a(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 151
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 152
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/a/a/c;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/millennialmedia/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/c;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/a/a/c;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/millennialmedia/a/a/c;->f:[Lcom/millennialmedia/a/a/c;

    invoke-virtual {v0}, [Lcom/millennialmedia/a/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/a/a/c;

    return-object v0
.end method
