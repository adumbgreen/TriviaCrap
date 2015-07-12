.class public final enum Lcom/etermax/tools/f/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/tools/f/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/tools/f/c;

.field private static final synthetic b:[Lcom/etermax/tools/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/etermax/tools/f/c;

    const-string v1, "Flurry"

    invoke-direct {v0, v1, v2}, Lcom/etermax/tools/f/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/tools/f/c;->a:Lcom/etermax/tools/f/c;

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/etermax/tools/f/c;

    sget-object v1, Lcom/etermax/tools/f/c;->a:Lcom/etermax/tools/f/c;

    aput-object v1, v0, v2

    sput-object v0, Lcom/etermax/tools/f/c;->b:[Lcom/etermax/tools/f/c;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/tools/f/c;
    .locals 1
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/etermax/tools/f/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/f/c;

    return-object v0
.end method

.method public static values()[Lcom/etermax/tools/f/c;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/etermax/tools/f/c;->b:[Lcom/etermax/tools/f/c;

    invoke-virtual {v0}, [Lcom/etermax/tools/f/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/tools/f/c;

    return-object v0
.end method
