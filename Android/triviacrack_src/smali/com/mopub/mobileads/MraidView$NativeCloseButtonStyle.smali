.class public final enum Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_CONTROLLED:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

.field public static final enum ALWAYS_HIDDEN:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

.field public static final enum ALWAYS_VISIBLE:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

.field private static final synthetic a:[Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    const-string v1, "ALWAYS_VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    .line 67
    new-instance v0, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    const-string v1, "ALWAYS_HIDDEN"

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->ALWAYS_HIDDEN:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    .line 68
    new-instance v0, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    const-string v1, "AD_CONTROLLED"

    invoke-direct {v0, v1, v4}, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    sget-object v1, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->ALWAYS_HIDDEN:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->a:[Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;
    .locals 1
    .parameter

    .prologue
    .line 65
    const-class v0, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->a:[Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/MraidView$NativeCloseButtonStyle;

    return-object v0
.end method
