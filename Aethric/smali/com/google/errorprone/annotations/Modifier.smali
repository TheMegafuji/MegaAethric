.class public final enum Lcom/google/errorprone/annotations/Modifier;
.super Ljava/lang/Enum;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/errorprone/annotations/Modifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/errorprone/annotations/Modifier;

.field public static final enum ABSTRACT:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum DEFAULT:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum FINAL:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum NATIVE:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum PRIVATE:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum PROTECTED:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum PUBLIC:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum STATIC:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum STRICTFP:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum SYNCHRONIZED:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum TRANSIENT:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum VOLATILE:Lcom/google/errorprone/annotations/Modifier;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 30
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->PUBLIC:Lcom/google/errorprone/annotations/Modifier;

    .line 31
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    const-string v1, "PROTECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->PROTECTED:Lcom/google/errorprone/annotations/Modifier;

    .line 32
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    const-string v1, "PRIVATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->PRIVATE:Lcom/google/errorprone/annotations/Modifier;

    .line 33
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    const-string v1, "ABSTRACT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->ABSTRACT:Lcom/google/errorprone/annotations/Modifier;

    .line 34
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    const-string v1, "DEFAULT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->DEFAULT:Lcom/google/errorprone/annotations/Modifier;

    .line 35
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    const-string v1, "STATIC"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->STATIC:Lcom/google/errorprone/annotations/Modifier;

    .line 36
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    const-string v1, "FINAL"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->FINAL:Lcom/google/errorprone/annotations/Modifier;

    .line 37
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    const-string v1, "TRANSIENT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->TRANSIENT:Lcom/google/errorprone/annotations/Modifier;

    .line 38
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    const-string v1, "VOLATILE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->VOLATILE:Lcom/google/errorprone/annotations/Modifier;

    .line 39
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    const-string v1, "SYNCHRONIZED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->SYNCHRONIZED:Lcom/google/errorprone/annotations/Modifier;

    .line 40
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    const-string v1, "NATIVE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->NATIVE:Lcom/google/errorprone/annotations/Modifier;

    .line 41
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    const-string v1, "STRICTFP"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->STRICTFP:Lcom/google/errorprone/annotations/Modifier;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/google/errorprone/annotations/Modifier;

    .line 29
    sget-object v14, Lcom/google/errorprone/annotations/Modifier;->PUBLIC:Lcom/google/errorprone/annotations/Modifier;

    aput-object v14, v1, v2

    sget-object v2, Lcom/google/errorprone/annotations/Modifier;->PROTECTED:Lcom/google/errorprone/annotations/Modifier;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/errorprone/annotations/Modifier;->PRIVATE:Lcom/google/errorprone/annotations/Modifier;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/errorprone/annotations/Modifier;->ABSTRACT:Lcom/google/errorprone/annotations/Modifier;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/errorprone/annotations/Modifier;->DEFAULT:Lcom/google/errorprone/annotations/Modifier;

    aput-object v2, v1, v6

    sget-object v2, Lcom/google/errorprone/annotations/Modifier;->STATIC:Lcom/google/errorprone/annotations/Modifier;

    aput-object v2, v1, v7

    sget-object v2, Lcom/google/errorprone/annotations/Modifier;->FINAL:Lcom/google/errorprone/annotations/Modifier;

    aput-object v2, v1, v8

    sget-object v2, Lcom/google/errorprone/annotations/Modifier;->TRANSIENT:Lcom/google/errorprone/annotations/Modifier;

    aput-object v2, v1, v9

    sget-object v2, Lcom/google/errorprone/annotations/Modifier;->VOLATILE:Lcom/google/errorprone/annotations/Modifier;

    aput-object v2, v1, v10

    sget-object v2, Lcom/google/errorprone/annotations/Modifier;->SYNCHRONIZED:Lcom/google/errorprone/annotations/Modifier;

    aput-object v2, v1, v11

    sget-object v2, Lcom/google/errorprone/annotations/Modifier;->NATIVE:Lcom/google/errorprone/annotations/Modifier;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/google/errorprone/annotations/Modifier;->$VALUES:[Lcom/google/errorprone/annotations/Modifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/errorprone/annotations/Modifier;
    .locals 1

    .line 29
    const-class v0, Lcom/google/errorprone/annotations/Modifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/errorprone/annotations/Modifier;

    return-object p0
.end method

.method public static values()[Lcom/google/errorprone/annotations/Modifier;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/errorprone/annotations/Modifier;->$VALUES:[Lcom/google/errorprone/annotations/Modifier;

    invoke-virtual {v0}, [Lcom/google/errorprone/annotations/Modifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/errorprone/annotations/Modifier;

    return-object v0
.end method
